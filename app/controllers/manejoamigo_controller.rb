class ManejoamigoController < ApplicationController

  def confirmarSolicitudAmistad

  	a = Amigo.new()
  	a.cambiarStatusParaAmigo(params[:id],current_user.id)
  	redirect_to "/sessions/notificador"
  end



  def mandarOconfirmarSolicitudAmistad

  	a = Amigo.new()

  	if (a.cambiarStatusParaAmigo(params[:id],current_user.id)) 
  		a.cambiarStatusParaAmigo(params[:id],current_user.id)
  		redirect_to "/sessions/perfil_publico/"+params[:id]
  	else
  		a.nuevaAmistad(current_user.id,params[:id],"12-12-12")
  		redirect_to "/sessions/perfil_privado/"+params[:id]
  	end
  end


end
