###
  copy project files

  default task will ignore node_modules folder
###
module.exports = {
  initTask: (grunt, gruntConfig, globalParam) ->

    gruntConfig.copy =
      all:
        files: [
          expand: true
          cwd: './'
          src: [
            'node_modules/**/*'
            'package.json'
          ]
          dest: 'dist'
        ]
      default:
        files: [
          expand: true
          cwd: './'
          src: [
            'package.json'
          ]
          dest: 'dist'
        ]

    grunt.loadNpmTasks('grunt-contrib-copy')
}