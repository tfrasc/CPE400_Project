class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # skip_before_filter :verify_authenticity_token

  def home
    @status1 = Connection.find(1)
    @status2 = Connection.find(2)
    @photos = Photo.all
  end

  def update
    @connection = Connection.find(params[:id])
    @connection.update(status: true)
  end

  def reset
    @connection = Connection.find(params[:id])
    @connection.update(status: false)
  end

  def add_photo
    p "PARAMS"
    p params

    @photo = Photo.new(image: params[:image])
    @photo.save!
  end

  # def process_photo
  #
  # end

  def remove_photos
    @photos = Photo.all

    @photos.each do |photo|
      photo.delete
    end
  end
end
