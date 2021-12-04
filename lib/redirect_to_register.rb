class RedirectToRegister < Devise::FailureApp
  def route(scope)
    scope.to_sym == :user ? :register_path : super
  end
end