RippleDemo.controllers :post do

  get :index do
    @posts = Post.all
    render "post/index"
  end

  get :new do
    @post = Post.new
    render "post/new"
  end

  post :create do
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = 'Post was saved!'
    else
      flash[:error] = 'Post was not saved!'
      render "post/new"
    end
    redirect url(:post, :index)
  end

  get :edit, :with => :id do
    @post = Post.find(params[:id])
    render "post/edit"
  end

  put :update, :with => :id do
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = 'Post was updated'
    else
      flash[:error] = 'Post was NOT updated'
      render "post/edit"
    end
    redirect url(:post, :index)
  end

  delete :destroy, :with => :id do
    post = Post.find(params[:id])
    if post.destroy
      flash[:notice] = 'Post was deleted!' 
    else
      flash[:error] = 'Post was NOT deleted'
    end
    redirect url(:post, :index)
  end

end
