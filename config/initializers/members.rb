# Load in the members from the members.yml file
MEMBER_CONFIG = YAML.load(File.read(File.expand_path('../../members.yml', __FILE__)))
