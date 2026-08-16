package M5;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g;
import id.C13696a;
import java.util.Locale;

public class d extends L5.b {

    public String f14532i;

    public int f14533j = 0;

    public boolean f14534k = false;

    public class a implements g.p {

        public class C0409a implements C13696a.d {
            public C0409a() {
            }

            @Override
            public void b() {
                if (d.this.f14534k) {
                    return;
                }
                d.this.f14534k = true;
                d.this.m(1.0f);
                d.this.b();
            }
        }

        public a() {
        }

        @Override
        public void a(String error) {
            d dVar = d.this;
            dVar.x(dVar.v(error));
        }

        @Override
        public void b() {
            d.this.x(Lang.l(Lang.T.ERROR_NO_INTERNET_CONNECTION));
        }

        @Override
        public void d(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond, long downloadedBytes, boolean indeterminate, g.p.a updateStep) {
            int max = progress >= 0 ? Math.max(0, Math.min(progress, 100)) : 0;
            d.this.m(max / 100.0f);
            String format = String.format(Locale.US, "%.1fMB", Float.valueOf(((float) downloadedBytes) / 1048576.0f));
            int i10 = c.f14542a[updateStep.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    return;
                }
                d.this.n(Lang.l(Lang.T.IMPORTING_TEMPLATE) + " - " + max + ve.j.f121589a);
                return;
            }
            if (indeterminate) {
                d.this.n(Lang.l(Lang.T.DOWNLOADING_TEMPLATE) + " - " + format);
                return;
            }
            d.this.n(Lang.l(Lang.T.DOWNLOADING_TEMPLATE) + " - " + format + " - " + max + ve.j.f121589a);
        }

        @Override
        public void e(g.p.a updateStep) {
            com.itsmagic.engine.Core.Components.ProjectController.a.l0(d.this.f11606b);
            if (updateStep == g.p.a.Import) {
                d.this.n(Lang.l(Lang.T.INSTALLING_JAVA));
                C13696a.n(new C0409a());
            }
        }
    }

    public class b implements Runnable {

        public final int f14537b;

        public class a implements Runnable {

            public final int f14539b;

            public a(final int val$finalRemaining) {
                this.f14539b = val$finalRemaining;
            }

            @Override
            public void run() {
                d.this.n(Lang.l(Lang.T.DOWNLOAD_TEMPLATE_RETRY_WAIT) + " " + this.f14539b + "s...");
            }
        }

        public class RunnableC0410b implements Runnable {
            public RunnableC0410b() {
            }

            @Override
            public void run() {
                d.this.w();
            }
        }

        public b(final int val$waitSeconds) {
            this.f14537b = val$waitSeconds;
        }

        @Override
        public void run() {
            for (int i10 = this.f14537b; i10 > 0; i10--) {
                if (d.this.f14534k) {
                    return;
                }
                N7.c.j0(new a(i10));
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            if (d.this.f14534k) {
                return;
            }
            N7.c.j0(new RunnableC0410b());
        }
    }

    public static class c {

        public static final int[] f14542a;

        static {
            int[] iArr = new int[g.p.a.values().length];
            f14542a = iArr;
            try {
                iArr[g.p.a.Download.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14542a[g.p.a.Import.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public d(String productId) {
        this.f14532i = productId;
    }

    @Override
    public void k() {
        super.k();
        I5.d.f8866e0.set(true);
        o(Lang.l(Lang.T.CREATING_PROJECT) + " " + this.f11606b);
        n("");
        w();
    }

    public final String v(String error) {
        if (error == null) {
            return Lang.l(Lang.T.ERROR_SOMETHING_WENT_WRONG);
        }
        String trim = error.trim();
        if (trim.isEmpty() || trim.equalsIgnoreCase("error")) {
            return Lang.l(Lang.T.ERROR_SOMETHING_WENT_WRONG);
        }
        return Lang.l(Lang.T.ERROR_PREFIX) + trim;
    }

    public final void w() {
        com.itsmagic.engine.Core.Components.ProjectController.a.l0(this.f11606b);
        n(Lang.l(Lang.T.PREPARING_PROJECT));
        com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g.Y1(this.f14532i, true, new a());
    }

    public final void x(String reason) {
        if (this.f14534k) {
            return;
        }
        int i10 = this.f14533j;
        if (i10 >= 3) {
            n(Lang.l(Lang.T.DOWNLOAD_TEMPLATE_RETRY_FAILED) + " - " + reason);
            return;
        }
        int i11 = i10 + 1;
        this.f14533j = i11;
        n(Lang.l(Lang.T.DOWNLOAD_TEMPLATE_RETRYING) + " (" + i11 + "/3) - " + reason);
        new Thread(new b(3)).start();
    }
}
