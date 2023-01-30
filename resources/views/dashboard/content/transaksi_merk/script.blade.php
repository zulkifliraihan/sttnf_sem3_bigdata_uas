<script>
    const merkChart = $('#chart-merk');

    const jumlahTransaksiByMerk =  {{ Js::from($transaksiByMerk['total']) }};
    const nameTransaksiByMerk =  {{ Js::from($transaksiByMerk['names']) }};

    let transaksiByMerkDataset = {
        label: 'Total Transaksi',
        data: jumlahTransaksiByMerk,
        backgroundColor: window.colors.solid.info,
    };

    new Chart(merkChart, {
        type: 'horizontalBar',
        data: {
            labels: nameTransaksiByMerk,
            datasets: [transaksiByMerkDataset]
        }
    });
</script>
