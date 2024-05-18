<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Tamer</title>
    <?php include 'session.php'?>
    <?php include 'header_links.php'?>
</head>
<body>
    <div class="container">
        <!-- <div id="loader" style="height: 100%; width: 100%; display: flex" class="justify-content-center align-items-center">
            <svg class="pl" width="240" height="240" viewBox="0 0 240 240">
                <circle class="pl__ring pl__ring--a" cx="120" cy="120" r="105" fill="none" stroke="#000" stroke-width="20" stroke-dasharray="0 660" stroke-dashoffset="-330" stroke-linecap="round"></circle>
                <circle class="pl__ring pl__ring--b" cx="120" cy="120" r="35" fill="none" stroke="#000" stroke-width="20" stroke-dasharray="0 220" stroke-dashoffset="-110" stroke-linecap="round"></circle>
                <circle class="pl__ring pl__ring--c" cx="85" cy="120" r="70" fill="none" stroke="#000" stroke-width="20" stroke-dasharray="0 440" stroke-linecap="round"></circle>
                <circle class="pl__ring pl__ring--d" cx="155" cy="120" r="70" fill="none" stroke="#000" stroke-width="20" stroke-dasharray="0 440" stroke-linecap="round"></circle>
            </svg>
        </div> -->

        <div class="row">
            <div class="col-12 col-md-2 navs">
                <?php include 'navbar.php'?>
            </div>
            <div class="col-12 col-md-10 p-5">
            <div class="row">
                <div class="col-12 col-md-6 generate">
                    <div class="shadow border mt-4 rounded rounded-4 p-4 pt-5" style="height: auto">
                        <h5 class="fw-bolder mb-3">Generate Ticket</h5>
                        <p>Plate No.</p>
                        <input id="plate_no" class="form-control mb-3" type="text" placeholder="Enter plate no.">
                        <p>Time-In</p>
                        <input id="timeIn" class="form-control mb-3" type="datetime-local" readonly>
                        <p>Time-Out</p>
                        <input id="timeOut" class="form-control mb-3" type="datetime-local">
                        <p>Select Parking Type</p>
                        <select name="vehicle" id="vehicle" class="form-control">
                        </select>

                        <button disabled id="generateBtn" class="btn btn-danger w-100 mt-3">Generate</button>
                        <a  href="generate_ticket" onclick="reset()" class="btn border-danger text-danger w-100 mt-3" disabled>Reset</a>
                        <button id="print" class="btn w-100 border-danger text-danger mt-3 mb-4" style="display: none">Print</button>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="row">
                        <div class="shadow border mt-4 summary rounded rounded-4 p-4 pt-5" style="height: auto">
                            <h5 class="fw-bolder ms-3">Summary</h5>
                            <h1 class="ms-3" id="total_amount">PHP 0.00</h1>
                            <p class="ms-3" id="details">Number of Hours: 0 Rate: 0.00</p>
                            
                        </div>
                        <div id="ticket">

                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <?php include 'footer_links.php'?>
    <script>
        document.getElementById("print").addEventListener("click", function() {
            window.print();
        });
    </script>
</body>
</html>
