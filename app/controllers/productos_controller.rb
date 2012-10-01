class ProductosController < ApplicationController
  
  def create
    @fabrica = Fabrica.find(params[:fabrica_id])
    @producto = @fabrica.productos.create(params[:producto])
    if @producto.save
      redirect_to :controller => :fabricas, :action => :catalogo_fabrica, :id => @fabrica.id, notice: 'El producto fue creado.'
    else
      redirect_to :controller => :fabricas, :action => :show, :id => @fabrica.id, notice: 'No adjunto una imagen.'
    end
    #redirect_to fabrica_path(@fabrica)
    
    
  end
  
  def destroy
    @fabrica = Fabrica.find(params[:fabrica_id])
    @producto = @fabrica.productos.find(params[:id])
    @producto.destroy
    redirect_to :controller => :fabricas, :action => :catalogo_fabrica, :id => @fabrica.id
  end
  
end
