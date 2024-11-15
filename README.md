# Aurora Snow

AuroraSnow is an API library for Ruby on Rails. It allows varying levels of control using either modules to augments your Rails controllers or using the fully integrated Resource class
which acts as a proxy to your models.

## Augmenting Rails Controllers

The easiest (and least invasive) way to use AuroraSnow is to use the controller extensions which give useful helper methods to allow pagination, filters, sorting and responding.

### Filters

``` ruby

class ApplicationController < ActionController::API
  include AuroraSnow::

  def index
    scope = YourScope.where(whatever...)

    scope = filter(scope) do |scope, |

    end
  end
end

```

### Sorting

### Pagination

``` ruby
class ApplicationController < ActionController::API
  include AuroraSnow::Extensions::Pagination

  def index
    scope = YourScope.where(whatever...)

    # Use the pagination params of:
    # - ?page[size]=10&page[number]=1
    scope = paginate(scope)

    # Returns an object to represent the pagination meta. E.g.
    # { size: 10, number: 1, total: N }
    pagination_meta 
  end
end
```

By default the 

### Fieldsets

E.g. Optional params


## Using Resources

### Setting up the controller

``` ruby
  class ApplicationController < ApplicationController::API
    
  end
```

# Notes

## Different types of pagination support

## Things to support

- Rate Limiting
- Authentication
- Authorization

