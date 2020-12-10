class BricksController < ApplicationController

    def create
        @bricks = []
        binding.pry
        params['bricks'].each do |brick|
            binding.pry
            new_brick = Brick.create(level_id: brick[:level_id], x: brick[:x], y: brick[:y], status: brick[:status])
            @bricks << new_brick
        end
        if new_brick.save
            render json: @bricks, status: :created, location: @bricks
          else
            render json: new_brick.errors, status: :unprocessable_entity
          end
    end


    private

    # def brick_params
    #     params.require(:bricks)
    # end
end