ActiveAdmin.register UserResponse do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :banner_id, :response_ids
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :banner_id, :response_ids]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    inputs "Details" do
      f.input :user_id, as: :select, collection: User.all.collect{|user| [user.email,user.id]}
      f.input :banner_id, as: :select, collection: Banner.all.collect{|banner| [banner.title, banner.id]}
      f.actions do
        f.action :submit, label: 'save'
      end
    end
    if !(resource[:banner_id].blank?)
      inputs "Questions on #{Banner.find(resource[:banner_id]).title}" do
        f.inputs do
          Questionarie.where(banner_id: resource[:banner_id]).each do |question|
            f.label "#{question.question}"
            f.input :response_ids, as: :check_boxes, collection: Answer.where(questionarie_id: question.id).collect{|answer| [answer.answer, answer.id]}
          end
        end
        f.actions
      end
    end
  end

  controller do
    def create
      create! do |success,failure|
        success.html {redirect_to edit_admin_user_response_path(UserResponse.last.id)}
      end
    end
    # def update
    # end
  end
end
