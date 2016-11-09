class Domain < ActiveRecord::Base

  ## VALIDATIONS ##
  validates :name, url: true

end
