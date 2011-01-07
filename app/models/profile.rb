class Profile < ActiveRecord::Base  
  belongs_to :user

  def mks(nf)
    if nf.nil?
      return ""
    else
      return nf
    end
  end
  
  def full_name
    return mks(name) + " " + mks(surname)
  end
end
