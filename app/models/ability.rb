class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    if user && user.role? == 'admin'
      can :manage, :all
    end

    if user && user.role? == 'moderator'
      can :access, :rails_admin
      can :dashboard
      can :manage, [
          TransmissionType,
          BodyType,
          ColorType,
          DriveType,
          MotorType,
          Order,
          Photo,
          Product,
          Basket,
          Manufacturer
      ]
    end
  end
end
