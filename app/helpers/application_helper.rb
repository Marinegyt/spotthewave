module ApplicationHelper
  # def show_svg(svg_name, classes = nil, data = nil)
  #   svg = File.open("app/assets/images/icons/#{svg_name}.svg", "rb") { |file| raw file.read }
  #   doc = Nokogiri::HTML::DocumentFragment.parse svg
  #   svg = doc.at_css "svg"
  #   svg["class"] = classes if classes.present?
  #   data.each { |key, value| svg["data-#{key}"] = value } if data.present?
  #   raw svg
  # end
end
