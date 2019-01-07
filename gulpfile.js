// // gulpfile.js
// var gulp = require('gulp');
// var concat = require('gulp-concat');

// // gulp.task('concat', function(){
// //   console.log("Concatenating all the cfg files");
// //   gulp.src("_*.cfg")
// //       .pipe(concat('autoexec.cfg'))
// //       .pipe(gulp.dest('build/styles'));
// // });

// gulp.task('default', [], function() {
//   console.log("Concatenating all the cfg files");
//   gulp.src("_*.cfg")
//       .pipe(concat('autoexec.cfg'))
//       .pipe(gulp.dest('build/styles'));
// });

const { src, dest } = require('gulp');
const concat = require('gulp-concat');
const header = require('gulp-header');
const footer = require('gulp-footer');

const txt_header = `echo ""
echo "----------------------------------------"
echo "-----------EXECUTING AUTOEXEC-----------"
echo "----------------------------------------"
echo ""
`

const txt_footer = `host_writeconfig // also write everything to config.cfg
echo ""
echo "----------------------------------------"
echo "-----------EXECUTED AUTOEXEC------------"
echo "----------------------------------------"
echo ""`

exports.default = function() {

  return src('_*.cfg')
  .pipe(concat('autoexec.cfg'))
  .pipe(header(txt_header))
  .pipe(footer(txt_footer))
  .pipe(dest('.'))
}