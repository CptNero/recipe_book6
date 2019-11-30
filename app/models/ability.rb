# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :show, Recipe, public:true

      if user.present?
        can :manage, Recipe, user_id: user.id
        can :show, Recipe
        can :manage, Comment, user_id: user.id
        can :destroy, Comment, user_id: user.id
        can :create, Comment


      end
  end
end
