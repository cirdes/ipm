ActiveAdmin.register Slider do
	index do
    column :caption
    column :description
    column :image
    default_actions
  end
  
  form :html => { :multipart => true } do |f|                         
    f.inputs "Slider Details" do       
      f.input :caption                  
      f.input :description              
      f.input :image, :as => :file
    end                               
    f.buttons                         
  end     
end
