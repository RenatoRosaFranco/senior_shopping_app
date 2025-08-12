# frozen_string_literal: true

class NewslettersController < ApplicationController
  before_action :set_newsletter, only: [:destroy]

  def create
    newsletter = Newsletter.find_or_initialize_by(email: newsletter_params[:email])

    if newsletter.save && newsletter.signup!
      flash[:notice] = 'Você se inscreveu com sucesso.'
    else
      flash[:error] = 'Falha ao se inscrever, tente novamente.'
    end

    redirect_to root_path
  end

  def destroy
    if @newsletter.cancel!
      flash[:success] = 'Newsletter cancelada com sucesso'
    else
      flash[:error] = 'Falha ao cancelar a newsletter'
    end

    redirect_to root_path
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:email)
  end
end
