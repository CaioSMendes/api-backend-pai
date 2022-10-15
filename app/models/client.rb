class Client < ApplicationRecord
    belongs_to :address
    accepts_nested_attributes_for :address

    def typeAddress_address
        self.address.typeAddress
    end

    def zipcode_address
        self.address.zipcode
    end

    def address_address
        self.address.address
    end

    def phone_address
        self.address.phone
    end

    def complement_address
        self.address.complement
    end

    def uf_address
        self.address.uf
    end

    def city_address
        self.address.city
    end

    def dtIncatu_address
        self.address.dtIncatu
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:typeAddress_address, :zipcode_address, :address_address, :phone_address, :complement_address,
            :uf_address, :city_address, :dtIncatu_address]
        )
    end
end