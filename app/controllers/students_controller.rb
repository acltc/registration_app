class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new({
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        phone_number: params[:phone_number],
        emergency_contact_name: params[:emergency_contact_name],
        emergency_contact_phone: params[:emergency_contact_phone],
        })
    if accepted_terms_and_conditions?
      if @student.save
        EnrollmentMailer.notify_admissions_team(@student).deliver_now
      else
        flash.now[:warning] = "Please complete all of the contact information below."
        render :new
      end
    else
      flash.now[:warning] = "Please accept all the terms and conditions before registering."
      render :new
    end
  end

  private

  def accepted_terms_and_conditions?
    params[:term_1] && params[:term_2] && params[:term_3] && params[:term_4] && params[:term_5] 
  end
end
