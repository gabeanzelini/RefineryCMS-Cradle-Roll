class Birth < ActiveRecord::Base
  belongs_to :image, :class_name => 'Image'

  validates_presence_of :name, :birth_date

  has_friendly_id :name, :use_slug => true

  acts_as_indexed :fields => [:name, :birth_date]

  default_scope :order => "birth_date DESC"

  alias_attribute :title, :name

  # If you're using a named scope that includes a changing variable you need to wrap it in a lambda
  # This avoids the query being cached thus becoming unaffected by changes (i.e. Time.now is constant)
  scope :born, lambda {
    where( "birth_date < ?", Time.now )
  }
  scope :latest, lambda { |*l_params|
    born.limit( l_params.first || 10)
  }

  def not_born? # has the published date not yet arrived?
    birth_date > Time.now
  end

  # for will_paginate
  def self.per_page
    20
  end

end
