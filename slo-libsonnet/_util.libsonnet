{
  selectorsToLabels(labelset):: {
    [s[0]]: std.strReplace(std.strReplace(s[1], '"', ''), '~', '')
    for s in [
      std.split(std.strReplace(s, '!~', '='), '=')
      for s in labelset
    ]
  },
}
