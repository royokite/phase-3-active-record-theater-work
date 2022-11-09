class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        found_leads = self.auditions.where("hired = ?", true)
        return found_leads.first if found_leads.first
        "no actor has been hired for this role"
    end

    def understudy
        found_understudies = self.auditions.where("hired = ?", true)
        return found_understudies.second if found_understudies.second
        "no actor has been hired for understudy for this role"
    end
end
