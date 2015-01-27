# Franky

A site generator for minimal Sinatra template. Check [Sinatra](http://www.sinatrarb.com/) if you don't know what it is.

## Installation 安裝

```
$ gem install franky
```

## Generation 產生專案

Under the directory you want to create your project, run:

```
$ franky
```
which prompts a message to let you specify a directory name.

Or you can simply run:

```
$ franky new my_project
```

Replace the <span style="color: blue">my_project</span> with your project name.

### Bundle

After generation, enter the project and run: 

```
$ bundle
```

and you are all set. 

## Configuration 設定

This generator offers two template: default template & minimal template. They can be specified in commands.

Add `-m` at the end of the command if you want to create a minimal template. For example,

```
$ franky -m
```
or

```
$ franky new my_project -m
```

If nothing is specified, the template is set to default.

## Templates 版型說明

### Default Template

This template includes 2 parts:

<p style="color: blue">1. Rack configuration</p>

- Gemfile
- config.ru

<p style="color: blue">2. The app</p>

- app/app.rb
- app/views/index.html.erb 

<p style="color: blue">3. Assets</p>

- public/js/app.js
- public/css/style.css

### Minimal Template

It contains only three files: 
- Gemfile
- app.rb
- config.ru

This is the minimal requirement for deployment. Check the following part if you want to deploy to Heroku.

## Deployment 佈署

For the simplest deployment, check [Heroku](https://devcenter.heroku.com/articles/rack#sinatra) for more information.

## Reference

For a more powerful template generator, check [hazel](https://github.com/c7/hazel), which contains configuration on test, db, ruby version, git, and more.

## Feedback

Send to [nkj20932@hotmail.com](nkj20932@hotmail.com) for any feedback. Create an issue if you find any problems. Thanks!