const PolymerProject = require('polymer-build').PolymerProject;
const gulp = require('gulp');
const mergeStream = require('merge-stream');

const project = new PolymerProject(require('./polymer.json'));

gulp.task("main", function() {
	return mergeStream(project.sources(), project.dependencies())
	.pipe(gulp.dest('build/'));
});

//gulp.task('default', function(cb) {
	//runSequence('main', cb);
//});

//gulp.task('default', ['main']);
