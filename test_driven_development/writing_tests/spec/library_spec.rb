require "library"

describe Library do
  it 'can find a specific book' do
    library_items = Library.new

    library_items.find_book('POODR')

    expect(library_items.find_book('POODR')).to eq({title: 'POODR', author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can add a new book' do
    library_items = Library.new

    library_items.add_book({title: 'Fire Storm', author: 'Bill Tablot', subject: 'Fantasy'})

    expect(library_items.add_book({title: 'Fire Storm', author: 'Bill Tablot', subject: 'Fantasy'}).to eq([
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
      {title: 'Fire Storm', author: 'Bill Tablot', subject: 'Fantasy'}
    ])
  end

  it 'can remove a book' do
  end

  it 'can list all the books on a specific subject' do
  end
end
