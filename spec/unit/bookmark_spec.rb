require './app/models/bookmark'

describe Bookmark do
  describe '.all'do
  it ' returns an array of bookmarks' do
connection = PG.connect :dbname => 'demo_bookmark_manager_test'
connection.exec("INSERT INTO bookmarks (url) VALUES('test_url')")


    bookmarks = Bookmark.all

    expect(bookmarks.first.url).to eq 'test_url'
  end
end

   xdescribe '.create' do


     it ' returns a bookmark instance that is persisted' do

       Bookmark.create(url: 'test_url')
       bookmarks = Bookmark.all
       expect(bookmarks.first.url).to eq 'test_url'
     end
   end
end
