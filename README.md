# How to set up a Search Engine For Products database by GEM SEARCHKICK Step By steps

1- Install Elasticsearch. For Homebrew, use:

```
brew install elasticsearch

```

2- run the elasticsearch

```
brew services start elasticsearch

```

3- add to gem

```
gem 'searchkick'

```
4- Add searchkick to models you want to search

```
class Product < ActiveRecord::Base
  searchkick
end

```

5- If you already have any data within the model you're implementing it for, then you can reindex that information with a rake command.

```
rake searchkick:reindex CLASS=Place

```

6- to check if Elasticsearch is working :

```
localhost:9200

```

7- In Products controller Index we have to add:

```

  if params[:term].present?
    @products = Product.search(params[:term])

  else
    @products = Product.all
    end

```

8- For creating a searching tools in navbar the following code need to be added:

```
<%= form_tag(products_path, method: :get) do %>
  <%= text_field_tag :term %>
  <%= submit_tag 'Search' %>
<% end %>

```
