class CreateReaders < ActiveRecord::Migration[5.2]
    def change
        create_table :readers do |t|
            t.string :email
            t.string :username
            t.string :password_digest
        end
    end
end