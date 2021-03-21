module LoginMacro
  def login_as(user)
    visit login_path
    fill_in 'user[name]', with: user.name

    click_button '次へ'
    fill_in 'user[password]', with: 'password' #user.passwordはnil
    click_button 'ログイン'
  end
end