module ApplicationHelper
  def title(page_header)
    content_for :title, page_header ? 'Microblog | ' + page_header.to_s : 'Microblog'
  end

  def page_header(page_header)
    content_for :page_header, page_header ? page_header.to_s : 'Page Header'
  end

  def optional_description(optional_description)
    content_for :optional_description, optional_description ? optional_description.to_s : 'Optional description'
  end

  def home_button
    content_tag :a, icon('fas', 'home', 'Home'), class: 'btn btn-primary', role: 'button', href: root_path
  end

  def show_button(model_name, id, text='Show', icon='info', color='info')
    content_tag :a, icon('fas', icon, text), class: "btn btn-#{color}", role: 'button', href: send("#{model_name}_path", id)
  end

  def new_button(model_name, text='New', icon='plus', color='success')
    content_tag :a, icon('fas', icon, text), class: "btn btn-#{color}", role: 'button', href: send("new_#{model_name}_path")
  end

  def edit_button(model_name, id, text='Edit', icon='edit', color='warning')
    content_for :edit_button, icon('fas', icon, text), class: "btn btn-#{color}", role: 'button', href: send("edit_#{model_name}_path", id)
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
