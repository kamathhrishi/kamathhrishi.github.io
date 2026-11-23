// Pagination for the /blog/ post list. Every post is in the HTML, tagged with
// data-page, and this shows only the page named by ?page=N. Without
// JavaScript all posts stay visible and the pager stays hidden.
(function () {
  var list = document.querySelector(".post-list");
  var pager = document.querySelector(".pager");
  if (!list || !pager) return;

  var pageLinks = pager.querySelectorAll(".pager-num");
  var pageCount = pageLinks.length;
  var current = parseInt(new URLSearchParams(window.location.search).get("page"), 10);
  if (!(current >= 1 && current <= pageCount)) current = 1;

  list.querySelectorAll(".post").forEach(function (post) {
    post.hidden = Number(post.getAttribute("data-page")) !== current;
  });

  var link = pageLinks[current - 1];
  link.classList.add("is-current");
  link.setAttribute("aria-current", "page");

  var prev = pager.querySelector(".pager-prev");
  var next = pager.querySelector(".pager-next");
  if (current > 1) prev.href = pageLinks[current - 2].href;
  else prev.hidden = true;
  if (current < pageCount) next.href = pageLinks[current].href;
  else next.hidden = true;

  pager.hidden = false;
})();
