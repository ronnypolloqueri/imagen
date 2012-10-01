class LineadepedidosController < ApplicationController
  def agregar_pedido
    pedido_id = params[:pedido_id]
    producto_id = params[:producto_id]
    producto = Producto.find(producto_id)
    cantidad = 3
    precio = producto.precio_venta * cantidad
    lineadepedido = Lineadepedido.new(:pedido_id => pedido_id, :producto_id => producto_id, :precio => precio, :cantidad => cantidad)
    lineadepedido.save
    redirect_to :controller => :pedidos, :action => :show, :id => pedido_id  
  end

end
