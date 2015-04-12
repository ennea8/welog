Template.welogPosts.helpers({
	name:'Posts',
	times: function () {
		var times = [];
		_(10).times(function(n){
			times.push(n);
		});
		return times;
	}
});
