class PagesController < ApplicationController
  
  def home
  end

  def download_pdf
  send_file(
    "#{Rails.root}/public/system/Anjaneyulu-Reddy.pdf",
    filename: "Anjaneyulu-Reddy.pdf",
    type: "application/pdf",:x_sendfile=>true
  )
end
  
end
