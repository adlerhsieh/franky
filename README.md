# Franky

A site generator that builds a minimal Sinatra app in very few commands. Developers are able to test any idea online efficiently.

The installization and configuration are extremely easy with the help of Rack & Sinatra. Check [Sinatra](http://www.sinatrarb.com/) if you don't know what it is.

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

Or simply run:

```
$ franky new my_project
```

Replace "my_project" with your project name.

## Configuration 設定

There are two templates: default template & minimal template. They can be specified in commands.

Add `-m` at the end if you want to create a minimal template. For example,

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

This template includes 3 parts:

<p style="color: blue">1. Rack configuration</p>

- Gemfile
- config.ru

<p style="color: blue">2. The app</p>

- app/app.rb
- app/views/layout.html.erb
- app/views/index.html.erb

<p style="color: blue">3. Assets</p>

- public/js/app.js
- public/css/style.css

### Minimal Template

It contains only 3 files: 
- Gemfile
- app.rb
- config.ru

This is the minimal requirement for deployment. Check the following part if you want to deploy to Heroku.

## Initialization 開始 

After generation, enter the project, run `$ bundle` and you are all set. Use `$ rackup` or `$ shotgun` to run local server as usual. You should see "hello world" as you enter `http://localhost:9292` (`9393` with shotgun) if everything works fine.

`$ rm -rf my_project` will remove the entire project. Quick and clean.

## Deployment 佈署

For the simplest deployment, check [Heroku](https://devcenter.heroku.com/articles/rack#sinatra) for more information.

## Reference 參考資料

For a more powerful template generator, check [hazel](https://github.com/c7/hazel), which contains configuration on test, db, ruby version, git, and more.

## Feedback 回饋

Send to nkj20932@hotmail.com for any feedback. Create an issue if you find any problem. Thanks!