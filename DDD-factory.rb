class Factory  
    def create_obj(role)
        if (role==admin)
            return CreateAdminService(params)
        elsif (role=="")
            return ....
        elsif (role=="")
            return ....
        elsif (role=="")
            return ....
        end
    end
end
    
    class CutomerEntity
        def initialize(params)
            @customer_id = params[:customer_id]
            @street = params[:street]
            @area = params[:area]
            @district = params[:district]
            @role = params[:role]
        end
        
        def generate_cutomer_id()
            random_unique_number
        end
        def create()
            cutomer = CustomerTable(generate_cutomer_id(), street, area, district)
        end
    end
    
    class AddressValueAttributes
        def initialize(params)
            @street = params[:street]
            @area = params[:area]
            @district = params[:district]
        end
        def create(customer_id, addresses)
            saved_address = []
            address.each do |address|
                saved_address << AddressTable(cutomer, address)
            end
        end
    end
    class CustomerRepository
        def save(params):
            params[:data]
        end
        def get(customer_id):
            params[:data]
        end
    end
    class CustomerEntity
        def initialize(params)
            @customer_id = params[:customer_id]
            @email = params[:email]
            @role = params[:role]
            @address: [params[:Address]]
        end
        def generate_cutomer_id()
            random_unique_number
        end
        
        def create(email, is_admin=False)
            CustomerTable.save(generate_cutomer_id, email, is_admin)
        end
    end
    class CustomerServiceParams
        def initialize(params)
            @email = params[:email]
            @address: [params[:Address]]
        end
    end
    class CustomerService
        def create(params: CustomerServiceParams)
           customer = create_customer(params.email)
           customer.address = create_address(customer_id, params.address)
           customer
        end
        def create_customer()
            CustomerEntity.create()
        end
        def create_address(customer_id, addresses)
            AddressEntity.create(customer_id, address)
        end
    end
    class CreateAdminService
        def create(params: CustomerServiceParams)
           customer = create_customer(params.email, True)
           customer.address = create_address(customer_id, params.address)
           customer_id
        end
    end

new_user = Factory.create_obj(params[:role])
