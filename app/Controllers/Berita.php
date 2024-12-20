<?php

namespace App\Controllers;

use App\Models\Berita_model;
use App\Models\Kategori_model;
use App\Models\Konfigurasi_model;
use App\Models\Komentar_model;

class Berita extends BaseController
{
    // index
    public function index()
    {
        $m_konfigurasi = new Konfigurasi_model();
        $m_berita      = new Berita_model();
        $konfigurasi   = $m_konfigurasi->listing();
        $berita        = $m_berita->home();

        $data = [
            'title'       => 'Berita ' . $konfigurasi['namaweb'],
            'description' => 'Berita ' . $konfigurasi['namaweb'],
            'keywords'    => 'Berita ' . $konfigurasi['namaweb'],
            'berita'      => $berita,
            'content'     => 'berita/index',
        ];
        echo view('layout/wrapper', $data);
    }

    // read
    public function read($slug_berita)
    {
        $m_konfigurasi = new Konfigurasi_model();
        $m_berita      = new Berita_model();
        $m_komentar    = new Komentar_model();

        $konfigurasi   = $m_konfigurasi->listing();
        $berita        = $m_berita->read($slug_berita);
        $komentar      = $m_komentar->getKomentarByBerita($berita['id_berita']);

        // Update hits
        $data = [
            'id_berita' => $berita['id_berita'],
            'hits'      => $berita['hits'] + 1,
        ];
        $m_berita->edit($data);

        $data = [
            'title'       => $berita['judul_berita'],
            'description' => $berita['judul_berita'],
            'keywords'    => $berita['judul_berita'],
            'berita'      => $berita,
            'komentar'    => $komentar,
            'content'     => 'berita/read',
        ];
        echo view('layout/wrapper', $data);
    }

    // Tambah komentar
    public function kirim_komentar($id_berita)
    {
        $m_komentar = new Komentar_model();

        // Validasi input
        $rules = [
            'nama'     => 'required',
            'komentar' => 'required',
        ];

        if (!$this->validate($rules)) {
            return redirect()->back()->with('error', 'Harap isi semua kolom komentar.');
        }

        // Simpan komentar
        $data = [
            'id_berita' => $id_berita,
            'nama'      => $this->request->getPost('nama'),
            'isi'       => $this->request->getPost('komentar'),
            'tanggal'   => date('Y-m-d H:i:s'),
        ];

        $m_komentar->insert($data);
        return redirect()->back()->with('success', 'Komentar berhasil ditambahkan.');
    }

    // Profil
    public function profil($slug_berita)
    {
        $m_konfigurasi = new Konfigurasi_model();
        $m_berita      = new Berita_model();
        $konfigurasi   = $m_konfigurasi->listing();
        $berita        = $m_berita->read($slug_berita);

        // Update hits
        $data = [
            'id_berita' => $berita['id_berita'],
            'hits'      => $berita['hits'] + 1,
        ];
        $m_berita->edit($data);

        $data = [
            'title'       => $berita['judul_berita'],
            'description' => $berita['judul_berita'],
            'keywords'    => $berita['judul_berita'],
            'berita'      => $berita,
            'content'     => 'berita/profil',
        ];
        echo view('layout/wrapper', $data);
    }

    // Kategori
    public function kategori($slug_kategori)
    {
        $m_konfigurasi = new Konfigurasi_model();
        $m_berita      = new Berita_model();
        $m_kategori    = new Kategori_model();

        $konfigurasi = $m_konfigurasi->listing();
        $kategori    = $m_kategori->read($slug_kategori);
        $berita      = $m_berita->kategori($kategori['id_kategori']);

        // Update hits
        $data = [
            'id_kategori' => $kategori['id_kategori'],
            'hits'        => $kategori['hits'] + 1,
        ];
        $m_kategori->edit($data);

        $data = [
            'title'       => $kategori['nama_kategori'],
            'description' => $kategori['nama_kategori'],
            'keywords'    => $kategori['nama_kategori'],
            'kategori'    => $kategori,
            'berita'      => $berita,
            'content'     => 'berita/index',
        ];
        echo view('layout/wrapper', $data);
    }
        // layanan
        public function layanan($slug_berita)
        {
            $m_konfigurasi = new Konfigurasi_model();
            $m_berita      = new Berita_model();
            $m_komentar    = new Komentar_model();
            $konfigurasi   = $m_konfigurasi->listing();
            $berita        = $m_berita->read($slug_berita);
            $komentar      = $m_komentar->getKomentarByBerita($berita['id_berita']);
    
            // Update hits
            $data = ['id_berita' => $berita['id_berita'],
                'hits'           => $berita['hits'] + 1,
            ];
            $m_berita->edit($data);
            // Update hits
    
            $data = ['title'  => $berita['judul_berita'],
                'description' => $berita['judul_berita'],
                'keywords'    => $berita['judul_berita'],
                'berita'      => $berita,
                'komentar'    => $komentar,
                'content'     => 'berita/layanan',
            ];
            echo view('layout/wrapper', $data);
        }
}
