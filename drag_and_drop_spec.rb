require File.expand_path("../spec_helper", __FILE__)

describe "Element" do
  context "drag and drop" do
    before { browser.goto WatirSpec.url_for("drag_and_drop.html") }

    let(:draggable) { browser.div :id => "draggable" }
    let(:droppable) { browser.div :id => "droppable" }

    it "can drag and drop an element onto another" do
      droppable.text.should == 'Drop here'
      draggable.drag_and_drop_on droppable
      droppable.text.should == 'Dropped!'
    end

    it "can drag an element by the given offset" do
      droppable.text.should == 'Drop here'
      draggable.drag_and_drop_by 200, 50
      droppable.text.should == 'Dropped!'
    end
  end
end
