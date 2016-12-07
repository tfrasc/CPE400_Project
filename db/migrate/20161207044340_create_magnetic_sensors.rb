class CreateMagneticSensors < ActiveRecord::Migration[5.0]
  def change
    create_table :magnetic_sensors do |t|
      t.boolean :status, default: nil
      t.timestamps
    end
  end
end
