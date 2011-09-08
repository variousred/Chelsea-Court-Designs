module Admin
  class PeopleController < Admin::BaseController

    crudify :person,
            :title_attribute => 'name', :xhr_paging => true

  end
end
