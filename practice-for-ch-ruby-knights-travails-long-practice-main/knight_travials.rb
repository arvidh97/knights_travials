class KnightPathFinder

    def initialize(pos)
        @pos = pos 
        @considered_positions = []
    end

    def self.valid_moves(pos)
        row, col = pos
        all_moves = []

        if row - 2 > 0 && col + 1 < 7
            all_moves << [row - 2, col + 1]
        end
        if row - 1 > 0 && col + 2 < 7
            all_moves << [row -1, col + 2]
        end
        if row + 1 < 7 && col + 2 < 7
            all_moves << [row + 1, col + 2]
        end
        if row + 2 < 7 && col + 1 < 7
            all_moves << [row + 2, col +1]
        end
        if row + 2 < 7 && col - 1 > 0
            all_moves << [row + 2, col - 1]
        end
        if row + 1 < 7 && col - 2 > 0
            all_moves << [row + 1, col - 2]
        end
        if row - 1 > 0 && col - 2 > 0
            all_moves << [row - 1, col - 2]
        end
        if row - 2 > 0 && col - 1 > 0
            all_moves << [row - 2, col - 1]
        end
        all_moves

    end

    def build_move_tree

    end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves(pos).delete(@considered_positions)
    end


end
