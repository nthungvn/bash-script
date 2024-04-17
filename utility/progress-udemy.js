let checkboxes = [];
let unFinishedLectures = [];
let finishLectures = [];

checkboxes = document.querySelectorAll('.ud-main-content-wrapper > .ud-main-content .app--column-container--42JNg section ul input[type="checkbox"');

// // Check Done
// unFinishedLectures = [];
// checkboxes.forEach((lecture) => {
//   if (!lecture.checked) {
//     unFinishedLectures.push(lecture);
//   }
// });
// unFinishedLectures.forEach((item) => {
//   item.parentElement.classList.remove('ud-toggle-input-disabled');
//   item.disabled = false;
// });
// unFinishedLectures.forEach((item, index) =>
//   setTimeout(() => {
//     item.click();
//   }, index * 50)
// );

// Check Un Done
finishLectures = [];
checkboxes.forEach((lecture) => {
  if (lecture.checked) {
    finishLectures.push(lecture);
  }
});
finishLectures.forEach((item) => {
  item.parentElement.classList.remove('ud-toggle-input-disabled');
  item.disabled = false;
});
finishLectures.forEach((item, index) =>
  setTimeout(() => {
    item.click();
  }, index * 50)
);