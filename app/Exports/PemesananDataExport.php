<?php

namespace App\Exports;

use App\Models\Pemesanan;
use Maatwebsite\Excel\Concerns\FromCollection;

class PemesananDataExport implements FromCollection
{
    public function collection()
    {
        return Pemesanan::all();
    }
}
