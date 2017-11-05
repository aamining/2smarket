## Problem
# Floor Coverings Retailing in Australia

Overview-Date Published: October 2017

IBISWorld’s Floor Coverings Retailing market research report offers insightful industry analysis and research into the market at the national level. IBISWorld’s in-depth industry market research is presented in a logical and consistent format. The industry report contains key industry statistics, market size, industry trends, and growth and profit forecasts for a 5-year outlook period.

Covering ground: An increase in building construction has supported steady revenue growth.(IBISWorld’s Floor Coverings, October 2017)

What is the Floor Coverings Retailing Industry?
Industry operators primarily sell a range of floor covering products including carpet, timber, vinyl and rugs. Tiles made of linoleum, vinyl, cork, carpet or rubber are included in the industry. However, businesses that primarily operate in laying floor covering or retailing ceramic tiles are excluded from the industry.


# Traditional styles, designs and hand woven rugs benefits:

- Beauty: Difference in colours and styles. Compatible with Western and Eastern taste.

- Cost effective : It is not a money loss. Traditional- hand woven rugs will be more expensive when they become older.

- Free in styling: Can use over on any other floor eg. carpets and timber floor.

- Easy to change and renewing:  Do not need to fix to floor so easily to change.

# Australian Market:

Today, one of the largest online seller of hand knotted rugs has over 20,000 satisfied customers and more than 50,000 sold traditional rugs Australia wide.

Considering of above facts and potentials, many Australian as individual or commercials are willing to buy new or sell old rugs.

Creating a facility as a competitive in price, available and accessible rugs market is not an unfunded thinking.

## Proposed solution

A Mobile App.

Apps reduce costs
Apps reduce costs of Traveling and in worth case not finding desired. They simplify communications by securely, instantly and directly messaging customers and sellers.

Apps increase customer engagement
Customers are calling out for mobile apps because they quickly connect them to businesses they most commonly want or need.  Businesses are using apps to improve their processes and increase the level of accessibility their customers have to them. The point of a mobile app is to seamlessly connect and interact with customers, making it a valuable tool for the modern business.


# User stories
1- Users want to sign in easily buy rug(s) or put rug(s) to sell.
2- users want to search/filter and see available products in full detail.
3- Users want to see the invoice and pay online for item(s)
4- Users want products to be delivered in their place.


# Wireframes



# ERD (entity relationship diagram)

# Design (figma, fonts, colours)

# Models


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
9- In Navbar Using the following structure able to see in certain page (Products page).

```
<% if current_page?(products_path) %>
    <%= form_tag(products_path, method: :get) do %>
      <%= text_field_tag :term %>
      <%= submit_tag 'Search' %>
    <% end %>
<% end %>

```

# How to Set up Rspec

1- Add in dev.test

```
gem 'rspec-rails'

gem 'factory_girls_rails'       to replace fixture
gem 'capybara'   ?               for simulating user_id
gem 'guard-rspec'               Guard::RSpec allows to automatically &           intelligently launch specs when files are modified.

```
