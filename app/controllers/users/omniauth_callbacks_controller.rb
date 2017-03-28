class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def linkedin
    # render :text => "<pre>" + env["omniauth.auth"].to_yaml and return
    auth = env["omniauth.auth"]
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      # access_token = auth["credentials"]["token"]
      # access_secret = auth["credentials"]["secret"]
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success",kind: @user['provider'].titleize
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.linkedin_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
