<% @photos.each do |photo| %>
  <%= image_tag photo.url(:thumb) %>
<% end %>


