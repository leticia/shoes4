class Shoes
  class Dimensions
    attr_accessor :left, :top, :width, :height

    def initialize(left = 0, top = 0, width = 0, height = 0)
      if hash_as_argument?(left)
        init_with_hash(left)
      else
        init_with_arguments(left, top, width, height)
      end

    end

    private
    def hash_as_argument?(left)
      left.respond_to? :fetch
    end

    def init_with_hash(dimensions_hash)
      @left   = dimensions_hash.fetch(:left, 0)
      @top    = dimensions_hash.fetch(:top, 0)
      @width  = dimensions_hash.fetch(:width, 0)
      @height = dimensions_hash.fetch(:height, 0)
    end

    def init_with_arguments(left, top, width, height)
      @left   = left
      @top    = top
      @width  = width
      @height = height
    end

  end
end