class Company < ActiveRecord::Base
has_many :freebies
has_many :devs, through: :freebies


def give_freebie(dev, item_name, value)
    puts dev.id
 free= Freebie.create(item_name:item_name,value:value,dev_id:dev.id,company_id:self.id)
puts free
free
end


def self.oldest_company
    Company.all.sort_by{|company |company.founding_year  }[0]
end




end
