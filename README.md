# Magazine App
This project is a Ruby application for managing a Magazine domain, including the relationships between Authors, Articles, and Magazines. It includes various classes and methods for creating and managing instances of these objects.

## Installation
1. Clone this repository to your local machine.
2. Navigate to the root directory of the project.
3. Run bundle install to install the necessary gems
4. To start the application, run `ruby magazine.rb `from the command line
## Usage
Once the application is running, you can create instances of the various classes and try out the methods that are available.

## Classes
The application includes the following classes:

- Author
- Article
- Magazine
## Methods
The application includes the following methods:

For Author class:

- initialize(name) - initializes a new author instance with the given name
- name - returns the name of the author
- articles - returns an array of articles written by the author
- magazines - returns an array of unique magazines the author has contributed to
 - add_article(magazine, title) - creates a new article instance and associates it with the author and magazine
- topic_areas - returns an array of unique categories of the magazines the author has contributed to 
For Article class:

- initialize(author, magazine, title) - initializes a new article instance with the given author, magazine, and title
- title - returns the title of the article
- author - returns the author of the article
- magazine - returns the magazine of the article
For Magazine class:

- initialize(name, category) - initializes a new magazine instance with the given name and category
- name - returns the name of the magazine
- category - returns the category of the magazine
- contributors - returns an array of authors who have written for this magazine
::all - returns an array of all magazine instances
::find_by_name(name) - returns the first magazine object that matches the given name
- article_titles - returns an array of strings of the titles of all articles written for this magazine
- contributing_authors - returns an array of authors who have written more than 2 articles for the magazine
Contributing
Bug reports and pull requests are welcome on GitHub at [CASEY OCHIENG](https://github.com/CaseyOchieng/Ruby-code-challenge). 
- This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

### License
The project is available as open source under the terms of the MIT License.



