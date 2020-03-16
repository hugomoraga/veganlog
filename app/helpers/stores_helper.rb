module StoresHelper
    
    def add_address_button(form)
        address_fields = form.fields_for(:adressess, Address.new) do |addresses_form|
            render 'addresses/addresses_fields', addresses_form: addresses_form
        end
        html_options = {
            class: 'badge badge-pill badge-info',
            href: '#',
            id: 'add-address',
            data: { address: address_fields }
            
        }
        content_tag(:button, '+Add', html_options)
    end
    
    
end
