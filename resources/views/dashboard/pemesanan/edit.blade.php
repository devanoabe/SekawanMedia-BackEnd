@extends('dashboard.layout.app') @section('content')
<main class="content">
    <div class="container-fluid p-0">
        <h1 class="h3 mb-3">Halaman Pemesanan</h1>

        <div class="row">
            <div class="col-12">
                @if($errors->any())
                <x-errors-component />
                @endif
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Edit Pemesanan</h5>
                    </div>
                    <div class="card-body">
                        <form id="form" action="{{ route('admin.pemesanans.update', $pemesanan->id) }}" method="POST" enctype="multipart/form-data">
                            @method('PATCH') @csrf
                            <div class="row">
                        
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Start</label>
                                    <input type="date" value="{{ $pemesanan->start_date }}" name="start_date" class="form-control" />
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">End</label>
                                    <input type="date" value="{{ $pemesanan->end_date }}" name="end_date" class="form-control" />
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">BBM</label>
                                    <input type="number" min="0" class="form-control" name="bbm" value="{{ $pemesanan->bbm }}" placeholder="2">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Service</label>
                                    <input type="date" value="{{ $pemesanan->service }}" name="service" class="form-control" />
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Riwayat</label>
                                    <input type="text" class="form-control" name="riwayat" value="{{ $pemesanan->riwayat }}" placeholder="Bagus">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <label class="form-label">Notes</label>
                                    <textarea type="text" rows="4" cols="4" class="form-control" name="notes" value="{{ $pemesanan->notes }}"></textarea>
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


    });
</script>
@endsection