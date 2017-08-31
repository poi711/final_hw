class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
  end
  
  def create
    post = Post.new(post_title: params[:title], post_content: params[:content])
    
    uploader = AvatarUploader.new
    uploader.store!(params[:pic])    
    
    post.image_url = uploader.url
    
    post.save
    
    redirect_to "/home/index"
  end
  
  def reply
    reply = Reply.new(post_id: params[:post_id], reply_content: params[:reply_content])
    reply.save
    
    redirect_to "/home/index"
  end
end
