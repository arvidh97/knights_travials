class KnightPathFinder

    def initialize(pos)
        @pos = pos 
        @considered_positions = []
    end

    def self.valid_moves(pos)

    end

    def build_move_tree

    end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves(pos).delete(@considered_positions)


end
