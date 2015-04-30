`import DS from 'ember-data'`

ApplicationSerializer = DS.JSONSerializer.extend
  keyForRelationship: (rawKey, kind) ->
      key = Ember.String.decamelize rawKey
      switch kind
        when 'belongsTo' then "#{key}Id"
        else key

`export default ApplicationSerializer`
