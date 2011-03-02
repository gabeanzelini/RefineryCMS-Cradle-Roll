class Admin::BirthsController < Admin::BaseController

  crudify :births, :order => "birth_date DESC"

end
