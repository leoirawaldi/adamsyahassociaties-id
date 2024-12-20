<div class="container mt-4">
    <h1><?= $title ?></h1>

    <?php if (session()->getFlashdata('success')) { ?>
        <div class="alert alert-success">
            <?= session()->getFlashdata('success') ?>
        </div>
    <?php } ?>
    <?php if (session()->getFlashdata('error')) { ?>
        <div class="alert alert-danger">
            <?= session()->getFlashdata('error') ?>
        </div>
    <?php } ?>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Komentar</th>
                <th>Balasan</th>
                <th>Berita</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php $no = 1; foreach ($komentar as $k) { ?>
                <tr>
                    <td><?= $no++ ?></td>
                    <td><?= $k['nama'] ?></td>
                    <td><?= $k['isi'] ?></td>
                    <td><?= $k['balasan'] ?: '-' ?></td>
                    <td><?= $k['judul_berita'] ?></td>
                    <td>
                        <form method="post" action="<?= base_url('admin/adminkomentar/reply/' . $k['id']) ?>">
                            <textarea name="balasan" class="form-control" placeholder="Balas komentar..."><?= $k['balasan'] ?></textarea>
                            <button type="submit" class="btn btn-primary mt-2">Simpan</button>
                            <a  class="btn btn-danger mt-2" href="<?= base_url('admin/adminkomentar/delete/' . $k['id']) ?>" onsubmit="return confirm('Apakah Anda yakin ingin menghapus komentar ini?');">Hapus</a>
                        </form>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
