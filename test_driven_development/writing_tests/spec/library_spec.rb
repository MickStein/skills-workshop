require "library"
describe Library do
  it 'can find a specific book' do
    library_items = Library.new

    library_items.find_book('POODR')

    expect(library_items.find_book('POODR')).to eq({title: 'POODR', author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can add a new book' do
  end

  it 'can remove a book' do
  end

  it 'can list all the books on a specific subject' do
  end
end
