module LogsHelper
  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)
    
    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true
    }
    
    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    
    markdown_to_html.render(text).html_safe
  end

  def humanize mins
    [[60, :minute], [24, :hour], [1000, :day]].map{ |count, name|
      if mins > 0
        mins, n = mins.divmod(count)
        pluralize(n.to_i, "#{name}")
      end
    }.compact.reverse.join(' ')
  end
end