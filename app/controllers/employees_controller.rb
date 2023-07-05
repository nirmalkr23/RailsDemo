class EmployeesController < ApplicationController
    def index
        employees = Employee.all
        render json: employees, status:200
      end
    
      def show
        employee = Employee.find(params[:id])
        if employee 
          render json: employee, status: 200
        else
          render json:{
            error: "No Data Found"
          }
        end
      end
    
      def create 
        employee = Employee.new(
          emp_params
        )
        if employee.save
          render json: employee, status:200
        else
          render json:{
            error: "Error Creating..."
          }
        end
      end
    
      def update
        employee = Employee.find(params[:id])
        if employee
          employee.update(first_name: params[:first_name],
            last_name: params[:last_name],email: params[:email],
            dob: params[:dob],gender: params[:gender],phone_number: params[:phone_number])
          render json: "Employee record updated"
        else
          render json: {
            error: "NO DATA FOUND"
          }
        end
      end
    
      def destroy
        employee = Employee.find(params[:id])
        if employee
          employee.destroy
          render json: "Employee deleted successfully"
        else
          render json: {
            error: "NO DATA FOUND"
          }
        end
      end
    
      private
      def emp_params
        params.require(:employee).permit(
          :first_name,
          :last_name,
          :email,
          :dob,
          :gender,
          :phone_number
        )
      end
end
