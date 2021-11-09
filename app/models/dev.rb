class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies



def received_one?(item)

    self.freebies.find do |freebie|
        freebie.item_name==item

    end

end


def give_away(dev, freebie)

if    self.freebies.include?(freebie)
freebie.update(dev: dev)
else
    puts "hi"
end
end

def work (freebie)
self.freebies.include? (freebie)

end 







end
