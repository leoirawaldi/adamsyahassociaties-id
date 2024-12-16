<?php

namespace App\Controllers;

use App\Models\Kategori_staff_model;
use App\Models\Konfigurasi_model;
use App\Models\Staff_model;

class Staff extends BaseController
{
    // Staff
    public function index()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $m_staff       = new Staff_model();
        $m_kategori    = new Kategori_staff_model();
        $konfigurasi   = $m_konfigurasi->listing();
        $kategori      = $m_kategori->listing();

        $data = ['title'  => 'Staff Kami',
            'description' => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'kategori'    => $kategori,
            'm_staff'     => $m_staff,
            'konfigurasi' => $konfigurasi,
            'content'     => 'staff/index',
        ];
        echo view('layout/wrapper', $data);
    }
    public function adam()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $konfigurasi   = $m_konfigurasi->listing();


        $data = ['title'  => 'Staff Kami',
            'description' => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'content'     => 'staff/adam',
        ];
        echo view('layout/wrapper', $data);
    }
    public function tengku()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $konfigurasi   = $m_konfigurasi->listing();


        $data = ['title'  => 'Staff Kami',
            'description' => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'content'     => 'staff/tengku',
        ];
        echo view('layout/wrapper', $data);
    }
    public function ramlan()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $konfigurasi   = $m_konfigurasi->listing();


        $data = ['title'  => 'Staff Kami',
            'description' => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'content'     => 'staff/ramlan',
        ];
        echo view('layout/wrapper', $data);
    }
    public function rudi()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $konfigurasi   = $m_konfigurasi->listing();


        $data = ['title'  => 'Staff Kami',
            'description' => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'content'     => 'staff/rudi',
        ];
        echo view('layout/wrapper', $data);
    }
    public function ibrohim()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $konfigurasi   = $m_konfigurasi->listing();


        $data = ['title'  => 'Staff Kami',
            'description' => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'content'     => 'staff/ibrohim',
        ];
        echo view('layout/wrapper', $data);
    }
    public function rizki()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $konfigurasi   = $m_konfigurasi->listing();


        $data = ['title'  => 'Staff Kami',
            'description' => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'content'     => 'staff/rizki',
        ];
        echo view('layout/wrapper', $data);
    }
    public function syahriza()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $konfigurasi   = $m_konfigurasi->listing();


        $data = ['title'  => 'Staff Kami',
            'description' => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => 'Staff Kami ' . $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'content'     => 'staff/syahriza',
        ];
        echo view('layout/wrapper', $data);
    }
}
