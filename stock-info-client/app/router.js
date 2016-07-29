import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('stocks', { path: '/' }, function() {
    this.route('stock', { path: '/:symbol' });
  });
});

export default Router;
