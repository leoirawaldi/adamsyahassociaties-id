<?php

namespace App\Models;

use CodeIgniter\Model;

class Komentar_model extends Model
{
    protected $table         = 'komentar'; // Nama tabel di database
    protected $primaryKey    = 'id';       // Primary key tabel
    protected $useTimestamps = true;       // Untuk otomatis menangani created_at dan updated_at
    protected $createdField  = 'tanggal';  // Kolom untuk mencatat waktu komentar dibuat
    protected $updatedField  = false;      // Tidak menggunakan kolom updated_at
    protected $allowedFields = ['id_berita', 'nama', 'isi', 'tanggal']; // Kolom yang bisa diisi

    /**
     * Mengambil komentar berdasarkan ID berita.
     *
     * @param int $id_berita
     * @return array
     */
    public function getKomentarByBerita($id_berita)
    {
        return $this->where('id_berita', $id_berita)
                    ->orderBy('tanggal', 'DESC') // Urutkan komentar terbaru di atas
                    ->findAll();
    }

    /**
     * Menyimpan komentar baru ke database.
     *
     * @param array $data
     * @return bool
     */
    public function saveKomentar($data)
    {
        return $this->insert($data);
    }
    public function reply($id, $balasan)
{
    $data = [
        'balasan' => $balasan,
    ];
    return $this->db->table('komentar')
                    ->where('id', $id)
                    ->update($data);
}
public function listing()
{
    return $this->db->table('komentar')
        ->join('berita', 'berita.id_berita = komentar.id_berita', 'left')
        ->select('komentar.*, berita.judul_berita')
        ->orderBy('komentar.tanggal', 'DESC')
        ->get()
        ->getResultArray();
}
public function deleteKomentar($id)
{
    return $this->delete($id);
}

}
