Admin.controllers :amenities do

  get :index do
    @amenities = Amenity.all
    render 'amenities/index'
  end

  get :new do
    @amenity = Amenity.new
    render 'amenities/new'
  end

  post :create do
    @amenity = Amenity.new(params[:amenity])
    if @amenity.save
      flash[:notice] = 'Amenity was successfully created.'
      redirect url(:amenities, :edit, :id => @amenity.id)
    else
      render 'amenities/new'
    end
  end

  get :edit, :with => :id do
    @amenity = Amenity.get(params[:id])
    render 'amenities/edit'
  end

  put :update, :with => :id do
    @amenity = Amenity.get(params[:id])
    if @amenity.update(params[:amenity])
      flash[:notice] = 'Amenity was successfully updated.'
      redirect url(:amenities, :edit, :id => @amenity.id)
    else
      render 'amenities/edit'
    end
  end

  delete :destroy, :with => :id do
    amenity = Amenity.get(params[:id])
    if amenity.destroy
      flash[:notice] = 'Amenity was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Amenity!'
    end
    redirect url(:amenities, :index)
  end
end
