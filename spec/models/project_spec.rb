require 'rails_helper'

RSpec.describe Project, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'should be an instance of Project' do
    @project = Project.new
    expect(@project).to be_a Project
  end
end
