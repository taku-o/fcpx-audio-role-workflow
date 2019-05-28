const fs = require('fs');
const gulp = require('gulp');
const markdownPdf = require('gulp-markdown-pdf');
const rename = require('gulp-rename');
const toc = require('gulp-markdown-toc');

const APP_VERSION = require('./package.json').version;

// doc
gulp.task('doc', ['_readme', '_version']);

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

// version
gulp.task('_version', (cb) => {
  fs.writeFile('build/version.txt', APP_VERSION, (err) => {
    cb(err);
  });
});


