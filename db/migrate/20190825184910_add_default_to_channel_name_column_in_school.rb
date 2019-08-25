class AddDefaultToChannelNameColumnInSchool < ActiveRecord::Migration[6.0]
  def change
    change_column :schools, :channel_name, :string, :default => ""
  end
end
