class AddRetwetIdToTwets < ActiveRecord::Migration
  def change
    add_reference :twets, :original_user, index: true
  end
end
