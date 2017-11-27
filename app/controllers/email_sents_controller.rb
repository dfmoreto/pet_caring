class EmailSentsController < ApplicationController
  def read
    @email_sent = EmailSent.find(params[:id])
    @email_sent.update(read: true)
    gif = Base64.decode64("R0lGODlhAQABAPAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==")
    render text: gif, type: 'image/gif'
  end
end
