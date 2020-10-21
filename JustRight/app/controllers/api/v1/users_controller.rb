class Api::V1::UsersController < ApplicationController

  skip_before_action :logged_in?, only: [:create, :login]

def index
    users = User.all
    render json: users, except: [:updated_at, :created_at, :password_digest], status: :ok
end

def show
    user = User.find_by(id: params[:id])
    render json: user, except: [:updated_at, :created_at, :password_digest], status: :ok
end

#POST /users/signup
def create
    user = User.new(user_params)
     if user.valid?
        user.save
        render json: {user: user}, status: :created
    else
        render json: {error: "Failed to create user"}, status: :not_acceptable
    end
end

def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    render json: user, except: [:updated_at, :created_at, :password_digest], status: :ok
end

# byebug
def clients
  client = User.clients
  render json: client, except: [:updated_at, :created_at, :password_digest], status: :ok
end

def tutors
  tutor = User.tutors
  render json: tutor, except: [:updated_at, :created_at, :password_digest], status: :ok
end

def babysitters
  babysitter = User.babysitters
  render json: babysitter, except: [:updated_at, :created_at, :password_digest], status: :ok
end

#POST /users/login
  def login

      user = User.find_by(username: params[:username])

      if user && user.authenticate(params[:password])

        time = Time.now + 24.hours.to_i

        render json: {user: user, token: encode_token({user_id: user.id}), exp: time.strftime("%m=%d-%Y %H:%M")},except: [:exp], status: 200
      else
        render json: {error: "Invalid username or password"}, status: :unauthorized
      end

  end

    private

    def user_params
        params.permit(:username, :password, :first_name, :last_name, :address, :phone, :gender, :age, :email, :image, :client)
    end

end
