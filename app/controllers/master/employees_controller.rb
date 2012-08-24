
include 'Ab'

class Master::EmployeesController < ApplicationController
  
  def index
    @employee = Employee.new
    @action = 'create'
  end
  
  def new
    @employee = Employee.new(params[:employee])
  end
  
  def create
    @employe = Employee.new(params[:employee])
    if @employe.save
      @employe.address_details.build(params[:address])
      @employe.save
      redirect_to(master_employees_path)
    end
  end
  
  def show
    @employee = Employee.find(params[:employee])
  end
  
  def edit
    @employee = Employee.find(params[:id])
    @action = 'update'  
    render :action => 'index', :id => @employee
  end
  
  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      @employee.address_details.build(params[:address])
      @employee.save
      render :action => 'index', :id => @employee
    end
  end
  
  def destroy_employee
    @employee = Employee.find(params[:employee_id])
    @employee.destroy
    redirect_to :action => 'index'
  end
end
