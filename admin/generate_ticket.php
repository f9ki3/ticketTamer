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
            <div class="col-12 col-md-2">
                <?php include 'navbar.php'?>
            </div>
            <div class="col-12 col-md-10 p-5">
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="shadow border mt-4 rounded rounded-4 p-4 pt-5" style="height: auto">
                        <h5 class="fw-bolder mb-3">Generate Ticket</h5>
                        <p>Time-In</p>
                        <input id="timeIn" class="form-control mb-3" type="datetime-local">
                        <p>Time-Out</p>
                        <input id="timeOut" class="form-control mb-3" type="datetime-local">
                        <p>Select Parking Type</p>
                        <select name="" id="" class="form-control">
                            <option value="">Motorcycle</option>
                            <option value="">Tricycle</option>
                            <option value="">Van</option>
                            <option value="">Sedan</option>
                            <option value="">Pickup</option>
                        </select>
                        <button class="btn btn-danger w-100 mt-3" disabled>Generate</button>
                        <button class="btn border-danger text-danger w-100 mt-3 mb-4" disabled>Reset</button>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="row">
                        <div class="shadow border mt-4 rounded rounded-4 p-4 pt-5" style="height: auto">
                            <h5 class="fw-bolder ms-3">Summary</h5>
                            <h1 class="ms-3">PHP 1,000.00</h1>
                            
                        </div>
                        <div class="shadow border mt-4 rounded rounded-4 p-4 pt-5" style="height: auto">
                        <h5 class="fw-bolder ms-3">Ticket</h5>
                        
                    </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <?php include 'footer_links.php'?>
</body>
</html>
