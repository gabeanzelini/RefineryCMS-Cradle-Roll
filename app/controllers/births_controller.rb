class BirthsController < ApplicationController
  before_filter :find_page
  before_filter :find_born_births, :only => [:index]
  before_filter :find_births, :find_latest_births, :only => [:show]

  def index
    # render 'index'
  end

  def show
    # render 'show'
  end

protected

  def find_latest_births
    @births = Birth.latest
  end

  def find_published_births
    @births = Birth.born.paginate(:page => params[:page],
                                  :per_page => Birth.per_page)
  end

  def find_birth
    @birth = Birth.born.find(params[:id])
  end

  def find_page
    @page = Page.find_by_link_url("/cradle-roll")
  end

end
