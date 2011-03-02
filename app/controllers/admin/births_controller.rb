class Admin::BirthsController < Admin::BaseController

  crudify :birth, :order => "birth_date DESC"

end
