package K5;

import Ic.C2636o;
import Z6.i;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.C12739g;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import id.C13696a;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import ve.j;

@Deprecated
public class c extends J5.b {

    public class a implements q.b.d {

        public final File f10828a;

        public final File f10829b;

        public class RunnableC0355a implements Runnable {
            public RunnableC0355a() {
            }

            @Override
            public void run() {
                i.y1("Ops!", "Unable to download additional content:no ethernet");
                c.this.b();
            }
        }

        public a(final File val$destinationFolder, final File val$outdatedFile) {
            this.f10828a = val$destinationFolder;
            this.f10829b = val$outdatedFile;
        }

        @Override
        public void a(String message) {
            i.y1("Ops!", message);
            c.this.b();
        }

        @Override
        public void b() {
            N7.c.j0(new RunnableC0355a());
        }

        @Override
        public void c(String result) {
            c.this.n(this.f10828a, result, false, this.f10829b);
        }
    }

    public class b implements Runnable {

        public final File f10832b;

        public final File f10833c;

        public class a implements q.b.d {
            public a() {
            }

            @Override
            public void a(String message) {
            }

            @Override
            public void b() {
            }

            @Override
            public void c(String result) {
                if (result.equals(C2636o.g(b.this.f10832b))) {
                    return;
                }
                C2636o.e("1", b.this.f10833c);
            }
        }

        public b(final File val$manifestFile, final File val$outdatedFile) {
            this.f10832b = val$manifestFile;
            this.f10833c = val$outdatedFile;
        }

        @Override
        public void run() {
            q.b.a(C2636o.g(this.f10832b), new a());
        }
    }

    public class C0356c implements q.b.d {

        public final File f10836a;

        public final File f10837b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                c.this.j(Lang.l(Lang.T.ERROR_NO_INTERNET_CONNECTION));
                i.y1("Ops!", "When opening for the first time, you need to be connected to the internet to download additional resources.");
            }
        }

        public C0356c(final File val$destinationFolder, final File val$outdatedFile) {
            this.f10836a = val$destinationFolder;
            this.f10837b = val$outdatedFile;
        }

        @Override
        public void a(String message) {
            i.y1("Ops!", message);
            c.this.b();
        }

        @Override
        public void b() {
            N7.c.j0(new a());
        }

        @Override
        public void c(String result) {
            c.this.n(this.f10836a, result, true, this.f10837b);
        }
    }

    public class d implements C12739g.d {

        public final File f10840a;

        public final File f10841b;

        public final String f10842c;

        public final boolean f10843d;

        public class a implements Runnable {

            public final File f10845b;

            public class RunnableC0357a implements Runnable {
                public RunnableC0357a() {
                }

                @Override
                public void run() {
                    C2636o.e(d.this.f10842c, new File(d.this.f10841b, "manifest.config"));
                    c.this.j(Lang.l(Lang.T.DONE));
                    c.this.b();
                }
            }

            public a(final File val$file) {
                this.f10845b = val$file;
            }

            @Override
            public void run() {
                c.this.j(Lang.l(Lang.T.EXTRACTING_ASSETS));
                try {
                    File file = this.f10845b;
                    nd.e.m(file, file.getParentFile());
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                this.f10845b.delete();
                if (d.this.f10840a.exists()) {
                    d.this.f10840a.delete();
                }
                N7.c.j0(new RunnableC0357a());
            }
        }

        public class b implements Runnable {

            public final String f10848b;

            public b(final String val$msg) {
                this.f10848b = val$msg;
            }

            @Override
            public void run() {
                d dVar = d.this;
                if (dVar.f10843d) {
                    c.this.j(Lang.l(Lang.T.ERROR_PREFIX) + this.f10848b);
                    return;
                }
                i.y1("Ops!", "Unable to download additional content:" + this.f10848b);
                c.this.b();
            }
        }

        public d(final File val$outdatedFile, final File val$destinationFolder, final String val$manifestContent, final boolean val$blockUserWhenFail) {
            this.f10840a = val$outdatedFile;
            this.f10841b = val$destinationFolder;
            this.f10842c = val$manifestContent;
            this.f10843d = val$blockUserWhenFail;
        }

        @Override
        public void a(float p10, int downloadedBytes, int totalBytes) {
            Locale locale = Locale.ROOT;
            String format = String.format(locale, "%.2f", Float.valueOf((downloadedBytes / 1024.0f) / 1024.0f));
            String format2 = String.format(locale, "%.2f", Float.valueOf((totalBytes / 1024.0f) / 1024.0f));
            c.this.j(Lang.l(Lang.T.DOWNLOADING_ASSETS) + ": " + format + "MB/" + format2 + "MB " + ((int) (p10 * 100.0f)) + j.f121589a);
        }

        @Override
        public void b(File file) {
            O9.b.d(new a(file));
        }

        @Override
        public void onError(String msg) {
            N7.c.j0(new b(msg));
        }
    }

    @Override
    public void g() {
        super.g();
        k(Lang.l(Lang.T.LOADING_EDITOR));
        j(Lang.l(Lang.T.CHECKING_ASSETS));
        File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/");
        File file2 = new File(file, "manifest.config");
        File file3 = new File(file, "outdated");
        if (file3.exists()) {
            q.b.a(C2636o.g(file2), new a(file, file3));
        } else if (!file2.exists()) {
            q.b.a(C2636o.g(file2), new C0356c(file, file3));
        } else {
            N7.c.l(2.0f, new b(file2, file3));
            b();
        }
    }

    public final void n(File destinationFolder, String manifestContent, boolean blockUserWhenFail, File outdatedFile) {
        j(Lang.l(Lang.T.DOWNLOADING_REQUIRED_ASSETS));
        C13696a.g(destinationFolder);
        q.b.b(new d(outdatedFile, destinationFolder, manifestContent, blockUserWhenFail));
    }
}
