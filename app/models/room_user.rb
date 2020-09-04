class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user

  def change
    create_table :room_user do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
