ActiveAdmin.register Answer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :questionarie_id, :answer, :correct
  #
  # or
  #
  # permit_params do
  #   permitted = [:questionarie_id, :answer]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    inputs "Details" do
      f.input :questionarie_id, as: :select, collection: Questionarie.all.collect{|question| [question.question, question.id]}
      f.input :answer
      f.input :correct
      # f.input :user_id, as: :select, collection: User.all.collect{|user| [user.email,user.id]}
    end
    f.actions
  end
  
end
