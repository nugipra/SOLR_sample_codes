class User < ApplicationRecord

  searchable do
    text :first_name, :last_name, :boost => 2
    text :company_name, :address, :city, :county
    string :state
  end

end
