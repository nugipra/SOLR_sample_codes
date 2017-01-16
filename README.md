# The app
Perform full text search through 500 records using Sunspot Solr

# What is Solr
Solr is a popular search platform from the Apache Lucene project. Its major features include powerful full-text search, hit highlighting, faceted search, near real-time indexing, dynamic clustering, database integration, rich document handling, and geospatial search.

# What is Sunspot 
Sunspot is a Ruby library for expressive, powerful interaction with the Solr search engine. Sunspot is built on top of the RSolr library, which provides a low-level interface for Solr interaction; Sunspot provides a simple, intuitive, expressive DSL backed by powerful features for indexing objects and searching for them.

# Requirements:
* Ruby 2.2.2
* PostgreSQL 9.6.1

# Installation
* git clone git@github.com:nugipra/SOLR_sample_codes.git
* cd SOLR_sample_codes
* bundle install
* rake db:create
* rake db:migrate
* rake db:seed
* rails generate sunspot_rails:install
* rake sunspot:solr:start # running solr server