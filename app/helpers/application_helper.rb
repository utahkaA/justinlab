module ApplicationHelper
  def bootstrap_class_for(flash_type)
    dict = {success: "alert-success", error: "alert-danger",
            alert: "alert-warning", notice: "alert-info"}
    dict[flash_type.to_sym()] || flash_type.to_s()
  end

  def flash_msg()
    flash.each do |flash_type, msg|
      concat(content_tag(:div, msg,
             class: "alert alert-dismissed #{bootstrap_class_for(flash_type)} fade in") do
          concat content_tag(:button, 'x', class: "close", data: {dismiss: 'alert'})
          concat msg
      end)
    end
  end
end
