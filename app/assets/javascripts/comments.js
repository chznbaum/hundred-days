function commentReplyFunction() {
  const commentReplies = document.querySelectorAll('.reply');
  function commentReplyExpand(event) {
    const expandSelector = ".expandme[data-commentid='" + this.dataset.commentid + "']";
    const expandSection = document.querySelector(expandSelector);
    if (expandSection.classList.contains('hidden')) {
      expandSection.classList.remove('hidden');
    } else {
      expandSection.classList.add('hidden');
    }
  }
  commentReplies.forEach(function(commentReply){ commentReply.addEventListener('click', commentReplyExpand) });
}
document.addEventListener('DOMContentLoaded', commentReplyFunction);