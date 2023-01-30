<script>
    const provinsiChart = $('#chart-provinsi');

    const jumlahProvinsi =  {{ Js::from($provinsi['total']) }};
    const nameProvinsi =  {{ Js::from($provinsi['names']) }};

    let provinsiDataset = {
        label: 'Total Transaksi',
        data: jumlahProvinsi,
        backgroundColor: window.colors.solid.info,
    };

    new Chart(provinsiChart, {
        type: 'bar',
        data: {
            labels: nameProvinsi,
            datasets: [provinsiDataset]
        }
    });
</script>
