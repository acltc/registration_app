class EnrollmentMailer < ApplicationMailer
  def notify_admissions_team(student)
    @student = student
    mail(from: "mg.anyonecanlearntocode.com", to: "admissions@anyonecanlearntocode.com, bursar@anyonecanlearntocode.com", subject: "New Enrollment: #{@student.full_name}")
  end
end
