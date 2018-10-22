import Component from '@ember/component';

export default Component.extend({
  classNames: ['post-card'],
  showEditIcon: false,
  editMode: false,

  actions: {
    showEditIcon() {
      this.set('showEditIcon', true);
    },
    hideEditIcon() {
      this.set('showEditIcon', false);
    }
  }
});
