module.exports =
  initGrunt: (grunt) ->

    gruntConfig = {}

    initSystemTask(grunt, gruntConfig)

    grunt.initConfig(gruntConfig)

    grunt.registerTask('default', '', ->
      grunt.log.write('Server is running...')
      grunt.task.run(['systemTask'])
    )

initSystemTask = (grunt, gruntConfig)->

  port = grunt.option('port')
  port = 8001 unless port


  includeNodeModules = grunt.option('includeNodeModules') is true

  globalParam =
    port: port

  require('./task_clean').initTask(grunt, gruntConfig, globalParam)
  require('./task_copy').initTask(grunt, gruntConfig, globalParam)
  require('./task_replace').initTask(grunt,gruntConfig, globalParam)
  require('./task_coffee').initTask(grunt, gruntConfig, globalParam)
  require('./task_start').initTask(grunt, gruntConfig, globalParam)

  grunt.registerTask('systemTask', ->
    if includeNodeModules
      grunt.task.run([
        'clean:all'
        'coffee'
        'copy:all'
        'replace:changePort'
        'shell:start'
      ])
    else
      grunt.task.run([
        'clean:default'
        'coffee'
        'copy:default'
        'replace:changePort'
        'shell:start'
      ])

  )