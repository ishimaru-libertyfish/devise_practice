class MypageController < ApplicationController

  # ログインユーザのみアクセス許可
  before_action :authenticate_user!

  def show
    # 指定されたIDのユーザ情報を取得
    @user = User.find(params[:id])
    
  end
end
