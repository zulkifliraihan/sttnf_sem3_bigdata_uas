<script>
    const tahunChart = $('#chart-tahun');

    const jumlahTransaksiByYear =  {{ Js::from($transaksiByYear['total']) }};
    const yearTransaksiByYear =  {{ Js::from($transaksiByYear['years']) }};

    let transaksiByYearDataset = {
        label: 'Total Transaksi',
        data: jumlahTransaksiByYear,
        backgroundColor: window.colors.solid.info,
    };

    new Chart(tahunChart, {
        type: 'line',
        data: {
            labels: yearTransaksiByYear,
            datasets: [transaksiByYearDataset]
        }
    });
</script>
