module ApplicationHelper
  def title(page_header)
    content_for :title, page_header ? 'Microblog | ' + page_header.to_s : 'Microblog'
  end

  def page_header(page_header)
    content_for :page_header, page_header ? page_header.to_s : 'Page Header'
  end

  def new_button(model_name, text='New', icon='plus', color='success')
    content_tag :a, icon('fas', icon, text), class: "btn btn-#{color}", role: 'button', href: send("new_#{model_name}_path")
  end

  def destroy_button(model_name, id, text='Delete', icon='trash', color='danger')
    content_tag :a, icon('fas', icon, text), class: "btn btn-#{color}", role: 'button', href: send("#{model_name}_path", id), data: {method: :delete, confirm: 'Are you sure?'}, rel: :nofollow
  end

  def submit_button(text='Save', icon='save', color='success')
    content_tag :button, icon('fas', icon, text), type: 'submit', name: 'commit', class: "btn btn-#{color}"
  end

  def active_class?(link_path)
    current_page?(link_path) ? "active" : ""
  end
end
