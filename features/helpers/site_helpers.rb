module SiteHelpers
  def home
    @home ||= Panel::HomeSite.new
  end

  def customer
    @customer ||= Panel::CreateCustomer.new
  end
end
