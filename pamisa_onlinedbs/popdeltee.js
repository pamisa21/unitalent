<script>
function confirmDelete(userId) {
  var confirmMsg = "Are you sure you want to delete this user?";
  if (confirm(confirmMsg)) {
    window.location.href = "delUser.asp?id=" + userId;
  }
}
</script>
