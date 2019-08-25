class AddChannelNameToClassPeriod < ActiveRecord::Migration[6.0]
  def change
    add_column :class_periods, :channel_name, :string, :default => ""
  end
end
