class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.prepare_profile
  end

  def update
    @profile = current_user.prepare_profile
    @profile.assign_attributes(profile_params)

    if @profile.save
      flash[:success] = 'プロフィールを作成したよ！いいね！'
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

    def profile_params
      params.require(:profile).permit(
        :nickname,
        :introduction,
        :avatar
      )
    end
end
