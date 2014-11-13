###
  clean build folder

  default task will ignore node_modules folder
###
module.exports = {
  initTask: (grunt, gruntConfig, globalParam)->

    gruntConfig.clean =
      all:
        force: true
        src: [
          'dist/**/*'
        ]

      default:
        force: true
        src: [
          'dist/**/*'
          '!dist/node_modules'
        ]

    grunt.loadNpmTasks('grunt-contrib-clean')
}