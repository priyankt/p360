Admin.controllers :property_types do

  get :index do
    @property_types = PropertyType.all
    render 'property_types/index'
  end

  get :new do
    @property_type = PropertyType.new
    render 'property_types/new'
  end

  post :create do
    @property_type = PropertyType.new(params[:property_type])
    if @property_type.save
      flash[:notice] = 'PropertyType was successfully created.'
      redirect url(:property_types, :edit, :id => @property_type.id)
    else
      render 'property_types/new'
    end
  end

  get :edit, :with => :id do
    @property_type = PropertyType.get(params[:id])
    render 'property_types/edit'
  end

  put :update, :with => :id do
    @property_type = PropertyType.get(params[:id])
    if @property_type.update(params[:property_type])
      flash[:notice] = 'PropertyType was successfully updated.'
      redirect url(:property_types, :edit, :id => @property_type.id)
    else
      render 'property_types/edit'
    end
  end

  delete :destroy, :with => :id do
    property_type = PropertyType.get(params[:id])
    if property_type.destroy
      flash[:notice] = 'PropertyType was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy PropertyType!'
    end
    redirect url(:property_types, :index)
  end
end
