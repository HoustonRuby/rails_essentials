== Simple Form

This one guy is AWESOME


The form
-------

![img](https://img.skitch.com/20121010-q78tu7p1s88x41qpwxk71bty3h.jpg)

With a date picker!
------------------

![img](https://img.skitch.com/20121010-j21t2apxfmpe2ybiaptumab64k.jpg)

The code

```
<%= simple_form_for @post, html: {class: "form-horizontal"} do |f| %>
  <%= f.error_notification %>

  <div class="form-inputs">
    <%= f.input :title %>
    <%= f.input :body, as: :text, input_html: {rows: 10} %>
    <%= f.association :categories, as: :check_boxes %>
    <%= f.input :publish_on, as: :string, input_html: {class: "datepicker"} %>
  </div>

  <div class="form-actions">
    <%= f.button :submit, class: "btn-primary btn-large" %>
  </div>
<% end %>

```
