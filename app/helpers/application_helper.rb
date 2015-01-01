module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
      when 'success'
        'alert-success'
      when 'error'
        'alert-danger'
      when 'alert'
        'alert-warning'
      when 'notice'
        'alert-info'
      else
        flash_type.to_s
    end
  end

  def edit_tag(path)
    '<a class="anchor-action" href="%s"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>'.html_safe % path
  end

  def destroy_tag(path)
    link_to '×', path, method: :delete, class: 'anchor-action'
  end
end
