class CreateBillboards < ActiveRecord::Migration
  def change
    create_table :billboard_items do |t|
      t.string :name
      t.boolean :is_broken, default: false
      t.integer :visual_state
      t.integer :technical_state
      t.integer :billboard_type_id
      t.boolean :is_unusable, default: false
      t.timestamps
    end

    create_table :billboard_types do |t|
      t.text :description
      t.attachment :main_image
      t.decimal :price_per_day, default: 0
      t.decimal :price_per_month, default: 0
      t.timestamps
    end

    create_table :customers do |t|
      t.string :name
      t.decimal :discount
      t.timestamps
    end

    create_table :agreements do |t|
      t.integer :customer_id
      t.integer :months_count, default: 0
      t.integer :days_count, default: 0
      t.timestamps
    end

    create_table :agreement_billboards do |t|
      t.integer :agreement_id
      t.integer :billboard_item_id
      t.timestamps
    end
  end
end
