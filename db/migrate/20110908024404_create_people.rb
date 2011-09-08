class CreatePeople < ActiveRecord::Migration

  def self.up
    create_table :people do |t|
      t.string :name
      t.text :bio
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

    add_index :people, :id

    load(Rails.root.join('db', 'seeds', 'people.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "people"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/people"})
    end

    drop_table :people
  end

end
