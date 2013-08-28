require 'hashie'

class Member
  def self.list
    [
      ['Jonathan Julian',     'jjulian',        'jonathanjulian', 'highres_63361972.jpeg'],
      ['Ed Schmalzle',        'nerdEd',         'nerded',         'highres_142603252.jpeg'],
      ['Chris Strom',         'eee-c',          'eee_c',          'highres_15379281.jpeg'],
      ['Paul Barry',          'pjb3',           'pjb3',           'highres_10191791.jpeg'],
      ['Nicholas A. Evans',   'nevans',         'nick_evans',     'highres_12726567.jpeg'],
      ['Mike Subelsky',       'subelsky',       'subelsky',       'highres_10332827.jpeg'],
      ['Doug Price',          'solipet',        'solipet',        'highres_131273832.jpeg'],
      ['David Raynes',        'rayners',        'rayners',        'highres_2808061.jpeg'],
      ['Jason Denney',        '',               'denneyjason',    'highres_5906224.jpeg'],
      ['Greg Gershman',       '',               'greggersh',      'highres_7197148.jpeg'],
      ['Tom von Schwerdtner', '',               'tvon',           'highres_8018692.jpeg'],
      ['Flip Sasser',         'flipsasser',     'flipsasser',     'highres_9537221.jpeg'],
      ['Matt Menefee',        '',               '',               'highres_10107737.jpeg'],
      ['Gary Moore',          '',               'gsmoore',        'highres_10120518.jpeg'],
      ['Ryan Ahearn',         '',               'rcahearn',       'highres_11379776.jpeg'],
      ['Eric Oestrich',       'oestrich',       'ericoestrich',   'highres_11399610.jpeg'],
      ['Brian Sierakowski',   'BSierakowski',   'bsierakowski',   'highres_12123158.jpeg'],
      ['Ali Ibrahim',         '',               'alimeye',        'highres_17464371.jpeg'],
      ['Kate Bladow',         'kbladow',        'kbladow',        'highres_60084462.jpeg'],
      ['Jared Koumentis',     '',               'ShepBook',       'highres_61932272.jpeg'],
      ['Scott Steele',        'scooter-dangle', '',               'highres_100154322.jpeg'],
      ['Dan Martens',         '',               'danmartens',     'highres_108106642.jpeg'],
      ['Avdi Grimm',          '',               'avdi',           'member_57932012.jpeg'],
      ['Chase Gilliam',       '',               '',               'member_127440262.jpeg'],
      ['Josh Hepworth',       '',               'josh_hepworth',  'member_21723331.jpeg'],
    ].map { |a| Hashie::Mash.new(:name => a[0], :github_name => a[1], :twitter => a[2], :avatar_url => a[3]) }
  end
end
