@extends('dashboard.layout.app') @section('content')
<main class="content">
    <div class="container-fluid p-0">
        <h1 class="h3 mb-3">Halaman Pesanan</h1>

        <div class="row">
            <div class="col-12">
                @if($errors->any())
                <x-errors-component />
                @endif
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Tambah Pesanan</h5>
                    </div>
                    <div class="card-body">
                        <form id="form" action="{{ route('admin.pemesanans.store') }}" method="POST" enctype="multipart/form-data">
                            @method('POST') @csrf
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="car_id" class="form-label">Pilih Mobil</label>
                                    <select class="form-control" name="car_id">
                                        @foreach ($cars as $car)
                                        <option value="{{ $car->id }}">{{ $car->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label for="driver_id" class="form-label">Pilih Sopir</label>
                                    <select class="form-control" name="driver_id">
                                        @foreach ($drivers as $driver)
                                        <option value="{{ $driver->id }}">{{ $driver->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">SIM</label>
                                    <input type="text" value="{{ old('driver_licence') }}" name="driver_licence" class="form-control" placeholder="1221-xxxx-xxxxxx" />
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <label class="form-label">Alamat</label>
                                    <textarea type="number" rows="4" cols="4" class="form-control" name="address" value="{{ old('chairs_ammount') }}" placeholder="Jl Pemuda No 28 A, Malang"></textarea>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">
                                Submit
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
@section('script')
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Select2
        $(".select2").each(function() {
            $(this)
                .wrap("<div class=\"position-relative\"></div>")
                .select2({
                    placeholder: "Select value",
                    dropdownParent: $(this).parent()
                });
        })

        loadProvince()

        function loadProvince() {
            $.ajax({
                method: 'GET',
                url: 'https://www.emsifa.com/api-wilayah-indonesia/api/provinces.json',
                dataType: 'JSON',
                success: function(provinces) {
                    let html = ''

                    provinces.map(province => {
                        html += `<option value="${province.id}">${province.name}</option>`
                    })

                    $('select[name="province_id"]').html(html)

                    $('select[name="province_id"]').trigger("change")
                }
            })
        }

        $('select[name="province_id"]').change(function() {
            $.ajax({
                method: 'GET',
                url: `https://www.emsifa.com/api-wilayah-indonesia/api/regencies/${$(this).val()}.json`,
                dataType: 'JSON',
                success: function(provinces) {
                    let html = ''

                    provinces.map(province => {
                        html += `<option value="${province.id}">${province.name}</option>`
                    })

                    $('select[name="regency_id"]').html(html)

                    $('select[name="regency_id"]').trigger("change")
                }
            })
        })

        $('select[name="regency_id"]').change(function() {
            $.ajax({
                method: 'GET',
                url: `https://www.emsifa.com/api-wilayah-indonesia/api/districts/${$(this).val()}.json`,
                dataType: 'JSON',
                success: function(provinces) {
                    let html = ''

                    provinces.map(province => {
                        html += `<option value="${province.id}">${province.name}</option>`
                    })

                    $('select[name="district_id"]').html(html)

                    $('select[name="district_id"]').trigger("change")
                }
            })
        })

        $('select[name="district_id"]').change(function() {
            $.ajax({
                method: 'GET',
                url: `https://www.emsifa.com/api-wilayah-indonesia/api/villages/${$(this).val()}.json`,
                dataType: 'JSON',
                success: function(provinces) {
                    let html = ''

                    provinces.map(province => {
                        html += `<option value="${province.id}">${province.name}</option>`
                    })

                    $('select[name="village_id"]').html(html)
                }
            })
        })
    });
</script>
@endsection