# 🚆 LUMARAIL – A Smarter Way to Travel

> **Academic Railway Reservation Project**  
> Developed with an original, creative **Light Colour Theme**, Angular 19 Standalone Architecture, Reactive Forms, LocalStorage data persistence, Tri-Lingual Internationalization (i18n), and Regional Localization (l10n).

---

## 🎨 1. Brand Identity & Creative Light Theme

**LumaRail** replaces conventional, dark, or cluttered railway websites with an airy, welcoming Scandinavian/Swiss aesthetic centered on serenity, clarity, and delight.

### Palette Specification:
- **Soft Lavender** (`#E9E4FA`): Primary brand highlight, button badges, and navigation focus.
- **Sage Green** (`#DDEBDD`): Confirmed ticket badges, feature icons, and status indicators.
- **Warm Ivory** (`#FAF8F2`): Primary background surface for a calm, non-glare reading experience.
- **Peach** (`#F8E1D5`): Warm accent, rating badges, RAC indicators, and route transit markers.
- **Pure White** (`#FFFFFF`): Elevated floating cards, command booking deck, and boarding passes.
- **Dark Charcoal** (`#34343A`): High-contrast, crystal-clear typography and primary action buttons.

---

## 🌐 2. Live Public Website Access

The project is running and publicly accessible worldwide:

- 🔗 **Live Public HTTPS URL**: [https://financing-involvement-forward-email.trycloudflare.com](https://financing-involvement-forward-email.trycloudflare.com)
- 💻 **Local Development Server**: [http://localhost:4200/](http://localhost:4200/)

---

## 🚀 3. Deployment Instructions (Vercel & Netlify)

The project has been prepared with pre-configured configuration files (`vercel.json`, `netlify.toml`, `public/_redirects`) so Single Page Application (SPA) routing works out of the box without 404 errors on page reloads.

### Option A: Deploying on Vercel (Recommended)
1. Push your project folder to your GitHub account:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: LumaRail – A Smarter Way to Travel"
   git branch -M main
   git remote add origin https://github.com/<your-username>/lumarail.git
   git push -u origin main
   ```
2. Go to [vercel.com](https://vercel.com) and log in with GitHub.
3. Click **"Add New"** > **"Project"** and select your `lumarail` repository.
4. Vercel will automatically detect `vercel.json`:
   - **Framework Preset**: Angular
   - **Build Command**: `npm run build`
   - **Output Directory**: `dist/aura-rail-reservation/browser`
5. Click **"Deploy"**. Within ~1 minute, Vercel gives you a permanent, global production URL (e.g. `https://lumarail.vercel.app`).

### Option B: Deploying on Netlify
1. Log in to [netlify.com](https://netlify.com).
2. Click **"Add new site"** > **"Import an existing project"** > connect GitHub.
3. Select the `lumarail` repository.
4. Netlify automatically reads `netlify.toml` and `public/_redirects`:
   - **Build command**: `npm run build`
   - **Publish directory**: `dist/aura-rail-reservation/browser`
5. Click **"Deploy Site"**. Your website goes live at `https://<site-name>.netlify.app`.

---

## 📂 4. Project Structure

```
aura-rail-reservation/
├── vercel.json                      # Vercel SPA routing rewrite rules
├── netlify.toml                     # Netlify build & rewrite configuration
├── angular.json                     # Angular CLI build budget & font optimization
├── package.json                     # Dependencies & build scripts
├── server.js                        # Node.js production SPA static server
├── src/
│   ├── index.html                   # HTML entry point with LumaRail branding & metadata
│   ├── main.ts                      # Angular standalone bootstrap
│   ├── styles.css                   # Global light theme design tokens (Lavender, Sage, Ivory, Peach, Charcoal)
│   └── app/
│       ├── app.component.ts         # Root standalone component shell
│       ├── app.component.html       # Navbar + Router Outlet + Footer + Toast
│       ├── app.routes.ts            # Route definitions & guards
│       ├── app.config.ts            # Application providers
│       │
│       ├── models/                  # TypeScript Data Contracts
│       │   ├── train.model.ts       # Train, Station, TrainClass interfaces
│       │   ├── booking.model.ts     # Booking, PassengerDetail, FareBreakdown interfaces
│       │   └── user.model.ts        # User, AuthSession interfaces
│       │
│       ├── services/                # Angular Injectables
│       │   ├── auth.service.ts      # Auth registry, login, session & student demo user
│       │   ├── train.service.ts     # Train catalog, route search & dynamic corridor generator
│       │   ├── booking.service.ts   # PNR generation (LUM-XXXX-XXX), fare math, berth allocation, cancellation
│       │   ├── i18n.service.ts      # Multi-lingual dictionaries (EN, TE, HI) & l10n formatters
│       │   └── notification.service.ts # Toast alert system
│       │
│       ├── guards/
│       │   └── auth.guard.ts        # Route guard protecting /booking and /my-bookings
│       │
│       ├── pipes/
│       │   └── translate.pipe.ts    # Custom impure pipe: {{ 'key' | translate }}
│       │
│       └── components/              # Standalone UI Components (TS + HTML + CSS)
│           ├── navbar/              # Light frosted navbar with LumaRail SVG logo & language dropdown
│           ├── footer/              # Signature corridors, tech stack & academic notice
│           ├── toast/               # Floating action notifications (success, error, warning)
│           ├── home/                # Hero section, booking deck, featured express trains
│           ├── train-search/        # Search filters, route visualizer, class availability
│           ├── booking/             # Dynamic passenger FormArray, live fare, boarding pass
│           ├── my-bookings/         # Ticket stream, cancellation modal with refund preview
│           ├── pnr-status/          # Live PNR telemetry, chart status, quick sample chips
│           ├── login/               # Split-screen sign-in with 1-click student demo login
│           └── register/            # Reactive registration with password match validation
```

---

## 🎯 5. Implemented Features & Verification

1. **Brand Identity**: **LumaRail – A Smarter Way to Travel.** used consistently across browser tabs, navigation, modals, boarding passes, and footer.
2. **Creative Light Colour Theme**:
   - Soft Lavender (`#E9E4FA`)
   - Sage Green (`#DDEBDD`)
   - Warm Ivory (`#FAF8F2`)
   - Peach (`#F8E1D5`)
   - Pure White (`#FFFFFF`)
   - Dark Charcoal (`#34343A`)
3. **Tri-Lingual Internationalization (i18n)**:
   - English (`EN`)
   - Telugu (`తెలుగు`)
   - Hindi (`हिन्दी`)
   - Reactive top-bar dropdown switcher updates all content dynamically in real time without refreshing.
4. **Dynamic Train Search & Availability**:
   - Station swap feature with conflict validation.
   - Comprehensive class tiers: Sleeper (`SL`), AC 3-Tier (`3A`), AC 2-Tier (`2A`), First AC / Executive (`1A`).
5. **Passenger Booking & Intelligent Seat Allocation**:
   - Dynamic `FormArray` (up to 6 passengers per ticket).
   - Real-time fare calculation with 5% GST & surcharges.
   - Automatic coach and berth allocation matching passenger preferences.
   - Generates unique 10-digit PNR (`LUM-XXXX-XXX`).
   - Printable luxury boarding pass view (`@media print`).
6. **Ticket Cancellation & Refund Processing**:
   - Cancel ticket dialog calculates refund after ₹120/passenger deduction.
   - Immediate status reflection in `localStorage`.
7. **Satellite PNR Telemetry Check**:
   - One-click sample test buttons (`LUM-8924-X91`, `LUM-4102-K55`) for instant evaluation.
   - Displays Chart Preparation status and complete passenger allocation details.
