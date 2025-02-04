<?php

namespace App\Imports\Sheets;

use Illuminate\Support\Carbon;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\RegistersEventListeners;
use Maatwebsite\Excel\Concerns\SkipsEmptyRows;
use Maatwebsite\Excel\Concerns\SkipsUnknownSheets;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Events\BeforeSheet;

class LanguageSheetImport implements ToCollection, WithEvents, SkipsEmptyRows, WithHeadingRow, SkipsUnknownSheets
{
    use Importable, RegistersEventListeners;

    /**
     * @param BeforeSheet $event
     * @return void
     */
    public static function beforeSheet(BeforeSheet $event)
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        DB::table('languages')->delete();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }

    /**
     * @param Collection $rows
     * @return void
     */
    public function collection(Collection $rows)
    {
        foreach($rows as $row)
        {
            DB::table('languages')->insert([
                'id'           => $row['id'],
                'name'         => $row['name'],
                'language'     => $row['language'],
                'country'      => $row['country'],
                'country_code' => $row['country_code'],
                'direction'    => $row['direction'],
                'active'       => $row['active'],
                'created_at'   => Carbon::create($row['created_at'])->format('Y-m-d H:i:s'),
                'updated_at'   => Carbon::create($row['updated_at'])->format('Y-m-d H:i:s')
            ]);
        }
    }

    public function onUnknownSheet($sheetName)
    {
        // E.g. you can log that a sheet was not found.
        info("Sheet {$sheetName} was skipped");
    }
}
