# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :create, :read, :update, :destroy, :to => :crud

    return unless user.present?

      if user.has_role? :admin
        can :manage, :all
        can :crud, :all
      else
        can :read, :all
      end

  end
end
