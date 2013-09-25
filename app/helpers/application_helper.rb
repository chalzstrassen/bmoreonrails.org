module ApplicationHelper
  # Returns true if the current request is made from a mobile browser
  def mobile?
    return @mobile if defined? @mobile
    @mobile = request.user_agent =~ /palm|blackberry|nokia|phone|midp|mobi|symbian|chtml|ericsson|minimo|audiovox|motorola|samsung|telit|upg1|windows ce|ucweb|astel|plucker|x320|x240|j2me|sgh|portable|sprint|docomo|kddi|softbank|android|mmp|pdxgw|netfront|xiino|vodafone|portalmmm|sagem|mot-|sie-|ipod|up\\.b|webos|amoi|novarra|cdm|alcatel|pocket|ipad|iphone|mobileexplorer|mobile/i
    @mobile = @mobile && request.user_agent !~ /iPad/
  end

  # Return a 'random' distribution of placeholder markers for member photos
  def random_pixel_set
    # Previously, we were looking at doing something like the following:
    #   ([0,0,0,0,0,1] + (Array.new(26) { Random.rand(-1..1).abs })).each_slice(9) do |pixes|
    #   pixel_sets += Array.new(3, [true, true, false])
    #   pixel_sets += Array.new(3, [true, true, true, false])
    #   pixel_sets += Array.new(3, [true, false])
    #   pixel_sets += Array.new(2, [true, false, false])
    #   pixel_sets = pixel_sets.shuffle.flatten.unshift(false, false, false, false, false)
    #
    # Even with that complicated mess, though, you still end up with
    # many uneven, suboptimal 'random' distributions of pixels/pictures.
    #
    # The consensus was to pre-bake a number of random-ish pixel/picture
    # layouts and provide one at random to the view.

    o = false
    x = true

    pixel_sets = [
      [ o, o, o, o, o, x, o, x, x,
        o, x, o, x, o, x, x, x, o,
        x, x, o, o, x, x, x, o, x,
        x, o, x, x, o ], # <= The last four slots of the last row are always blank

      [ o, o, o, o, o, x, x, o, x,
        x, o, o, x, o, x, x, x, o,
        o, x, o, o, x, x, x, o, x,
        o, x, o, x, x ],

      [ o, o, o, o, o, x, o, x, x,
        x, o, o, x, o, x, x, o, o,
        o, x, x, o, x, x, x, x, o,
        x, x, o, o, x ],

      [ o, o, o, o, o, x, o, x, x,
        o, o, x, x, o, x, x, o, x,
        x, x, o, x, x, o, x, o, o,
        o, x, o, x, o ],

      [ o, o, o, o, o, x, o, x, x,
        x, o, o, x, o, x, x, x, o,
        x, x, o, o, x, x, x, o, o,
        o, o, x, o, x ],
    ]

    pixel_sets.sample
  end
end
