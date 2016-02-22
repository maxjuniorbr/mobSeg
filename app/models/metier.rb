class Metier < ActiveRecord::Base
  has_one :person

  def self.terms_for(prefix)
    metiers = where("upper(value) like ?", "%#{prefix.upcase}%")
    metiers.order("value desc").limit(10)
  end
end
