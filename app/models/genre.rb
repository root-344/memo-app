class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '料理' },
    { id: 3, name: 'プログラミング' },
    { id: 4, name: 'その他' }
    # { id: 5, name: '' },
    # { id: 6, name: '' },
    # { id: 7, name: '' }
  ]
  include ActiveHash::Associations
  has_many :posts
end
