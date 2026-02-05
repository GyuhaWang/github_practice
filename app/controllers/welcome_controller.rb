class WelcomeController < ApplicationController
    def index
    @name = "Alice"
    @items = ["Apple", "Banana", "Cherry"]
    @user = { name: "Bob", age: 30 }
    @users = [{ name: "Bob", age: 30 }, { name: "James", age: 35 }]
    end

    def submit
    @post = Post.new(title: params[:username], content: params[:message])
        if @post.valid?
        @post.save
        redirect_to posts_path # 성공
        else
        render 'index' # 다시 작성하도록 폼 페이지로 이동
        end
    end
end