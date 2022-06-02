FactoryBot.define do
  factory :user do
    nickname                       {'test'}
    email                          {'test@example'}
    password                       {'000000'}
    password_confirmation          {'000000'}
    family_name                    {'苗字'}
    first_name                     {'名前'}
    family_name_kana               {'ミョウジ'}
    first_name_kana                {'ナマエ'}
    birthday                       {'2000-01-01'}     
  end
end