import Controller from '@ember/controller';

export default Controller.extend({
  model() {
    return this.store.queryRecord('user', { me: true, include: ['following', 'followers'] })
  }
});
