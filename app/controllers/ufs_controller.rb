class UfsController < ApplicationController
  def question
    uf = Uf.find_by(date: params[:date])
    if uf.nil?
      render json: 'Value not found'
    else
      if request.headers['X-CLIENT'].present?
        Search.create(date_query: params[:date], name: request.headers['X-CLIENT'])
        render json: uf.price
      else
        render json: 'CLIENT pending'
      end  
    end
  end

  def count_question
    count = Search.where(name: params[:name]).count 
    render json: count
  end
end