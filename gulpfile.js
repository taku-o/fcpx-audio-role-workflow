const exec = require('child_process').exec;
const fs = require('fs');
const gulp = require('gulp');
const markdownPdf = require('gulp-markdown-pdf');
const rename = require('gulp-rename');
const toc = require('gulp-markdown-toc');

const APP_VERSION = require('./package.json').version;

// doc
gulp.task('doc', ['_readme', '_readme-ja', '_version']);

// readme
gulp.task('_readme', ['_readme:pdf']);
gulp.task('_readme:pdf', () => {
  return gulp
    .src('README.md')
    .pipe(
      toc({
        linkify: function(content) {
          return content;
        },
      })
    )
    .pipe(
      markdownPdf({
        cssPath: 'readme.css',
      })
    )
    .pipe(
      rename({
        basename: 'README',
        extname: '.pdf',
      })
    )
    .pipe(gulp.dest('build'));
});

gulp.task('_readme-ja', ['_readme-ja:pdf']);
gulp.task('_readme-ja:pdf', () => {
  return gulp
    .src('README-ja.md')
    .pipe(
      toc({
        linkify: function(content) {
          return content;
        },
      })
    )
    .pipe(
      markdownPdf({
        cssPath: 'readme.css',
      })
    )
    .pipe(
      rename({
        basename: 'README-ja',
        extname: '.pdf',
      })
    )
    .pipe(gulp.dest('build'));
});

// version
gulp.task('_version', (cb) => {
  fs.writeFile('build/version.txt', APP_VERSION, (err) => {
    cb(err);
  });
});

// zip
gulp.task('zip', (cb) => {
  exec(
    'ditto -c -k --sequesterRsrc --keepParent build build.zip',
    (err, stdout, stderr) => {
      cb(err);
    }
  );
});
// codesign
gulp.task('codesign', (cb) => {
  const DEVELOPER_ID_APPLICATION_KEY = "Developer ID Application: Taku Omi (52QJ97GWTE)";
  const APP_PATH = "*.dmg";
  exec(
    '/usr/bin/codesign' +
      ` -s "${DEVELOPER_ID_APPLICATION_KEY}" \
        --deep \
        --keychain "/Users/${process.env.USER}/Library/Keychains/login.keychain" \
        ${APP_PATH}`,
    (err, stdout, stderr) => {
      cb(err);
    }
  );
});

