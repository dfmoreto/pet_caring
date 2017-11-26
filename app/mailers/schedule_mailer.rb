class ScheduleMailer < ApplicationMailer
  def service(schedule)
    @schedule = schedule
    mail to: schedule.client.email, subject: "Schedule on #{@schedule.date.strftime("%b %d, %Y")}"
  end
end
