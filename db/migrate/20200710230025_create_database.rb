class CreateDatabase < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
    end

    create_table :trials do |t|
      t.integer :user_id
      t.integer :score
    end

    create_table :turns do |t|
      t.integer :trial_id
      t.integer :user_choice
      t.integer :computer_choice
      t.string :image_url
    end
  end
end
