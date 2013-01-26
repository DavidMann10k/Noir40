class ConnectionsController < ApplicationController
  def index
    @connections = Connection.all
  end

  def show
    @connection = Connection.find(params[:id])
  end

  def new
    @connection = Connection.new
  end

  def create
    @connection = Connection.new(params[:connection])
    if @connection.save
      redirect_to @connection, :notice => "Successfully created connection."
    else
      render :action => 'new'
    end
  end

  def edit
    @connection = Connection.find(params[:id])
  end

  def update
    @connection = Connection.find(params[:id])
    if @connection.update_attributes(params[:connection])
      redirect_to @connection, :notice  => "Successfully updated connection."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @connection = Connection.find(params[:id])
    @connection.destroy
    redirect_to connections_url, :notice => "Successfully destroyed connection."
  end
end
