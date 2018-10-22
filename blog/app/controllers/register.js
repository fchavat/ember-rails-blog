import Controller from '@ember/controller';
import { inject } from '@ember/service';

export default Controller.extend({
  session: inject('session'),
  flashMessages: inject(),

  actions: {
    register() {
      this.flashMessages.clearMessages();
      let user = this.model;
      user.save().catch((error) => {
        let errors = error.errors.map(error => error.detail);
        this.flashMessages.danger(errors, {
          timeout: 10000,
        });
      })
      .then(() => {
        let credentials = { user: user.getProperties('username', 'password') };
        this.get('session').authenticate("authenticator:custom", credentials).catch(error =>{
          this.flashMessages.danger(error.json.error);
        });
      });
    }
  }
});
