<?php

namespace App\Relatorios\Excel;

use App\Models\Cadastro\Pessoa;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class Membros implements FromCollection, WithHeadings, ShouldAutoSize, WithEvents

{

    /**

    * @return \Illuminate\Support\Collection

    */

    protected $congregacao;

    protected $regional;

    public function __construct($request)
    {
         $this->congregacao = $request->congregacao;
       	 $this->regional =  $request->regional;
    }

    public function collection()

    {
       
        \Debugbar::info($this->congregacao);
        \Debugbar::info($this->regional);

        return Pessoa::where('situacao_membro', 'MC')->where('congregacao_id', $this->congregacao)->where('regional_id',$this->regional)->get(['nome','data_nasc','telefone','celular']);
        


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