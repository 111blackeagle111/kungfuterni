# Migrazione kungfuterni.com — da Wix a GitHub Pages

Sito statico ricostruito da https://www.kungfuterni.com/ (Wix). Hosting gratuito su GitHub Pages, resta solo il costo del dominio.

## Struttura

- Pagine HTML con gli **slug originali Wix** (`storia.html`, `gradi.html`, `copia-di-sanda.html`, ecc.) per preservare l'indicizzazione Google: GitHub Pages serve `/storia` da `storia.html` automaticamente.
- `css/style.css` — unico foglio di stile.
- `assets/img/`, `assets/pdf/` — riempiti da `scarica-assets.sh`.
- `CNAME` — dominio custom per GitHub Pages.

## Procedura di deploy

### 1. Scarica gli asset (PRIMA di disdire Wix)

```bash
bash scarica-assets.sh
```

Scarica ~60 immagini e 5 PDF dal CDN Wix in `assets/`. Verifica poi in locale aprendo `index.html` nel browser.

### 2. Crea il repo e pubblica

```bash
git init && git add -A && git commit -m "Migrazione sito kungfuterni.com da Wix a sito statico"
git remote add origin git@github.com:111blackeagle111/kungfuterni.git
git branch -M main && git push -u origin main
```

Su GitHub: **Settings → Pages → Source: Deploy from a branch → main / (root)**.
Poi in **Settings → Pages → Custom domain**: `www.kungfuterni.com` (il file CNAME è già nel repo) e spunta **Enforce HTTPS** (disponibile dopo la propagazione DNS).

### 3. DNS (sul registrar attuale)

| Tipo  | Nome | Valore |
|-------|------|--------|
| CNAME | www  | `111blackeagle111.github.io` |
| A     | @    | 185.199.108.153 |
| A     | @    | 185.199.109.153 |
| A     | @    | 185.199.110.153 |
| A     | @    | 185.199.111.153 |

Rimuovere i record A/CNAME che puntano a Wix.

### 4. Verifica e disdetta

1. Attendi propagazione DNS (fino a 24-48h, di solito minuti).
2. Verifica `https://www.kungfuterni.com` e `https://kungfuterni.com`.
3. Controlla che i 5 PDF e le immagini siano serviti dal nuovo sito (non più da wixstatic.com).
4. Solo a quel punto: disdici l'abbonamento Wix.

## Note

- Il **modulo iscrizioni** resta il Google Form esterno (link in home), nessuna dipendenza da Wix.
- La pagina **Video** su Wix era vuota: ora rimanda al canale YouTube.
- Per aggiornare orari/eventi/news basta modificare l'HTML e fare `git push`.
