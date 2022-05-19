# frozen_string_literal: true

class ListsController < ApplicationController
  #   def new

  #     @list = List.new
  #   end

  def create
    @list = List.new(params_list)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  #   def show
  #     @list = List.find(params[:id])
  #   end
  # #
  def index
    @lists = List.all
  end
end

private
def params_list
  params.require(:list).permit(:name)
end
