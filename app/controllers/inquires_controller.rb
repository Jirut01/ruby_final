class InquiresController < ApplicationController
    def send_mail
        name_user = params[:name_user]
        tel = params[:tel]
        message = params[:message]
        ApplicationMailer.inquire(name_user, tel , current_user, message).deliver
        redirect_to :inquires ,  notice: "Adding form complly"
    end
  end
  