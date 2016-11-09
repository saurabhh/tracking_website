ActiveAdmin.register User do

  controller do
    skip_before_filter :authenticate_person!
    @users = User.all.map { |user| [user.email, user.id] }

    # def update
    #   if params[:user][:password].blank?
    #     params[:user].delete(:password)
    #     params[:user].delete(:password_confirmation)
    #   end
    #   super
    # end
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :email, :password, :password_confirmation
  #
  # filter :email
  # filter :created_at
  #
  # index do
  #   column :email
  #   actions
  # end
  #
  # form do |f|
  #   f.inputs 'User' do
  #     f.input :email
  #     f.input :password
  #     f.input :password_confirmation
  #     f.actions do
  #       f.action :submit, label: 'Submit'
  #       f.action :cancel, label: 'Cancel'
  #     end
  #   end
  # end
end
