@extends('dashboard.layout.app')

@section('content')
    <main class="content">
        <div class="container-fluid p-0">

            <h1 class="h3 mb-3">Halaman Sopir</h1>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">Sopir</h5>
                        </div>
                        <div class="card-body">
                            <table id="datatables-reponsive" class="table table-striped" style="width:100%">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Mobil</th>
                                    <th>Driver</th>
                                    <th>Start</th>
                                    <th>End</th>
                                    <th>BBM</th>
                                    <th>Service</th>
                                    <th>Riwayat</th>
                                    <th>Status</th>
                                    <th>Notes</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($pemesanans as $p)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{$p->car->name}}</td>
                                        <td>{{($p->driver) ? $p->driver->name : '-'}}</td>
                                        <td>{{ \Carbon\Carbon::parse($p->start_date)->locale('id')->isoFormat('D MMMM YYYY HH:mm') }}</td>
                                        <td>{{ \Carbon\Carbon::parse($p->end_date)->locale('id')->isoFormat('D MMMM YYYY HH:mm') }}</td>
                                        <td>{{ $p->bbm }}</td>
                                        <td>{{ $p->service }}</td>
                                        <td>{{ $p->riwayat }}</td>
                                        <td>{{ $p->status }}</td>
                                        <td>{{ $p->notes }}</td>
                                        <td>
                                            <a href="{{ route('admin.pemesanans.edit', $p->id) }}" class="btn btn-warning btn-sm">Edit</a> 
                                            <button class="btn btn-danger btn-sm delete" data-id="{{ $p->id }}">Hapus</button>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </main>
    <x-delete-modal />
@endsection
@section('script')
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Datatables Responsive
            $("#datatables-reponsive").DataTable({
                responsive: true
            });

            $(document).on('click', '.delete', function () {
                $('#exampleModal').modal('show')
                const id = $(this).attr('data-id');
                let url = `{{ route('admin.pemesanans.destroy', ':id') }}`.replace(':id', id);
                $('#deleteForm').attr('action', url);
            });
        });
    </script>
@endsection
