class CatalogosController < ApplicationController

  def index
    @catalogos = Catalogo.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @catalogo = Catalogo.find(params[:id])
    @productos = Producto.order("created_at DESC").all
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def catalogo
    
    @catalogo = Catalogo.find(params[:id])
    
    @catalogos = Catalogoproducto.order("created_at DESC").where(:catalogo_id => params[:id])
    
    render :layout => 'catalogo'
    
  end

  def new
    @catalogo = Catalogo.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @catalogo = Catalogo.find(params[:id])
  end

  def create
    @catalogo = Catalogo.new(params[:catalogo])

    respond_to do |format|
      if @catalogo.save
        format.html { redirect_to @catalogo, notice: 'El catalogo fue creado.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @catalogo = Catalogo.find(params[:id])

    respond_to do |format|
      if @catalogo.update_attributes(params[:catalogo])
        format.html { redirect_to @catalogo, notice: 'El catalogo fue actualizado.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @catalogo = Catalogo.find(params[:id])
    @catalogo.destroy

    respond_to do |format|
      format.html { redirect_to catalogos_url }
      format.json { head :no_content }
    end
  end
end
