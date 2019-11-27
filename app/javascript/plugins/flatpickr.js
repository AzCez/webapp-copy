import flatpickr from "flatpickr"
// default theme below
import 'flatpickr/dist/flatpickr.min.css'
// import 'flatpickr/dist/themes/airbnb.css'
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr("#start_date", {
  // altInput: true,
  minDate: "today",
    dateFormat: "d-m-Y",



  "plugins": [new rangePlugin({ input: "#end_date"})],


});





// // Range in one field ONLY
// flatpickr("#datepicker", {
//   altInput: true,
//   mode: "range",
//     minDate: "today",
//     // dateFormat: "Y-m-d"
//     dateFormat: "d-m-Y"

// });
