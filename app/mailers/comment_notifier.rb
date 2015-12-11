class CommentNotifier < ApplicationMailer
  def created(comment, user)
    @comment = comment
    @user = user
    @ticket = comment.ticket
    @project = @ticket.project

    subject = "[ProjectTracker] #{@project.name} - #{@ticket.name}"
    mail(to: user.email, subject: subject)
  end
end
