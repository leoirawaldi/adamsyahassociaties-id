<?php

namespace App\Controllers\Admin;

use App\Models\Berita_model;
use App\Models\Komentar_model;

class Adminkomentar extends BaseController
{
    // index

        public function index()
        {
            $m_komentar = new Komentar_model();
            $komentar   = $m_komentar->listing(); // Ambil semua komentar dari model
        
            $data = [
                'title'    => 'Kelola Komentar',
                'komentar' => $komentar,
                'content'  => 'admin/komentar/index',
            ];
            echo view('admin/layout/wrapper', $data);
        }
    

   
// Reply Komentar
public function reply($id)
{
    // Validasi input dari form balasan
    $balasan = $this->request->getPost('balasan');
    
    if ($balasan) {
        // Memanggil model untuk menyimpan balasan
        $komentarModel = new Komentar_model();
        $komentarModel->reply($id, $balasan);
        
        // Redirect setelah balasan berhasil disimpan
        return redirect()->to(base_url('admin/adminkomentar'))->with('sukses', 'Balasan berhasil disimpan');
    }
    
    // Jika balasan kosong, kembali ke halaman sebelumnya dengan pesan error
    return redirect()->to(base_url('admin/adminkomentar'))->with('error', 'Balasan tidak boleh kosong');
}
public function delete($id)
{
    $komentarModel = new Komentar_model();

    if ($komentarModel->delete($id)) {
        session()->setFlashdata('success', 'Komentar berhasil dihapus.');
    } else {
        session()->setFlashdata('error', 'Gagal menghapus komentar.');
    }

    return redirect()->to(base_url('admin/adminkomentar'));
}

}
