class CreatingTables < ActiveRecord::Migration
  def up
  	create_table :levels do |l|
      t.boolean 	:enabled
      t.integer 	:difficulty
      t.integet 	:category_id
      t.string  	:img_url
      t.string  	:first_name
      t.string  	:last_name
      t.string  	:stage_name
      t.string  	:band_name
      t.integer 	:titel_id
      t.integer		:question_id
      t.string		:fun_fact
      t.boolean		:fun_fact_enabled
      t.text		:wiki
      t.boolean		:wiki_enabled
      t.integer		:number_in_category
      t.integer		:number_in_all
      t.timestamps
    end

  	create_table :categories do |c|
  		t.boolean	:enabled
  		t.string	:title
  	end

  	create_table :titles do |t|
  		t.boolean	:enabled
  		t.string	:title
  	end

  	create_table :questions do |q|
  		t.boolean	:enabled
  		t.string	:title
  	end

  	create_table :users do |u|
  		t.string	:login
  		t.string	:password
  		t.boolean	:admin
  	end



  end



  def down

  end
end
