@extends('dashboard.main')

@section('custom_css')
    <style>
        #chartdiv {
        width: 100%;
        height: 500px;
        }
    </style>
@endsection

@section('content')
    <!-- BEGIN: Content-->
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">
                <!-- Dashboard Ecommerce Starts -->
                <section id="dashboard-ecommerce">
                    <div class="row">

                        @include('dashboard.content.transaksi_provinsi.index')

                        @include('dashboard.content.transaksi_customers_gender.index')

                        @include('dashboard.content.transaksi_sales_gender.index')

                        @include('dashboard.content.transaksi_merk.index')

                        @include('dashboard.content.transaksi_tahun.index')

                    </div>

                </section>
                <!-- Dashboard Ecommerce ends -->

            </div>
        </div>
    </div>
    <!-- END: Content-->
@endsection

@section('custom_js')

    @include('dashboard.content.transaksi_provinsi.script')

    @include('dashboard.content.transaksi_customers_gender.script')

    @include('dashboard.content.transaksi_sales_gender.script')

    @include('dashboard.content.transaksi_merk.script')

    @include('dashboard.content.transaksi_tahun.script')
@endsection
