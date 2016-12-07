class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # skip_before_filter :verify_authenticity_token

  def home
    @arduinos = Arduino.all.order("id ASC")
    @bluetooth_devices = BluetoothDevice.all.order("id ASC")
    @magnetic_sensors = MagneticSensor.all.order("id ASC")
    @intrusions = Intrusion.all.order("id ASC")
    @photos = Photo.all
  end

  def connect_arduino
    @arduino = Arduino.find(params[:id])
    @arduino.update(status: true)
  end

  def reset_arduino
    @arduino = Arduino.find(params[:id])
    @arduino.update(status: nil)
  end

  def error_arduino
    @arduino = Arduino.find(params[:id])
    @arduino.update(status: false)
  end

  def connect_bluetooth_device
    @bluetooth_device = BluetoothDevice.find(params[:id])
    @bluetooth_device.update(status: true, name: params[:name], device_id: params[:device_id])
  end

  def reset_bluetooth_device
    @bluetooth_device = BluetoothDevice.find(params[:id])
    @bluetooth_device.update(status: nil, name: nil, device_id: nil)
  end

  def error_bluetooth_devices
    BluetoothDevice.where(status: nil).update(status: false, name: nil, device_id: nil)
  end

  def connect_magnetic_sensor
    @magnetic_sensor = MagneticSensor.find(params[:id])
    @magnetic_sensor.update(status: true)
  end

  def reset_magnetic_sensor
    @magnetic_sensor = MagneticSensor.find(params[:id])
    @magnetic_sensor.update(status: nil)
  end

  def error_magnetic_sensor
    @magnetic_sensor = MagneticSensor.find(params[:id])
    @magnetic_sensor.update(status: false)
  end

  def add_intrusion
    @intrusion = Intrusion.new
    @intrusion.magnetic_sensor_id = params[:magnetic_sensor_id]
    @intrusion.save!
  end

  def add_photo
    p "PARAMS"
    p params

    @photo = Photo.new(image: params[:image])
    @photo.save!
  end

  def remove_photos
    @photos = Photo.all

    @photos.each do |photo|
      photo.delete
    end
  end
end
