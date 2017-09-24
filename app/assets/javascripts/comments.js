function commentReplyFunction() {
  const commentReplies = document.querySelectorAll('.reply');
  console.log(commentReplies);
  function commentReplyExpand(event) {
    const expandSelector = ".expandme[data-commentid='" + this.dataset.commentid + "']";
    console.log(expandSelector);
    const expandSection = document.querySelector(expandSelector);
    if (expandSection.classList.contains('hidden')) {
      expandSection.classList.remove('hidden');
    } else {
      expandSection.classList.add('hidden');
    }
    console.log(expandSection);
  }
  commentReplies.forEach(commentReply => commentReply.addEventListener('click', commentReplyExpand));
}
document.addEventListener('DOMContentLoaded', commentReplyFunction);