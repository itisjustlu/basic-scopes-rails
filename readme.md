##Basic scopes for Rails  5

This gem append a few methods to your active record models. 
You won't need to create newest scopes for every single project.

###How to install?
```
gem install basic-scopes-rails
```

or just add to your GemFile
```
gem 'basic-scopes-rails', '~> 0.1'
```

Then, you need to add in your initializers 
```
require 'basic_scopes'
```

###Usage
You can use basic scopes as normal scopes in your Active Record

* **latest**, It returns the latest elements, order by created_at
* **latest_reverse**, It returns the firstest elements, order by created_at
* **excluded_ids([array_ids])**, It excludes an array of ids
* **excluded_id(id)**, It excludes an id
* **by_attribute(attr)**, It returns ordered by attribute in asc sense
* **by_attribute_reverse(attr)**, It returns ordered by attribute in desc sense

### Example
```
models = Model.latest # Returns the latest elements
models = Model.excluded_ids([1, 2, 3]) # Returns all elements and exclude 1, 2, 3
```
