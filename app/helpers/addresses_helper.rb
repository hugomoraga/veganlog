module AddressesHelper
    def add_store_button(form)
        store_fields = form.fields_for(:stores, Store.new) do |stores_form|
            render 'stores/stores_fields', stores_form: stores_form
        end
        html_options = {
            class: 'btn  btn-success',
            href: '#',
            id: 'add-store',
            data: { store: store_fields }

        }
        content_tag(:button, '+Add Store', html_options)
    end


end
