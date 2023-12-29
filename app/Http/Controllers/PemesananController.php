<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Pemesanan;
use App\Models\Car;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\View;

class PemesananController extends Controller
{
    public function index(): View
    {
        $data = [
            'pemesanans' => Pemesanan::all(),
            'cars' => Car::all()
        ];
        return view('dashboard.pemesanan.index', $data);
    }

    public function create(): View
    {
        return view('dashboard.pemesanan.create');
    }

    public function store(Request $request)
    {
        $data = $request->all();

        Pemesanan::create($data);

        return to_route('admin.pemesanan.index')->with('success', 'Berhasil menambahkan sopir !');
    }

    public function edit(Driver $driver)
    {
        return view('dashboard.pemesanan.edit', compact('driver'));
    }

    public function update(Request $request, Driver $driver)
    {
        $driver->update($request->all());

        return to_route('admin.pemesanan.index')->with('success', 'Berhasil mengedit sopir !');
    }

    public function destroy(Driver $driver)
    {
        $driver->delete();
        return to_route('admin.pemesanan.index')->with('success', 'Berhasil menghapus sopir !');
    }
}
