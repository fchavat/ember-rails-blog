import DS from 'ember-data';

export default DS.Model.extend({
  username: DS.attr('string'),
  email: DS.attr('string'),
  password: DS.attr('string'),
  posts: DS.hasMany('post'),
  following: DS.hasMany('user', { inverse: 'followers' }),
  followers: DS.hasMany('user', { inverse: 'following' })
});
