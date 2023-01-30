<div class="col-md-6">
    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-sm-center align-items-start flex-sm-row flex-column">
            <div class="header-left">
                <h4 class="card-title mb-50 mb-sm-0">Transaksi Customers By Gender</h4>
            </div>
        </div>
        <div class="card-body">
            <div id="perProvinsi"></div>
            <canvas id="chart-transaksi-customer-gender" class="doughnut-chart-ex chartjs" data-height="275"></canvas>
            @foreach ($transaksiCustomerByGender['alldata'] as $item)
                <div class="d-flex justify-content-between mt-3 mb-1">
                    <div class="d-flex align-items-center">
                        <span class="font-weight-bold ml-75 mr-25">{{ $item->name }}</span>
                    </div>
                    <div>
                        <span>{{ $item->total }}</span>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

