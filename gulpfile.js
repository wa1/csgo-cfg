const { src, dest } = require('gulp');
const concat = require('gulp-concat');

exports.default = function() {

  return src(['src/header.cfg','src/_*.cfg','src/footer.cfg'])
  .pipe(concat('autoexec.cfg'))
  .pipe(dest('/dist'))
}