module MyModule
 def self.included(base)
  # add methods in ClassMethods into the meta class
  def first_module_method
    sdfdf
  end
  base.extend(MyModule)
 end
 
end
