class Permission < ApplicationRecord
    belongs_to :functionality
    belongs_to :profile

    accepts_nested_attributes_for :functionality
    accepts_nested_attributes_for :profile

    def nameFunctionality_functionality
        self.functionality.nameFunctionality
    end

    def dtIncatu_functionality
        self.functionality.dtIncatu
    end

    def status_functionality
        self.functionality.status
    end

    def nameProfile_profile
        self.profile.nameProfile
    end

    def dtIncatu_profile
        self.profile.dtIncatu
    end

    def status_profile
        self.profile.status
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:nameFunctionality_functionality, :dtIncatu_functionality, :status_functionality,:nameProfile_profile, 
            :dtIncatu_profile, :status_profile
            ]
        )
    end
end
