class CreateUserSkillTags < ActiveRecord::Migration[5.1]
  def change
    create_table :user_skill_tags do |t|
      t.integer :user_id
      t.integer :skill_tag_id

      t.timestamps
    end
  end
end
