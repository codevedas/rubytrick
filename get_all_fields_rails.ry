
# to get all the fields in erb 
<% ActiveRecord::Base.connection.tables.each do |i| %>
    <%  if !(i=~ /_/) %> 
        <%= i.singularize.classify.constantize.column_names  %>   <% i %>        <br>
    <% end  %>
<% end  %>      


