class CreateBluetoothDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :bluetooth_devices do |t|
      t.boolean :status, default: nil
      t.string :name, default: nil
      t.string :device_id, default: nil
      t.timestamps
    end
  end
end
