grunt-template-node
===================

A grunt file templates for using grunt build node.js project.

Current this templates include these task:

* Remove files in output folder.
* Compile coffee scripts.
* Copy other project files to output folder.
* Do text replace.
* Start program.

## How to Use

Install grunt-cli global

```
npm install grunt-cli -g
```

Copy below files to your project:

* Gruntfile.coffee
* grunt_scripts

Install npm packages

```
npm install grunt --save-dev
npm install grunt-contrib-clean --save-dev
npm install grunt-contrib-coffee --save-dev
npm install grunt-contrib-copy --save-dev
npm install grunt-text-replace --save-dev
```

Modify grunt task scripts in folder `grunt_scripts`.

Run task in command line:

```
grunt
```

## License

MIT

