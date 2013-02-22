class RemoveImageToAlbumm < ActiveRecord::Migration
  def up
    remove_column :albumms, :image
      end

  def down
    add_column :albumms, :image, :string
  end
end
