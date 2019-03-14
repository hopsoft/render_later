[![Lines of Code](http://img.shields.io/badge/lines_of_code-31-brightgreen.svg?style=flat)](http://blog.codinghorror.com/the-best-code-is-no-code-at-all/)
[![Maintainability](https://api.codeclimate.com/v1/badges/2b24fdbd1ae37a24bedb/maintainability)](https://codeclimate.com/github/hopsoft/render_later/maintainability)

# RenderLater

## Improve user perceived performance of your Rails app

Render sections of the page asynchronously after initial page load.

Inspired by: https://github.com/renderedtext/render_async

This libary uses [Stimulus](https://stimulusjs.org) to avoid injecting multiple JavaScript tags into the body.

# Quick Start

```ruby
# Gemfile
gem "render_later"
```

```javascript
// app/assets/javascripts/application.js
//= require render_later
```

```
<!-- app/views/any_erb_template.html.erb -->
<%= render_later "/path/to/section" %>
```

# How it Works

1. Site visitor requests a page
1. Server renders a response
1. Browser renders the page
1. [XHR](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest) is used to fetch `render_later` sections asynchronously
1. The DOM is updated with the asyncrhonously loaded HTML

## JavaScript Development

The JavaScript source is located in `app/assets/javascripts/src`
& transpiles to `app/assets/javascripts/render_later.js` via Webpack.

```sh
# build the javascript
./bin/yarn
./bin/webpack
```
