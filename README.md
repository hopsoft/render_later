<!-- Tocer[start]: Auto-generated, don't remove. -->

## Table of Contents

- [RenderLater](#renderlater)
  - [Improve user perceived performance of your Rails app](#improve-user-perceived-performance-of-your-rails-app)
- [Quick Start](#quick-start)
  - [Gemfile](#gemfile)
  - [app/assets/javascripts/application.js](#appassetsjavascriptsapplicationjs)
  - [app/views/any_erb_template.html.erb](#appviewsany_erb_templatehtmlerb)
- [How it Works](#how-it-works)
  - [JavaScript Development](#javascript-development)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

[![Lines of Code](http://img.shields.io/badge/lines_of_code-31-brightgreen.svg?style=flat)](http://blog.codinghorror.com/the-best-code-is-no-code-at-all/)
[![Maintainability](https://api.codeclimate.com/v1/badges/2b24fdbd1ae37a24bedb/maintainability)](https://codeclimate.com/github/hopsoft/render_later/maintainability)

# RenderLater

## Improve user perceived performance of your Rails app

Render sections of the page asynchronously after initial page load.

# Quick Start

## Gemfile

```ruby
gem "render_later"
```

## app/assets/javascripts/application.js

```javascript
//= require render_later
```

## app/views/any_erb_template.html.erb

```
<%= render_later "/path/to/section" %>
```

# How it Works

1. Site visitor requests a page
1. Server renders a response
1. Browser renders the page
1. [XHR](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest) is used to fetch `render_later` sections asynchronously
1. The DOM is updated with the asyncrhonously loaded HTML

## Similar Tools

- https://github.com/renderedtext/render_async
- https://github.com/jarthod/render-later

## JavaScript Development

The JavaScript source is located in `app/assets/javascripts/src`
& transpiles to `app/assets/javascripts/render_later.js` via Webpack.

```sh
# build the javascript
./bin/yarn
./bin/webpack
```
