<?php

namespace App\Relatorios\Excel;

  

use App\Models\Cadastro\Pessoa;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

use Illuminate\Support\Collection;

class Nmembros implements FromCollection, WithHeadings, ShouldAutoSize, WithEvents

{

    /**

    * @return \Illuminate\Support\Collection

    */

    public function collection()

    {
        
        $Nmembros = Pessoa::where('situacao_membro', 'NM')->get(['nome','data_nasc','telefone','celular']);


     
        
        return $Nmembros;

    }


    
    public function headings(): array
    {
        return [
            'Nome',
            'Data Nascimento',
            'Telefone',
            'Celular'
        ];
    }


    public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function(AfterSheet $event) {
                $cellRange = 'A1:W1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(12);
            },
        ];
    }

}