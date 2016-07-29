import DS from 'ember-data';

export default DS.Model.extend({
  date:    DS.attr('string'),
  high:    DS.attr('number'),
  low:     DS.attr('number'),
  open:    DS.attr('number'),
  close:   DS.attr('number'),
  average: DS.attr('number'),
});
