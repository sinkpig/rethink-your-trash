ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV['rethinkyourtrashh@gmail.com'],
  password: ENV['rethink1234#'],
  authentication: :login,
  enable_starttls_auto: true
}
