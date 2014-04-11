
dropdown for tagging users

<%= f.collection_select :user_id, User.all, :id, :name %>


