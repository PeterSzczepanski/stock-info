import Ember from "ember";

export default Ember.Controller.extend({
  actions: {
    event: function() {
      this.set('model', this.store.query('stock', { name: this.get('name') } )
      );
    }
  }
});