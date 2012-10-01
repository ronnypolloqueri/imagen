class FabricasController < ApplicationController

  def index
    @fabricas = Fabrica.all
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def catalogo_fabrica
    @fabrica = Fabrica.find(params[:id])
    @productos = Producto.order("created_at DESC").where(:fabrica_id => @fabrica.id)
  end

  def show
    @fabrica = Fabrica.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @fabrica = Fabrica.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @fabrica = Fabrica.find(params[:id])
  end

  def create
    @fabrica = Fabrica.new(params[:fabrica])

    respond_to do |format|
      if @fabrica.save
        format.html { redirect_to @fabrica, notice: 'Fabrica was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end


  def update
    @fabrica = Fabrica.find(params[:id])

    respond_to do |format|
      if @fabrica.update_attributes(params[:fabrica])
        format.html { redirect_to @fabrica, notice: 'Fabrica was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @fabrica = Fabrica.find(params[:id])
    @fabrica.destroy

    respond_to do |format|
      format.html { redirect_to fabricas_url }
    end
  end
end
