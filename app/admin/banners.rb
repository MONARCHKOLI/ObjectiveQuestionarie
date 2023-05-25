ActiveAdmin.register Banner do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :main_image

  # form partial: 'form'
  form do |f|
    f.inputs do
      f.input :title, as: :string
      f.input :main_image, as: :file, input_html: { multiple: false }
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :image do |ad|
        image_tag url_for(ad.main_image) if ad.main_image.attached?
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
