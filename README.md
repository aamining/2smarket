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

3- Users want to see the invoice and pay online for item(s).

4- Users want products to be delivered in their place.


# Wireframes

<p align="center">
  <img src="https://github.com/aamining/2smarket/blob/master/Wireframe.jpg" width="100%" heigth="100%"/>
</p>

# ERD (entity relationship diagram)

<p align="center">
  <img src="https://github.com/aamining/2smarket/blob/master/ERD.png" width="100%" heigth="100%"/>
</p>

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

reference:

```
https://relishapp.com/rspec/rspec-rails/v/3-7/docs/gettingstarted

```

1- Add in dev.test

```
gem 'rspec-rails'

gem 'factory_girls_rails'  to replace fixture
gem 'capybara'   ?         for simulating user_id
gem 'guard-rspec'          Guard::RSpec allows to automatically &                          intelligently launch specs when files are modified.
gem 'factory_bot_rails'

```

2-

```
rails generate rspec:install

```

some useful links

```
http://rspec.info/documentation/

https://github.com/plataformatec/devise/wiki/How-Tos

https://github.com/plataformatec/devise/wiki/How-To:-Test-controllers-with-Rails-3-and-4-%28and-RSpec%29
```

# Buyer would be able to pay online

# PAYMENTS

1- First for payment system need to follow this web site link.. It would be necessary to follow instruction and create

"Charges" controller and "Charges" view.

```
https://stripe.com/docs/checkout/rails

```
2- then need to add Figaro gem file

https://github.com/laserlemon/figaro

```
gem "figaro"

```
3-

```
bundle exec figaro install

```
4- in the Terminal we have to type this two lines first:

```
export PUBLISHABLE_KEY="pk_test_zJWuFSymuSooT4kvpiseF7zJ"

and then...

export SECRET_KEY="sk_test_4YzPw8C6g6Bpidz7sQQkLbCt"

```
5- then we should have "application.yml" file in config folder or

in directory.

note: it maybe hidden so find it by 'ls' from terminal and add

inside it:

```
PUBLISHABLE_KEY: "pk_test_zJWuFSymuSooT4kvpiseF7zJ"
SECRET_KEY: "sk_test_4YzPw8C6g6Bpidz7sQQkLb"

```

6- need to following code 'as a button' from 'view>charges>new.html.erb' to put in relevant view to get data amount.

```
<script src="https://checkout.stripe.com/checkout.js" class="stripe-button"
        data-key="<%= Rails.configuration.stripe[:publishable_key] %>"
        data-description="A month's subscription"
        data-amount="100"
        data-locale="auto"></script>

```
# Deploying to Heroku

```
git init
git add .
git commit -m 'My simple Stripe application'
heroku create
heroku config:set PUBLISHABLE_KEY=pk_test_zJWuFSymuSooT4kvpiseF7zJ SECRET_KEY=sk_test_4YzPw8C6g6Bpidz7sQQkLbCt
git push heroku master
heroku open

```

# How to get a cumulative sum (in this project the total price of all irems in a current user card):

By map:

The map method can be used to create a new array based on the original array, but with the values modified by the supplied block:

referrence:

https://ruby-doc.org/core-2.2.0/Array.html

try this at consul:

[2, 4, 6, 8, 10].map {|a|2*a}

in this exercise to find the sum of items in card :

orders.map { |order| order.product.price }.sum

# How to Upload and Work with images in Heroku (Cloudinary)

Heroku dose not keep images so we need to third party solution,

This time 'Cloudinary'

Cloudinary is a cloud-based service that provides an end-to-end image management solution, including upload, storage, administration, manipulation, optimization and delivery.

How to do this?

first:

```
gem 'cloudinary'

And make sure this is locating after gem 'carrierwave'
```

Uploads:

1- we have to create an account in cloudinary

2- download or create 'cloudinary.yml' file and store it in config and app

directory. This file would be ready and easily downloadable from following link. including all API cloudinary links.

```
https://cloudinary.com/console/cloudinary.yml

```

3- we have to put this in Image uploader file in Uploader folder.

```
include Cloudinary::CarrierWave

  version :standard do
    process :resize_to_fill => [100, 150, :north]
  end

  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end

```

4- now have a look at Cloudinay dashboard. picture should be there.

# How to send an Email with mailgun

1- need to signup in mailgun website to get API keys

'''
https://www.mailgun.com

'''

a useful site is:

```
https://www.leemunroe.com/send-automated-email-ruby-rails-mailgun/

```

2- Adding gem file and bundle install

```
gem 'mailgun-ruby', '~>1.1.6'

```
3- Ruby on Rails Action Mailer

'''

rails g mailer model_mailer new_record_notification

'''
model_mailer is the name of the mailer and new_record_notifcation is the method.

Notice this creates a bunch of files.

- model\_mailer.rb is where the logic will go for sending email and

- new\_record\_notification.text.erb is the content of the email that will be sent.

4- Now open up config/environments/development.rb and add:

'''
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :authentication => :plain,
  :address => "smtp.mailgun.org",
  :port => 587,
  :domain => "MYDOMAIN.mailgun.org",
  :user_name => "postmaster@MYDOMAIN.mailgun.org",
  :password => "MYPASSWORD"
}

'''

5- Now, need to replace MYDOMAIN by Mailgun subdomain from domain section of mailgun website.


6- in app>mailers>application_mailer.rb replace default from email:

'''
default from: "me@MYDOMAIN.com"

'''
7- Create a view template (content) for the email

in : app/views/model\_mailer/new\_record\_notification.text.erb

```
Hi,

A new record has been added: <%= @record.name %>

Thanks

```
8- Send the email:

Last thing to do is to call the email method from your controller.

Whenever you want to send this email, in this case when a new record is created,

call this mailer method:

'''

'''
