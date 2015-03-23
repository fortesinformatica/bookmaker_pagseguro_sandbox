class CreateRespostaPagseguros < ActiveRecord::Migration
  def change
    create_table :resposta_pagseguros do |t|

      t.timestamps null: false
    end
  end
end
