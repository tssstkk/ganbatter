import $ from 'jquery'

$(function(){
  $(document).on('click', '.show-comment-form', function(){
    $(this).parents('.comment-card').toggleClass('is-open')
  });
});
