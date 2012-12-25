module CommanMethods
  extend ActiveSupport::Concern

 def self.included(base)
    def generate_code
      class_name = self.new.class.name
      unique_id=Uniqueid.where(:class_name=>class_name).last
      if unique_id
         incremented_value = unique_id.current_value 
         code =  unique_id.suffix ? (unique_id.prefix +  incremented_value.to_s + unique_id.suffix.to_s) : (unique_id.prefix +  unique_id.current_value.to_s)  
      else
         prefix=class_name.slice(0,4)
         unique_id = Uniqueid.create(:class_name=>class_name,:prefix=>prefix.to_s + "/",:start_value=>001,:current_value=>001,:increment_value=>1 )
         code =  unique_id.suffix ? (unique_id.prefix +  unique_id.current_value.to_s + unique_id.suffix.to_s) : (unique_id.prefix +  unique_id.current_value.to_s)  
      end 
    end
    
    
    def update_created_by
      self.created_by = session[:user_id]
    end
  base.extend(CommanMethods)
 end

   def update_code
    class_name = self.class.name
    unique_id=Uniqueid.where(:class_name=>class_name).last
    incremented_value = unique_id.current_value + 1 
    unique_id.update_attributes(:current_value=>incremented_value)
  end

 
end




ActiveRecord::Base.send(:include, CommanMethods)
