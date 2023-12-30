<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExportExcelController extends Controller
{
    public function exportToExcel()
    {
        $pemesanans = Pemesanan::all();

        return Excel::download(new PemesanansExport($pemesanans), 'pemesanans.xlsx');
    }
}
