defaults =
  trigger: null
  

class Facelook
  Emotions = null
  constructor: (list = [])->
    Emotions = list
  # 将带有表情的HTML字符串中的表情转换为IMG标签
  convert: (htmlString = '')->
    return htmlString.replace /\[([^\]]+)\]/g, "<img src=\"/images/$1.gif\" title=\"$1\"/>"

$.fn.facelook = (options)->
  options = $.extend true, {}, defaults, options
  $(options.trigger).click (evt)->
    evt.preventDefault()
    # 显示表情框
    yes
  return new Facelook()