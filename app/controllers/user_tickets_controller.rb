class UserTicketsController < ApplicationController
  def create
    @user_ticket = UserTicket.new(params[:user, :ticket, :time, :paid])
    if @user_ticket.save
      render json: @user_ticket
    end
  end

  def destroy
    @user_ticket.destroy
    render json: @user_ticket
  end

  def update
    @user_ticket = UserTicket.find(params[:id])
    if @user_ticket.update(user_ticket_params)
    else
      render json: @user_ticket
    end
  end

  def show
    @user_ticket = UserTicket.find(params[:id])
    render json: @user_ticket
  end
end
