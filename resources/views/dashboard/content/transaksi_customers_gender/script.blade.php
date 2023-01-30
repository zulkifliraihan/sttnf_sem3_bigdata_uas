<script>
    const transaksiCustomerByGender = $('#chart-transaksi-customer-gender');

    const totalCustomerByGender =  {{ Js::from($transaksiCustomerByGender['total']) }};
    const genderCustomerByGender =  {{ Js::from($transaksiCustomerByGender['gender']) }};

    let transaksiCustomerByGenderDataSet = {
        label: 'Total Transaksi By Gender',
        data: totalCustomerByGender,
        backgroundColor: ['#28dac6', '#FDAC34'],
    };

    new Chart(transaksiCustomerByGender, {
        type: 'doughnut',
        data: {
            labels: genderCustomerByGender,
            datasets: [transaksiCustomerByGenderDataSet]
        }
    });
</script>
