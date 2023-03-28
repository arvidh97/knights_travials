require_relative "poly_tree.rb"

class KnightPathFinder

    def initialize(pos)
        @pos = pos 
        @considered_positions = [@pos]
    end

    def self.valid_moves(pos)
        row, col = pos
        all_moves = []

        constant_moves = [[-2, 1],[-1, 2],[-2,-1],[-1,-2],[1,2],[2,1],[1,-2],[2,-1]]
        constant_moves.each do |dist| 
            dx, dy = dist
            new_x = row + dx 
            new_y = col + dy 
            new_pos = [new_x, new_y]
            all_moves << new_pos if num_check(new_pos)
        end

        # if row - 2 > 0 && col + 1 < 7
        #     all_moves << [row - 2, col + 1]
        # end
        # if row - 1 > 0 && col + 2 < 7
        #     all_moves << [row -1, col + 2]
        # end
        # if row + 1 < 7 && col + 2 < 7
        #     all_moves << [row + 1, col + 2]
        # end
        # if row + 2 < 7 && col + 1 < 7
        #     all_moves << [row + 2, col +1]
        # end
        # if row + 2 < 7 && col - 1 > 0
        #     all_moves << [row + 2, col - 1]
        # end
        # if row + 1 < 7 && col - 2 > 0
        #     all_moves << [row + 1, col - 2]
        # end
        # if row - 1 > 0 && col - 2 > 0
        #     all_moves << [row - 1, col - 2]
        # end
        # if row - 2 > 0 && col - 1 > 0
        #     all_moves << [row - 2, col - 1]
        # end
        # all_moves
    end

    def num_check(new_pos)
        row, col = new_pos
        if row >= 0 && row  <= 7 && col >= 0 && col <= 7
            return true
        else 
            false
        end
    end

    def build_move_tree
        start_pos = PolyTreeNode.new.root_node
        arr = KnightPathFinder.valid_moves(start_pos)

        while !arr.empty?  
            start_pos = arr.shift 
            arr += new_move_positions(start_pos)
        end

    end

    def new_move_positions(pos)
        new_moves = KnightPathFinder.valid_moves(pos).select do |ele| 
            !@considered_positions.include?(ele)
        end
        @considered_positions << new_moves 
        return new_moves

        
    end



end
