class CreateProducts < ActiveRecord::Migration
  def change #changeというメソッドを定義
    create_table :products do |t| #テーブル名をシンボルの形式で渡す
    # create_table()の呼び出しでは、テーブル作成前に評価されるブロックも渡す
    # このブロックには呼び出し時にtというオブジェクトが渡される
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, {precision: 8, scale: 2}

      t.timestamps
    end
  end
end
