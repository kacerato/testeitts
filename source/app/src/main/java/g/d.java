package G;

import G.a;
import java.io.File;

public class d implements a.InterfaceC0134a {

    public final long f7222c;

    public final c f7223d;

    public class a implements c {

        public final String f7224a;

        public a(String str) {
            this.f7224a = str;
        }

        @Override
        public File a() {
            return new File(this.f7224a);
        }
    }

    public class b implements c {

        public final String f7225a;

        public final String f7226b;

        public b(String str, String str2) {
            this.f7225a = str;
            this.f7226b = str2;
        }

        @Override
        public File a() {
            return new File(this.f7225a, this.f7226b);
        }
    }

    public interface c {
        File a();
    }

    public d(String str, long j10) {
        this(new a(str), j10);
    }

    @Override
    public G.a build() {
        File a10 = this.f7223d.a();
        if (a10 == null) {
            return null;
        }
        if (a10.mkdirs() || (a10.exists() && a10.isDirectory())) {
            return e.d(a10, this.f7222c);
        }
        return null;
    }

    public d(String str, String str2, long j10) {
        this(new b(str, str2), j10);
    }

    public d(c cVar, long j10) {
        this.f7222c = j10;
        this.f7223d = cVar;
    }
}
