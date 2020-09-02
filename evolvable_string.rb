require 'bundler/setup'
require 'evolvable'
require './char_gene'

class EvolvableString
  include Evolvable

  class << self
    attr_reader :input_string

    def evolve(string, say = 0)
      @input_string = string
      @say ||= say.to_i
      population = new_population(size: 100)
      population.evaluator = Evolvable::Evaluator.new(equalize: input_string.length)
      population.mutation = Evolvable::Mutation.new(probability: 0.8)
      population.evolve
    end

    def evolvable_genes
      { char_genes: { count: input_string.length, class: CharGene } }
    end

    def evolvable_before_evolve(population)
      best_instance = population.best_instance
      puts "#{best_instance} | Generation #{population.evolutions_count}"
      say_string(best_instance) if say_string?(population)
    end

    def say_string(best_instance)
      system("say '#{best_instance}'")
    end

    def say_string?(population)
      @say.positive? && ((population.evolutions_count % @say).zero? || population.met_goal?)
    end
  end

  def evolvable_value
    @evolvable_value ||= compute_evolvable_value
  end

  def to_s
    @to_s ||= find_genes(:char_genes).join
  end

  private

  def compute_evolvable_value
    value = 0
    find_genes(:char_genes).each_with_index do |gene, index|
      value += 1 if gene.to_s == self.class.input_string[index]
    end
    value
  end
end
