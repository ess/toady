require 'spec_helper'
require 'toady'

describe Toady do
  let(:klass) {Toady}
  let(:instance) {klass.new}

  context 'class level' do
    it 'responds to any method' do
      [:any_given_method, :even_with_a_bang!, :or_with_a_?].each do |meth|
        expect(klass.respond_to?(meth)).to eql(true)
      end
    end

    it 'returns the method and its arguments as an array for unknown methods' do
      expect(klass.methods).not_to include(:my_sausages)
      expect(klass.my_sausages(:turned_to, 'gold')).
        to eql([:my_sausages, :turned_to, 'gold'])
    end
  end

  context 'instance level' do
    it 'responds to any method' do
      [:any_given_method, :even_with_a_bang!, :or_with_a_?].each do |meth|
        expect(instance.respond_to?(meth)).to eql(true)
      end
    end

    it 'returns the method and its arguments as an array for unknown methods' do
      expect(instance.instance_methods).not_to include(:my_sausages)
      expect(instance.my_sausages(:turned_to, 'gold')).
        to eql([:my_sausages, :turned_to, 'gold'])
    end

  end
end
