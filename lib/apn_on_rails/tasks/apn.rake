namespace :apn do
  
  namespace :notifications do
    
    desc "Deliver all unsent APN notifications."
    task :deliver, :notes, :environment do
      APN::Notification.send_notifications(notes)
    end
    
 
  end # notifications
  
  namespace :feedback do
    
    desc "Process all devices that have feedback from APN."
    task :process => [:environment] do
      APN::Feedback.process_devices
    end
    
  end
  
end # apn