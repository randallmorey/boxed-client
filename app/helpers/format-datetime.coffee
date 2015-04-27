`import Ember from 'ember'`

formatDatetime = (value) ->
  datetime = value?[0]
  moment(datetime).format 'lll'
FormatDatetimeHelper = Ember.HTMLBars.makeBoundHelper formatDatetime

`export { formatDatetime }`
`export default FormatDatetimeHelper`
