###
  replace text because some parameters will be written later
###
module.exports = {
  initTask: (grunt, gruntConfig, globalParam) ->

    gruntConfig.replace = {
      changePort: {
        src: 'dist/test/index.js'
        overwrite: true
        replacements: [
          from: 'server.listen("{port}");'
          to: 'server.listen(' + globalParam.port + ');'
        ]
      }
    }

    grunt.loadNpmTasks('grunt-text-replace')
}