require 'spec_helper'

describe "Links" do

    subject { page }

    describe "index page" do
        before { visit links_path }
        it { should have_selector('th', text: 'Name') }
    end

    describe "new page" do
        before { visit new_link_path }
        it { should have_selector('h1', text: 'Enter') }
    end

    describe "edit page" do
        let(:link) { FactoryGirl.create(:link) }
        before { visit edit_link_path(link) }
        it { should have_selector('h1', text: 'link') }
    end

    describe "show page" do
        let(:link) { FactoryGirl.create(:link) }
        before { visit link_path(link) }
        it { should have_selector('b', text: 'Link:') }
    end
end
