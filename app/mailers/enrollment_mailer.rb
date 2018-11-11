class EnrollmentMailer < ApplicationMailer
  def notify_admissions_team(student)
    @student = student
    mail(from: @student.email, to: "operations@actualize.co, admissions@anyonecanlearntocode.com", subject: "New Enrollment: #{@student.full_name}")
  end
end
