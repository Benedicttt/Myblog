def active_test
  begin
    puts "123"

    @user = User.invite!({:email => "[email protected]"}, current_user)
  rescue
    puts "321"
    params[:user] = @user
  end
end