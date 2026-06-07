#!/usr/bin/env bash
# Scarica tutte le immagini e i PDF dal CDN Wix in locale (assets/).
# Da eseguire UNA VOLTA, PRIMA di disdire l'abbonamento Wix.
# Uso: bash scarica-assets.sh
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p assets/img assets/pdf

W="https://static.wixstatic.com/media"
F="https://www.kungfuterni.com/_files/ugd"

dl() { # dl <url> <destinazione>
  if [ -s "$2" ]; then echo "ok (già presente): $2"; return; fi
  echo "scarico: $2"
  curl -fsSL "$1" -o "$2" || { echo "ERRORE: $1" >&2; FALLITI=$((FALLITI+1)); }
}
FALLITI=0

# --- icone social header ---
dl "$W/23fd2a2be53141ed810f4d3dcdcd01fa.png" assets/img/icon-facebook.png
dl "$W/203dcdc2ac8b48de89313f90d2a4cda1.png" assets/img/icon-youtube.png
dl "$W/81af6121f84c41a5b4391d7d37fce12a.png" assets/img/icon-instagram.png

# --- branding / home ---
dl "$W/cabff1_7cbd090f73ea4ac483aa9dfec585f429~mv2.png" assets/img/logo.png
dl "$W/cabff1_f8e998ff67754835b3eaa048e0e84de4~mv2.jpg" assets/img/hero.jpg
dl "$W/cabff1_4008883d0a5e4366a416e1c6bb061a07~mv2.jpg" assets/img/luca-primavera.jpg
dl "$W/cabff1_822b3e07335843c98a2e013a34a984e9~mv2.jpg" assets/img/alessandro-bufi.jpg
dl "$W/cabff1_df151772bc5b45c6b107e7a19d8f04c5~mv2.jpg" assets/img/card-tradizionale.jpg
dl "$W/cabff1_147c8e7d0e354af4b9a9084d2950caaf~mv2.jpg" assets/img/card-taichi.jpg
dl "$W/cabff1_3475edf3f7ca4fb08a99d8e07b89e60a~mv2.jpg" assets/img/card-sanda.jpg
dl "$W/cabff1_5cb45ebfc25744a7906502aa85d71a72~mv2.png" assets/img/sponsor-main.png
dl "$W/cabff1_6f95b20bfb51466bb3b3dbc1d963cbf0~mv2.png" assets/img/sponsor-vallantica.png
dl "$W/cabff1_9644cbc2b08246c1b368db5e3e552555~mv2.jpg" assets/img/sponsor-silver.jpg

# --- storia ---
dl "$W/cabff1_97d6e6e029ba49f6b66c1a6ac88f7008~mv2.jpg" assets/img/storia-1.jpg
dl "$W/cabff1_85d6249127624b459c065ba9ad365e14~mv2.jpg" assets/img/storia-2.jpg
dl "$W/cabff1_fc0ac901db9b42aaa14d5a3d2f2d23e5~mv2.jpg" assets/img/storia-3.jpg
dl "$W/cabff1_c20379ea1aca4fe89d10370f35198c98~mv2.jpg" assets/img/storia-4.jpg
dl "$W/cabff1_899847dcbc8544f79d088e251a5e1587~mv2_d_1200_1600_s_2.jpg" assets/img/storia-5.jpg
dl "$W/cabff1_8aa253af723d4ee5812b145257b01ac1~mv2.jpg" assets/img/storia-6.jpg
dl "$W/cabff1_c51d375107734f60a910612951339a3f~mv2_d_1600_1200_s_2.jpg" assets/img/storia-7.jpg

# --- staff ---
dl "$W/cabff1_7770d9ebb99f47c3b8d3687dce35b9fa~mv2.png" assets/img/staff-1.png
dl "$W/cabff1_b1bd4dd76efb43509cd9b561186e56f7~mv2.png" assets/img/staff-4.png
dl "$W/cabff1_3c48d197805346009c9e10efafd90c34~mv2.png" assets/img/staff-5.png
dl "$W/cabff1_178d0c86736144c1988a305d9029ef00~mv2.png" assets/img/staff-6.png
dl "$W/cabff1_796c664631da41c5901a74dd8a2b8ffc~mv2.png" assets/img/staff-7.png
dl "$W/cabff1_d9042157cafb4b9c8c85ad68ff29dba6~mv2.jpg" assets/img/staff-cinture-nere.jpg
dl "$W/cabff1_80c950c1d30e4c84aeafc77d5e58ca6f~mv2.jpg" assets/img/luca-staff.jpg

# --- gradi ---
dl "$W/cabff1_3cb5e4fb9cb9495d848a4987e5938068~mv2.png" assets/img/gradi-propedeutica.png
dl "$W/cabff1_924e0dede88a41d68a5d926646f58d51~mv2.png" assets/img/gradi-tradizionale-bambini.png
dl "$W/cabff1_1ec17c116bee4fe49172a28b50aa7393~mv2.png" assets/img/gradi-tradizionale-adulti.png
dl "$W/cabff1_76446d24753e47f59fee9b2d9d3164f4~mv2.png" assets/img/gradi-taichi.png
dl "$W/cabff1_baa85a953fb644b9a45f4bf179fe1de0~mv2.png" assets/img/gradi-avanzati.png
dl "$W/cabff1_ee0795664dcd4c53936d84a84b80a933~mv2.png" assets/img/gradi-sanda.png
dl "$W/cabff1_70690b964c424dca8e4d8181727d42d3~mv2.png" assets/img/gradi-esami-abilitanti.png
dl "$W/cabff1_bf6a99a5eba2473e98aa7a31fd107895~mv2.png" assets/img/gradi-qualifiche-sanda.png

# --- news ---
dl "$W/cabff1_e36d86a7bf3146acbbce8c14c1fa8487~mv2.png" assets/img/news-riparte.png
dl "$W/cabff1_5fcf47e56801468f9b9faac424357f0f~mv2.png" assets/img/news-openday-1.png
dl "$W/cabff1_39f35d8ecb7e443cb7f8bf2158100272~mv2.png" assets/img/news-openday-2.png
dl "$W/cabff1_3e89dce5e5484c209bce7006c4d6376e~mv2.png" assets/img/news-anno-1.png
dl "$W/cabff1_db7900bb460b441ba4c33a3edf75241a~mv2.png" assets/img/news-anno-2.png

# --- info e regolamento ---
dl "$W/cabff1_1a9de1984ea24dffa6e537b20aae110a~mv2.png" assets/img/info-1.png
dl "$W/cabff1_cce3ec74b46d4905b32d57b04269363b~mv2.png" assets/img/info-2.png

# --- collaborazioni ---
dl "$W/cabff1_519a3ec98946411d8b28ef46e0273ae2~mv2.jpg" assets/img/collab-rossini.jpg
dl "$W/cabff1_cab6c5b08ec44c098d08ce7ef098fb9b~mv2.png" assets/img/collab-gobbi.png
dl "$W/cabff1_32b366c87f2245dbbffd965bb944f975~mv2.png" assets/img/iomidifendo.png

# --- orari ed eventi ---
dl "$W/cabff1_0f57bd53b8a24c83958859086db0dc59~mv2.png" assets/img/orari-tabella.png
dl "$W/cabff1_658e56b8118743c38ac31fea73023525~mv2.jpg" assets/img/eventi-2526.jpg

# --- tradizionale ---
dl "$W/cabff1_d2bef18223f844ada2b10f108406b7f5~mv2.jpg" assets/img/trad-1.jpg
dl "$W/cabff1_e932d2398add4e33927692227c2f1bc0~mv2.jpg" assets/img/trad-2.jpg
dl "$W/cabff1_7fc42c0572114c3c86d7b5c56d1947ef~mv2.jpg" assets/img/trad-3.jpg
dl "$W/cabff1_21231ac01bb949418c4bdc4a9273054b~mv2.jpg" assets/img/trad-4.jpg
dl "$W/cabff1_ec264a1403104bcda6249dbb58c92e0f~mv2.jpg" assets/img/trad-5.jpg

# --- tai chi ---
dl "$W/cabff1_3c8966d22a8d4e128f2a2d8bad7b24b7~mv2_d_1200_1600_s_2.jpg" assets/img/taichi-1.jpg
dl "$W/cabff1_8627f568ab80466cbbc3bbcc47b9602c~mv2.jpg" assets/img/taichi-2.jpg
dl "$W/cabff1_4e6251ad7b8347ab9c3dc7f36f2f515a~mv2.jpg" assets/img/taichi-3.jpg
dl "$W/cabff1_c98405931cba4e4db3cbbbee86da2877~mv2.jpg" assets/img/taichi-4.jpg

# --- sanda ---
dl "$W/cabff1_fc0ac901db9b42aaa14d5a3d2f2d23e5~mv2.jpg" assets/img/sanda-1.jpg
dl "$W/cabff1_bc3bb7db72e640fdb9f2eb204c9fcb75~mv2.jpg" assets/img/sanda-2.jpg
dl "$W/cabff1_5061aaa2f9bd4a63892a8d74534235ec~mv2.png" assets/img/sanda-3.png
dl "$W/cabff1_543c0d3d724c41ee9f0009a1f55c74f5~mv2.jpg" assets/img/sanda-4.jpg

# --- foto gallery ---
dl "$W/cabff1_295cb2fca4534145bc54cede6a5302d4~mv2.jpg" assets/img/foto-1.jpg
dl "$W/cabff1_7d3e8d20d5ae41caaab1a28230cff12f~mv2.jpg" assets/img/foto-2.jpg
dl "$W/cabff1_8c7cc17b3a5d484e9a135621f32f199c~mv2.jpg" assets/img/foto-3.jpg
dl "$W/cabff1_8e01405eeafd48388b7cd11cbef844b5~mv2.jpg" assets/img/foto-4.jpg
dl "$W/cabff1_6bd6eed444a84a0ebf8c555aecdc1d77~mv2.jpg" assets/img/foto-5.jpg
dl "$W/cabff1_6342778dffa14e19bed380333e6adc2c~mv2.jpg" assets/img/foto-6.jpg
dl "$W/cabff1_d3508ff3fb2945e790b7ae7567e251e2~mv2.jpg" assets/img/foto-7.jpg
dl "$W/cabff1_a5218de811f34366903cfef49e552748~mv2.png" assets/img/foto-8.png

# --- media gallery (immagini hover) ---
dl "$W/cabff1_e3d468184cd54de4a289668931ac1ace~mv2.jpg" assets/img/media-video.jpg
dl "$W/cabff1_f955c27b89fd4b2397db75726733d3fa~mv2.jpg" assets/img/media-foto.jpg
dl "$W/cabff1_146b9536014f4fde89cbe39fdb586796~mv2.jpg" assets/img/media-dicono.jpg

# --- pagine maestri ---
dl "$W/cabff1_6e0d57b8dac74a34be84db5aaf9baa0b~mv2.jpg" assets/img/luca-1.jpg
dl "$W/cabff1_38e7464f9a7d4fe4a2b59422cca7e87c~mv2.jpg" assets/img/luca-2.jpg
dl "$W/cabff1_07f3f513f9274b68ace001736f15fab4~mv2.jpg" assets/img/luca-3.jpg
dl "$W/cabff1_ce7dfe2961f74768beaedb1921cc1856~mv2.jpg" assets/img/bufi-2.jpg

# --- VIDEO ospitati su Wix (richiedono il sito Wix ancora attivo!) ---
mkdir -p assets/video
dlvid() { # dlvid <id-wix> <destinazione> : prova qualità decrescenti
  if [ -s "$2" ]; then echo "ok (già presente): $2"; return; fi
  for q in 1080p 720p 480p 360p; do
    if curl -fsSL "https://video.wixstatic.com/video/$1/$q/mp4/file.mp4" -o "$2" 2>/dev/null; then
      echo "scaricato: $2 ($q)"; return
    fi
  done
  echo "ERRORE video: $1" >&2; FALLITI=$((FALLITI+1))
}
dlvid "cabff1_1039972f02bb4e91847e36745ff2751d" assets/video/video-1.mp4
dlvid "cabff1_5800a586267d45f9aefc08a9712d40b9" assets/video/video-2.mp4
dlvid "cabff1_2775137fec414c4995663fa9b41474af" assets/video/video-3.mp4
dlvid "cabff1_d62ddf5fce584b5cbc883aeef634b190" assets/video/video-4.mp4
dlvid "cabff1_7a8480fbef4f44d091fd1e22e308c459" assets/video/video-5.mp4

# --- PDF (richiedono il sito Wix ancora attivo!) ---
dl "$F/cabff1_c933753b7a4946cda73e39ced1f2faa8.pdf" assets/pdf/planning-kft-2025-2026.pdf
dl "$F/cabff1_ba906be4404e4a5caabd349bc5e365ec.pdf" assets/pdf/brochure-aam2024-25-vol1.pdf
dl "$F/cabff1_63d159eb4c6a400fb0db614f9e8782aa.pdf" assets/pdf/brochure-aam2024-25-vol2.pdf
dl "$F/cabff1_15bb690eac7248faadc7a1ac42e77be3.pdf" assets/pdf/rassegna-stampa-23-24.pdf
dl "$F/cabff1_415beeaff94845fe864c7bf2e1053f54.pdf" assets/pdf/proposta-di-sponsorizzazione.pdf

echo
if [ "$FALLITI" -gt 0 ]; then
  echo "ATTENZIONE: $FALLITI download falliti (vedi sopra)."
  exit 1
fi
echo "Fatto: tutti gli asset scaricati in assets/img e assets/pdf."
