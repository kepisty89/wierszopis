class Profile < ActiveRecord::Base  
  belongs_to :user

  def full_name
    if name
      if surname
        return name + " " + surname
      else
        return name
      end
    else
      if surname
        return surname
      else
        return " "
      end
    end
  end
end
