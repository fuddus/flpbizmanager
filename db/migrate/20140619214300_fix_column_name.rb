class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :contacts, :contacted_on, :contacted_on
   	rename_column :categories, :mtdSalesQty, :mtd_sales_qty 	
   	rename_column :categories, :ytdSalesQty, :ytd_sales_qty 	   	
   	rename_column :categories, :mtdSalesValue, :mtd_sales_value 	   	
   	rename_column :categories, :ytdSalesValue, :ytd_sales_value 	
   	rename_column :customers, :mtdPurchases, :mtd_purchases 
   	rename_column :customers, :ytdPurchases, :ytd_purchases   
   	rename_column :orders, :orderDate, :order_date      	
   	rename_column :orders, :ourRef, :our_ref   
   	rename_column :orders, :deliveredInFull, :delivered_in_full   
   	rename_column :products, :retail_price, :retail_price   
   	rename_column :products, :ndp_price, :ndp_price   
   	rename_column :products, :dist_price, :dist_price   
   	rename_column :products, :mtdSalesQty, :mtd_sales_qty   
   	rename_column :products, :ytdSalesQty, :ytd_sales_qty   
   	rename_column :products, :ytdSalesValue, :ytd_sales_value      	   	   	  	
   end
end
