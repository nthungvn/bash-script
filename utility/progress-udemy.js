const checkboxesSelector =
  '.main-content-wrapper > .main-content .app--sidebar-column--2t0E8 section ul input[type="checkbox"';
let checkboxes = [];
let unFinishedLectures = [];

checkboxes = document.querySelectorAll(checkboxesSelector);
unFinishedLectures = [];
checkboxes.forEach((lecture) => {
  if (!lecture.checked) {
    unFinishedLectures.push(lecture);
  }
});
unFinishedLectures.forEach((item) => (item.disabled = false));
unFinishedLectures.forEach((item, index) =>
  setTimeout(() => {
    item.click();
  }, index * 50)
);
