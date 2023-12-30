<?php

namespace App\Http\Controllers\Dashboard;

use App\Exports\PemesananDataExport;
use App\Http\Controllers\Controller;
use App\Models\Pemesanan;
use App\Models\Car;
use App\Models\Driver;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Maatwebsite\Excel\Facades\Excel;

class RentalController extends Controller
{
    public function index(): View
    {
        $data = [
            'pemesanans' => Pemesanan::all(),
        ];
        return view('dashboard.pemesanan.index', $data);
    }

    public function create(): View
    {
        $cars = Car::all();
        $drivers = Driver::all();
        $pemesanans = Pemesanan::all();

        return view('dashboard.pemesanan.create', compact('cars', 'drivers', 'pemesanans'));
    }


    public function store(Request $request)
    {
        $data = $request->all();

        Pemesanan::create($data);

        return redirect()->route('admin.pemesanans.index')->with('success', 'Berhasil menambahkan pemesanan !');
    }


    public function edit(Pemesanan $pemesanan)
    {
        return view('dashboard.pemesanan.edit', compact('pemesanan'));
    }

    public function update(Request $request, Pemesanan $pemesanan)
    {
        $pemesanan->update($request->all());

        return to_route('admin.pemesanans.index')->with('success', 'Berhasil mengedit pemesanan !');
    }

    public function destroy(Pemesanan $pemesanan)
    {
        $pemesanan->delete();
        return to_route('admin.pemesanans.index')->with('success', 'Berhasil menghapus pemesanan !');
    }

    public function status($id)
    {
        $data = \DB::table('pemesanans')->where('id', $id)->first();

        $status_sekarang = $data->status;
        if ($status_sekarang == 1) {
            \DB::table('pemesanans')->where('id', $id)->update(['status' => 0]);
        } else {
            \DB::table('pemesanans')->where('id', $id)->update(['status' => 0]);
        }

        return redirect()->route('rental.pemesanan.index')->with('success', 'Berhasil mengubah pemesanan !');
    }

    public function ubahStatus(Request $request, $id)
    {
        $pemesanan = Pemesanan::findOrFail($id);

        // Cek status sekarang
        $status_sekarang = $pemesanan->status;

        // Ubah status
        if ($status_sekarang == 0) {
            $pemesanan->status = 1;
        } else {
            $pemesanan->status = 0;
        }

        $pemesanan->save();

        return redirect()->route('rental.pemesanans.index')->with('success', 'Berhasil mengaktifkan status pemesanan!');
    }

    public function exportExcel()
    {
       return Excel::download(new PemesananDataExport, 'pemesanan.xlsx');
    }
}
