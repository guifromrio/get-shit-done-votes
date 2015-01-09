_ = require 'underscore'
votes =
  breno: [3, 6, 18, 31, 34, 50, 58, 63, 67, 78, 84, 86, 91, 97, 128, 164]
  afonso: [3, 6, 7, 11, 22, 23, 28, 41, 51, 57, 74, 79, 82, 85, 90, 92, 97, 116, 118, 129, 155, 167, 172]
  vitor: [5, 17, 21, 28, 31, 42, 51, 61, 65, 67, 69, 79, 84, 90, 126, 128, 133, 143, 166, 167, 173]
  augusto: [5, 9, 10, 12, 13, 14, 16, 23, 30, 34, 38, 54, 57, 58, 65, 79, 86, 97, 108, 109, 118, 141, 147]
  guilherme: [3, 4, 10, 11, 14, 18, 22, 23, 30, 35, 50, 51, 61, 65, 70, 72, 75, 76, 77, 79, 82, 86, 97, 101, 112, 113, 115, 116, 118, 122, 133, 147, 153, 164, 169, 170]

aggregate = []

for k, v of votes
  aggregate = aggregate.concat v

countMap = _.countBy aggregate, _.identity
array = _.chain(countMap).map((v, k) -> {phrase: k, votes: v}).sortBy('votes').reverse().value()
console.log array
