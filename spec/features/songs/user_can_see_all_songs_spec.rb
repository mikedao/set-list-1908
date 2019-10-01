require 'rails_helper'

RSpec.describe "songs index page", type: :feature do
  it "can see all songs, titles, playcount, and length" do
    song_1 = Song.create(title:       "I Really Like You",
                         length:      208,
                         play_count:  987654)
    song_2 = Song.create(title: "Call Me Maybe",
                         length:      199,
                         play_count:  545467)

    visit "/songs"

    save_and_open_page

    expect(page).to have_content(song_1.title)
    expect(page).to have_content(song_1.length)
    expect(page).to have_content(song_1.play_count)
    expect(page).to have_content(song_2.title)
    expect(page).to have_content(song_2.length)
    expect(page).to have_content(song_2.play_count)
  end
end

