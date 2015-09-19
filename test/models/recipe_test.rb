require "test_helper"
class RecipeTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.new(chefname: "Bhabesh", email: "bhabesh@gmail.com")
    @recipe = @chef.recipes.build(name:"panner",summary:"this is best recipe i ever ate",description:"hi hi isdhg gsd g gsdg  gsd  jhdgs  gsgd  jag dsjj jgsdj jadgjj  jajdsg hjasdg j jagd  jag dj")
  end
  test "Recipe should be valid" do
    assert @recipe.valid?
  end
  test "Name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
  test "name length should not be too  long" do
    @recipe.name = "a" * 151
    assert_not @recipe.valid?
  end
  test "name length should not be too  short" do
    @recipe.name = "a" * 4
    assert_not @recipe.valid?
  end
  test "Summary should be present" do
    @recipe.summary = " "
    assert_not @recipe.valid?
  end
  test "Chef id should be present" do
    @recipe.chef_id = nil
    assert_not @recipe.valid?
  end
   test "Summary length should not be too  long" do
    @recipe.summary = "a" * 151
    assert_not @recipe.valid?
  end
  test "Summary length should not be too  short" do
    @recipe.summary = "a" * 9
    assert_not @recipe.valid?
  end
    test "description should be present" do
    @recipe.description = " "
    assert_not @recipe.valid?
  end
   test "description length should not be too  long" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end
  test "description length should not be too  short" do
    @recipe.description = "a" * 19
    assert_not @recipe.valid?
  end
end