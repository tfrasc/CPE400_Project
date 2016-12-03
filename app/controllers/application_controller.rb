class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    # @status1 = Connection.find(1)
    # @status2 = Connection.find(2)
  end

  def update
    @connection = Connection.find(params[:id])
    @connection.update(status: true)
  end

  def reset
    @connection = Connection.find(params[:id])
    @connection.update(status: false)
  end
end
