class Sale < ActiveRecord::Base
  
  # Active Record Scope
  def self.active?
    where("sales.starts_on < ? AND sales.ends_on >= ?", Date.current, Date.current)
  end 
  
  def finished? 
    Date.current > ends_on
  end

  def pending? 
    Date.current < starts_on
  end

  def active? 
    !pending? && !finished?
  end
end
