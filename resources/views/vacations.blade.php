<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __("Dashboard") }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-5">
                <h1>Vacations</h1>
                <form action="submit-vacation" class="mt-3 border p-5">
                    <div class="mb-3">
                        <label for="leave_type" class="form-label"
                            >Leave Type - نوع الإجازة</label
                        >
                        <select
                            name="reason"
                            id="reason"
                            class="form-control form-control-lg"
                            required
                        >
                            <option value="sick">
                                Sick Leave - إجازة مرضية
                            </option>
                            <option value="annual">
                                Annual Vacation - إجازة سنوية
                            </option>
                            <option value="casual">
                                Casual Leave - إجازة أعتيادية
                            </option>
                            <option value="haij">
                                Haij Leave - إجازة الحج
                            </option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="leave_type" class="form-label"
                            >Vacation Dates - موعد بدء و نهاية الإجازة</label
                        >
                        <input
                            type="text"
                            id="vacation_dates"
                            name="vacation_dates"
                            class="form-control form-control-lg"
                            required
                        />
                    </div>

                    <div class="mb-3">
                        <label for="leave_type" class="form-label"
                            >معلومات \ ملحوظات إخرى - More Info</label
                        >
                        <textarea
                            name="more_info"
                            id="more_info"
                            cols="30"
                            rows="10"
                            class="form-control form-control-lg"
                            placeholder="معلومات \ ملحوظات إخرى - More Info"
                        ></textarea>
                    </div>

                    <div>
                        <button class="mt-5 btn btn-lg btn-dark col-12">
                            Submit
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        $(function () {
            $("#vacation_dates").daterangepicker(
                {
                    opens: "right",
                    start: moment(),
                    end: moment().add(2, "days"),
                    minDate: moment().subtract(1, "days"),
                    alwaysShowCalendars: true,
                    maxSpan: {
                        days: 31,
                    },
                    locale: {
                        format: "DD MMM YYYY",
                    },
                    ranges: {
                        أمس: [
                            moment().subtract(1, "days"),
                            moment().subtract(1, "days"),
                        ],
                        اليوم: [moment(), moment()],
                        غدا: [moment().add(1, "days"), moment().add(1, "days")],
                        "هذا الشهر": [
                            moment().startOf("month"),
                            moment().endOf("month"),
                        ],
                        "الشهر القادم": [
                            moment().add(1, "month").startOf("month"),
                            moment().add(1, "month").endOf("month"),
                        ],
                        "عيد الفطر": [
                            moment("2021-05-12", "YYYY-MM-DD"),
                            moment("2021-05-15", "YYYY-MM-DD"),
                        ],
                        "وقفة عرفة": [
                            moment("2021-07-19", "YYYY-MM-DD"),
                            moment("2021-07-19", "YYYY-MM-DD"),
                        ],
                        "عيد الأضحى": [
                            moment("2021-07-20", "YYYY-MM-DD"),
                            moment("2021-07-22", "YYYY-MM-DD"),
                        ],
                        "اليوم الوطني السعودي	": [
                            moment("2021-09-23", "YYYY-MM-DD"),
                            moment("2021-09-23", "YYYY-MM-DD"),
                        ],
                    },
                },
                function (start, end, label) {
                    console.log(
                        "A new date selection was made: " +
                            start.format("YYYY-MM-DD") +
                            " to " +
                            end.format("YYYY-MM-DD")
                    );
                }
            );
        });
    </script>
</x-app-layout>
