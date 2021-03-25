class LRUCache
    def initialize(max_size)
        @max_size = max_size
        @cache = []
    end

    def count
      @cache.length
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el
        elsif count >= max_size
            @cache.shift
            @cache << el
        else
            @cache << el
        end
    end

    def show
      p @cache
      nil
    end

    private
    # helper methods go here!

  end