class ClientesController < ApplicationController
  def index
    @clientes = Cliente.all
    
    @docente =  Docente.find(1)
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @cliente = Cliente.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def create
    @cliente = Cliente.new(params[:cliente])

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente creado.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      if @cliente.update_attributes(params[:cliente])
        format.html { redirect_to @cliente, notice: 'Cliente actualizado.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

    respond_to do |format|
      format.html { redirect_to clientes_url }
    end
  end
end
