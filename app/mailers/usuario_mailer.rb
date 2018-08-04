class UsuarioMailer < ApplicationMailer

  def bienvenido_email
    @user = params[:usuario]
    @url = 'http://localhost/login'

    attachments['filename.jpg'] = File.read('/path/to/imagen.png')
    mail(to: @user.email, subject: 'Bienvenido')
  end
  #
  # default from: 'milito092010@hotmail.com'
  # layout 'mailer'
end
