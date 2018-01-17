
class LoginPage <SitePrism::Page
    set_url '/Account/Login'
    
    element :user, '#UserName'
    element :password, '#Password'
    element :sign_in, '#btnSubmit'

    element :alert, '.validation-summary-errors'

    def with(email, pwd)
        self.user.set email
        self.password.set pwd
        self.sign_in.click
    end
end
