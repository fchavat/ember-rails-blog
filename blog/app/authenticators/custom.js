import $ from 'jquery';
import TokenAuthenticator from 'ember-simple-auth-token/authenticators/token';

export default TokenAuthenticator.extend({
    invalidate: function() {
    var self = this;

    return $.ajax({
      url: 'http://localhost:3000/logout',
      type: 'DELETE'
    }).then(function() {
      return self._super();
    });
  }
});
