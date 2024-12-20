<style>
  /* Styling for the comment section */
.comment {
  background-color: #f9f9f9;
  border: 1px solid #ddd;
  padding: 15px;
  margin-bottom: 20px;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Header with username and timestamp */
.comment-header {
  font-size: 16px;
  font-weight: bold;
  color: #333;
}

.comment-header small {
  font-size: 12px;
  color: #777;
}

/* Body of the comment */
.comment-body {
  font-size: 14px;
  margin-top: 10px;
  color: #555;
}

/* Styling for replies */
.reply {
  background-color: #eef7ff;
  padding: 10px;
  margin-top: 15px;
  border-radius: 6px;
  border: 1px solid #cce7ff;
}

.reply strong {
  font-weight: bold;
  color: #004085;
}

.reply-body {
  font-size: 13px;
  color: #333;
}

/* Separator line */
.comment-separator {
  border: 0;
  border-top: 1px solid #ddd;
  margin-top: 20px;
}

/* No comments message */
.no-comments {
  font-size: 16px;
  color: #999;
  text-align: center;
}

</style>
<?php use App\Models\Berita_model;

$m_berita = new Berita_model();
$sidebar  = $m_berita->sidebar();
?>
<main id="main">
  <!-- ======= Breadcrumbs Section ======= -->
  <section class="breadcrumbs">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center">
        <h2><?= $title ?></h2>
      </div>
    </div>
  </section><!-- End Breadcrumbs Section -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">
    <div class="container">
      <div class="row mt-5">
        <div class="col-md-8">
          <div class="card" style="margin-bottom: 20px;">
            <img src="<?= base_url('assets/upload/image/' . $berita['gambar']) ?>" class="img-fluid">
            <div class="card-body">
              <h3><?= $berita['judul_berita'] ?></h3>
              <?= $berita['isi'] ?>

              <!-- Komentar -->
              <hr>
              <h4>Komentar</h4>
              <?php if (!empty($komentar)) { ?>
  <?php foreach ($komentar as $komen) { ?>
    <div class="comment">
      <div class="comment-header">
        <strong><?= $komen['nama'] ?></strong> 
        <small>(<?= date('d M Y H:i', strtotime($komen['tanggal'])) ?>)</small>
      </div>
      <p class="comment-body"><?= nl2br($komen['isi']) ?></p>

      <?php if (!empty($komen['balasan'])) { ?>
        <div class="reply">
          <strong>Admin:</strong>
          <p class="reply-body"><?= nl2br($komen['balasan']) ?></p>
        </div>
      <?php } ?>

      <hr class="comment-separator">
    </div>
  <?php } ?>
<?php } else { ?>
  <p class="no-comments">Belum ada komentar. Jadilah yang pertama!</p>
<?php } ?>



              <!-- Form Tambah Komentar -->
              <hr>
              <h5>Tambah Komentar</h5>
              <form action="<?= base_url('berita/kirim_komentar/' . $berita['id_berita']) ?>" method="post">
                <div class="form-group">
                  <label for="nama">Nama</label>
                  <input type="text" name="nama" class="form-control" placeholder="Nama Anda" required>
                </div>
                <div class="form-group">
                  <label for="komentar">Komentar</label>
                  <textarea name="komentar" class="form-control" rows="4" placeholder="Tulis komentar Anda" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Kirim Komentar</button>
              </form>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="card">
            <div class="card-header">
              <h3>Berita Lainnya</h3>
            </div>
            <div class="card-body">
              <?php foreach ($sidebar as $sidebar) { ?>
                <div class="row mb-3">
                  <div class="col-3">
                    <?php if ($sidebar['gambar'] === '') { ?>
                      <img src="<?= icon() ?>" class="img img-thumbnail">
                    <?php } else { ?>
                      <img src="<?= base_url('assets/upload/image/thumbs/' . $sidebar['gambar']) ?>" class="img img-thumbnail">
                    <?php } ?>
                  </div>
                  <div class="col-9">
                    <h4 style="font-size: 18px;">
                      <a href="<?= base_url('berita/read/' . $sidebar['slug_berita']) ?>">
                        <?= $sidebar['judul_berita'] ?>
                      </a>
                    </h4>
                    <small class="text-gray-dark"><i class="fa fa-eye"></i> <?= $sidebar['hits'] ?> views</small>
                  </div>
                  <div class="clearfix">
                    <br>
                  </div>
                  <hr>
              <?php } ?>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Contact Section -->
</main><!-- End #main -->
