FactoryBot.define do
  factory :user do
    nickname                       {'test'}
    email                          {'test@example'}
    password                       {'aaa111'}
    password_confirmation          {'aaa111'}
    family_name                    {'田中'}
    first_name                     {'太郎'}
    family_name_kana               {'タナカ'}
    first_name_kana                {'タロウ'}
    birthday                       {'2000-01-01'}     
  end
end