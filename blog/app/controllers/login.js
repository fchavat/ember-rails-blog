import Controller from '@ember/controller';
import { inject } from '@ember/service';

export default Controller.extend({
  session: inject('session'),
  flashMessages: inject(),
  actions: {
    authenticate() {
      const credentials = { user: this.getProperties('username', 'password') };
      const authenticator = 'authenticator:token';

      this.get('session').authenticate(authenticator, credentials)
        .catch(error =>{
          this.flashMessages.danger(error.json.error);
        });
    }
  }
});
