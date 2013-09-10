# Load in the members from the members.yml file
MEMBER_CONFIG = YAML.load(File.read(File.expand_path('../../members.yml', __FILE__)))
MEMBER_CONFIG.merge! MEMBER_CONFIG.fetch(Rails.env, {})
MEMBER_CONFIG.symbolize_keys!

MEMBER_LIST = []
MEMBER_CONFIG.each do |m|
  MEMBER_LIST << m[1]
end
