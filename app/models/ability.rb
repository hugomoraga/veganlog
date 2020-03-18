# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

      if user.has_role? :admin
        can :manage, :all
      else
        can :read, :all
      end

  end
end
