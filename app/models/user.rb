class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, 
    with: PASSWORD_REGEX, 
    message: 'には英字と数字の両方を含めて設定してください'

  validates :family_name, presence: true, format: {
    with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,
  } 

  validates :first_name, presence: true, format: {
    with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,
  } 

  validates :family_name_kana, presence: true, format: {
    with: /\A[\p{katakana}\p{blank}ー－]+\z/,
  }

  validates :first_name_kana, presence: true, format: {
    with: /\A[\p{katakana}\p{blank}ー－]+\z/,
  }

  validates :birthday, presence: true

end
