class Admins::SessionsController < Devise::SessionsController
def create
    super do |resource|
      BackgroundWorker.trigger(resource)
    end
  end
end