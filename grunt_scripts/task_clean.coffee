###
  clean build folder

###
module.exports = {
  initTask: (grunt, gruntConfig, globalParam)->

    gruntConfig.clean =
      default:
        force: true
        src: [
          'dist/**/*'
          '!dist/node_modules'
        ]

    grunt.loadNpmTasks('grunt-contrib-clean')
}