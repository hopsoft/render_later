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

[![Lines of Code](http://img.shields.io/badge/lines_of_code-27-brightgreen.svg?style=flat)](http://blog.codinghorror.com/the-best-code-is-no-code-at-all/)
[![Maintainability](https://api.codeclimate.com/v1/badges/a0661a5ab84b7b83b5aa/maintainability)](https://codeclimate.com/github/hopsoft/render_later/maintainability)

# RenderLater

## Improve user perceived performance of your Rails app

Render sections of the page asynchronously after initial page load.

## Quick Start

1. `Gemfile`

```ruby
gem "render_later"
```

2. `app/assets/javascripts/application.js`

```javascript
//= require render_later
```

3. `app/views/any_erb_template.html.erb`

```erb
<%= render_later "/some/slow/url" %>
```

## Next Steps

### Style the placeholder element

You may wish to style the placeholder.
This can be done by passing `css` and `style` arguments to `render_later`

```erb
<%= render_later "/some/slow/url", css: "css-class", style: "color:red" %>
```

### Add loading content

The text content `Loading...` displays by default.
This can be overridden by passing a block to `render_later`

```erb
<%= render_later "/some/slow/url" do %>
  <%= image_tag "spinner.gif" %>
<% end %>
```

### Change the Placeholder Tag

A `span` placeholder tag is used by default.
This can be overridden by passing the `tag` argument to `render_later`

```erb
<%= render_later "/some/slow/url", tag: "tr" %>
```

## How it Works

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
