module RenderLaterHelper
  def render_later(url, css: nil, style: nil, &block)
    render "/render_later", url: url, css: css, style: style, &block
  end
end
