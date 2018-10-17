import Controller from '@ember/controller';
import { inject } from '@ember/service';

export default Controller.extend({
  session: inject('session'),
  flashMessages: inject(),

  actions: {
    register() {
      this.flashMessages.clearMessages();
      this.model.save().catch((error) => {
        let errors = error.errors.map(error => error.detail);
        this.flashMessages.danger(errors, {
          timeout: 10000,
        });
      });
    }
  }
});
