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