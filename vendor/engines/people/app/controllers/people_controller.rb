class PeopleController < ApplicationController

  before_filter :find_all_people
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @person in the line below:
    
    @person = Person.first
    
    present(@page)
  end

  def show
    @person = Person.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @person in the line below:
    present(@page)
  end

protected

  def find_all_people
    @people = Person.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/people").first
  end

end
