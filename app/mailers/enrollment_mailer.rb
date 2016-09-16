class EnrollmentMailer < ApplicationMailer
  def notify_admissions_team(student)
    @student = student
    mail(from: "sandboxd035c758dbb54757b1b13d910d57a6b3.mailgun.org", to: "admissions@anyonecanlearntocode.com, bursar@anyonecanlearntocode.com", subject: "New Enrollment: #{@student.full_name}")
  end
end
