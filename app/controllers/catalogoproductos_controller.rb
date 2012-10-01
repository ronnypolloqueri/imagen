class CatalogoproductosController < ApplicationController
  
  def elaborar_catalogo
    @producto_id = params[:producto_id]
    @catalogo_id = params[:catalogo_id]
    @catalogoproducto = Catalogoproducto.new(:producto_id => @producto_id, :catalogo_id => @catalogo_id)
    @catalogoproducto.save
    #redirect_to :controller => :catalogos, :action => :catalogo, :id => @catalogo_id
    redirect_to :controller => :catalogos, :action => :show, :id => @catalogo_id
  end
  
  def quitar
    
    @catalogo_id = params[:catalogo_id]
    
    @catalogoproducto = Catalogoproducto.find(params[:id])
    @catalogoproducto.destroy
    redirect_to :controller => :catalogos, :action => :show, :id => @catalogo_id
    
  end
end
