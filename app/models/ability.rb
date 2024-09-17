# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user (not logged in)

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      # Add other permissions based on user roles
    end
  end
end
