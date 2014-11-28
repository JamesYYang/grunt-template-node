###
  copy project files

###
module.exports = {
  initTask: (grunt, gruntConfig, globalParam) ->

    gruntConfig.copy =
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