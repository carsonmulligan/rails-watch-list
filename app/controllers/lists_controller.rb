# frozen_string_literal: true

class ListsController < ApplicationController
  # before_action set_list: [:show, :create]
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all
  end

    # def set_list
    #   @list = List.find(params[:id])
    # end

    # def list_params
    #   params.require(:list).permit(:name)
    # end
end
