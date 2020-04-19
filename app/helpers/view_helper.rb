module ViewHelper
  def greeting
    if session['userinfo'].present?
      @greeting = "Welcome, #{session['userinfo']['info']['name'].split.first}!"
      @link = dashboard_path
    else
      @greeting = 'Royal Army of Wakanda'
      @link = root_path
    end
  end

  def login_or_out
    if session['userinfo'].present?
      link_to('Log Out', logout_path, class: 'nav-link')
    else
      link_to('Log In', authentication_path, class: 'nav-link')
    end
  end
end
