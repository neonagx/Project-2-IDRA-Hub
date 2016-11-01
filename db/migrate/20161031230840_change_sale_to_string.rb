class ChangeSaleToString < ActiveRecord::Migration[5.0]
  def change
    change_column(:products, :for_sale, :string)
    Product.all.each do |product|
      product.update_attributes :for_sale => "Buying"
    end
  end
end
