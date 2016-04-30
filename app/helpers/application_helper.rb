module ApplicationHelper
  def flash_for type
    case type
      when "success"
        "success"
      when "notice"
        "success"
      when "alert"
        "danger"
      else
        type.to_s
    end
  end
end
