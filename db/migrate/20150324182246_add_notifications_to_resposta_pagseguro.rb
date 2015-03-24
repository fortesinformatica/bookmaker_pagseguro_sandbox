class AddNotificationsToRespostaPagseguro < ActiveRecord::Migration
  def change
  	add_column :resposta_pagseguros, :notificationCode, :string
  	add_column :resposta_pagseguros, :notificationType, :string
  end
end
