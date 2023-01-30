<script>
    const transaksiSalesByGender = $('#chart-transaksi-sales-gender');

    const totalSalesByGender =  {{ Js::from($transaksiSalesByGender['total']) }};
    const genderSalesByGender =  {{ Js::from($transaksiSalesByGender['gender']) }};

    let transaksiSalesByGenderDataSet = {
        label: 'Total Sales By Gender',
        data: totalSalesByGender,
        backgroundColor: ['#28dac6', '#FDAC34'],
    };

    new Chart(transaksiSalesByGender, {
        type: 'doughnut',
        data: {
            labels: genderSalesByGender,
            datasets: [transaksiSalesByGenderDataSet]
        }
    });
</script>
