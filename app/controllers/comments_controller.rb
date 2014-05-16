class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create!({"body"=>params[:comment][:body]})
		p params[:comment]
		redirect_to @post
	end
end
