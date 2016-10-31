class ChangeGenderToStrings < ActiveRecord::Migration[5.0]
  def change
    change_column(:users, :gender, :string)
    User.all.each do |user|
      user.update_attributes :gender => "Male"
    end
  end
end
