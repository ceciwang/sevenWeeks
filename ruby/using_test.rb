load 'using.rb'
require 'test/unit'

class TestUsing < Test::Unit::TestCase
  class Resource
    def dispose
      @dispose = true
    end

    def disposed?
      @dispose
    end
  end
  
    def test_disposes_of_resource
      r = Resource.new
      using(r){}
      assert r.disposed?
    end

    def test_disposes_of_resources_incase_of_exception
      r = Resource.new
      assert_raises(Exception){
        using(r){
          raise Exception
        }
      }
      assert r.disposed?
    end
end
