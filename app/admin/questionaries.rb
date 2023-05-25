ActiveAdmin.register Questionarie do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :question, :answer, :banner_id, :question_type
  #
  # or
  #

  # question_type = ['MCQ','Single choice option']

  permit_params do
    permitted = [:question, :answer, :banner_id, :question_type]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end

end
