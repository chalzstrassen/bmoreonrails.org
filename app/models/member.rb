require 'hashie'

class Member

  def self.list
    MEMBER_CONFIG.map { |a|
      Hashie::Mash.new(:name =>        a['name'],
                       :github_name => a['github_name'],
                       :twitter =>     a['twitter'],
                       :avatar_file => a['avatar_file'])
    }
  end
end
