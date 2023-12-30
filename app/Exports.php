use App\Models\Pemesanan;
 use Maatwebsite\Excel\Concerns\FromCollection;
 use Maatwebsite\Excel\Concerns\WithHeadings;

 class PemesanansExport implements FromCollection, WithHeadings
 {
     public function collection()
     {
         return Pemesanan::all();
     }

     public function headings(): array
     {
         return [
             'No',
             'Mobil',
             'Driver',
             'Start',
             'End',
             'BBM',
             'Service',
             'Riwayat',
             'Status',
             'Notes',
         ];
     }
 }
 ```