class SessionsController < ApplicationController
    def new

    end

def create
    entered_email = params["email"]
    entered_password = params["password"]

    #checking the gmail
    @user = User.find_by({email: entered_email})
    #see if there is a user with that email in the database

    if @user
        if BCrypt::Password.new(@user.password) == entered_password
            session["user_id"] = @user.id
            redirect_to "/companies"
        else
            flash[:notice] == "Password is incorrect"
          redirect_to "/sessions/new"
         end
    else
    flash[:notice] == "no user with that email"
    redirect_to "/sessions/new"
    end
end

def destroy
    session["user_id"] = nil
    flash[:notice] = "You have been logged out"
    redirect_to "/sessions/new"
end

end
