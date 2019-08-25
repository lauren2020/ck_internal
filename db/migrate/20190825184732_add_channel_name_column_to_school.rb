class AddChannelNameColumnToSchool < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :channel_name, :string
  end
end
