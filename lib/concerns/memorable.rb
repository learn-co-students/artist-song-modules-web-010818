module Memorable
  module ClassMethods
    @@all = []

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

    def all
      @@all
    end
  end

  module InstanceMethods
    @@all = []

    def initialize
      self.class.all << self
    end

    def all
      @@all
    end

  end
end
