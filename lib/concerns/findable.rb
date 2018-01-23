module Findable
  def find_by_name(name)
    self.all.find do |inst|
      inst.name == name
    end
  end
end
