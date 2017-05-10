var bind_sortable = function() {
  $('.sortable').sortable({
    dropOnEmpty: true,
    stop: function(evt, ui) {
      var data = $(this).sortable('serialize', {attribute: 'data-sortable'});
      var callback_url = $(this).data('callback_url');
      $('#update_spinner').show();

      $.ajax({
        data: data,
        type: 'POST',
        dataType: 'script',
        url: callback_url,
        complete: function() { $('#update_spinner').hide(); },
        fail: function() { alert('Oups?'); }
      });
    }
  });

  $('.draggable').draggable({
    connectToSortable: '.sortable',
    helper: "clone",
    revert: "invalid"
  });
};
$(document).ready(function() {
  bind_sortable();
});
function changeVal(t) {
    $('input[type="hidden"]#' + t.id)[0].value = t.checked ? 1 : 0;
}