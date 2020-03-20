ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }
  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'Usuarios' do
          ul do
            li "Usuarios registrados: #{User.count}"
            li "Administradores registrados: #{AdminUser.count}"
          end
      end
    end
      column do
        panel 'Productos' do
          ul do
            li "Productos registrados: #{Product.count}"
          end
       end
    end
      column do
        panel 'Tiendas' do
          ul do
            li "Tiendas registradas: #{Store.count}"
          end
      end
    end


  end


  


    panel "Grafico" do
      render 'shared/chart'
    end  
end 
end
