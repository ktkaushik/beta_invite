class CreateBetaInviteBetaInvites < ActiveRecord::Migration
  def change
    create_table :beta_invites do |t|
      t.string :email
      t.string :token

      t.timestamps
    end
  end
end