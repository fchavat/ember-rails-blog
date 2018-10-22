import EmberRouter from '@ember/routing/router';
import config from './config/environment';

const Router = EmberRouter.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('posts');
  this.route('login');
  this.route('register');
  this.route('post', { path: '/post/:post_id' });
  this.route('user', { path: '/user/:user_id' });
  this.route('profile');
});

export default Router;
