module RenderLaterHelper
  def render_later(url, tag_name: "span", css: nil, style: nil, &block)
    content_tag tag_name, "Loading...", class: css, style: style, data: {controller: "render-later", url: url}, &block
  end
end
