package G;

import A.a;
import G.a;
import android.util.Log;
import java.io.File;
import java.io.IOException;

public class e implements a {

    public static final String f7227f = "DiskLruCacheWrapper";

    public static final int f7228g = 1;

    public static final int f7229h = 1;

    public static e f7230i;

    public final File f7232b;

    public final long f7233c;

    public A.a f7235e;

    public final c f7234d = new c();

    public final m f7231a = new m();

    @Deprecated
    public e(File file, long j10) {
        this.f7232b = file;
        this.f7233c = j10;
    }

    public static a d(File file, long j10) {
        return new e(file, j10);
    }

    @Deprecated
    public static synchronized a e(File file, long j10) {
        e eVar;
        synchronized (e.class) {
            try {
                if (f7230i == null) {
                    f7230i = new e(file, j10);
                }
                eVar = f7230i;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public void a(C.e eVar) {
        try {
            f().L(this.f7231a.b(eVar));
        } catch (IOException e10) {
            if (Log.isLoggable(f7227f, 5)) {
                Log.w(f7227f, "Unable to delete from disk cache", e10);
            }
        }
    }

    @Override
    public File b(C.e eVar) {
        String b10 = this.f7231a.b(eVar);
        if (Log.isLoggable(f7227f, 2)) {
            Log.v(f7227f, "Get: Obtained: " + b10 + " for for Key: " + ((Object) eVar));
        }
        try {
            a.e t10 = f().t(b10);
            if (t10 != null) {
                return t10.b(0);
            }
            return null;
        } catch (IOException e10) {
            if (!Log.isLoggable(f7227f, 5)) {
                return null;
            }
            Log.w(f7227f, "Unable to get from disk cache", e10);
            return null;
        }
    }

    @Override
    public void c(C.e eVar, a.b bVar) {
        A.a f10;
        String b10 = this.f7231a.b(eVar);
        this.f7234d.a(b10);
        try {
            if (Log.isLoggable(f7227f, 2)) {
                Log.v(f7227f, "Put: Obtained: " + b10 + " for for Key: " + ((Object) eVar));
            }
            try {
                f10 = f();
            } catch (IOException e10) {
                if (Log.isLoggable(f7227f, 5)) {
                    Log.w(f7227f, "Unable to put to disk cache", e10);
                }
            }
            if (f10.t(b10) != null) {
                return;
            }
            a.c q10 = f10.q(b10);
            if (q10 == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + b10);
            }
            try {
                if (bVar.a(q10.f(0))) {
                    q10.e();
                }
                q10.b();
            } catch (Throwable th2) {
                q10.b();
                throw th2;
            }
        } finally {
            this.f7234d.b(b10);
        }
    }

    @Override
    public synchronized void clear() {
        try {
            try {
                f().o();
            } catch (IOException e10) {
                if (Log.isLoggable(f7227f, 5)) {
                    Log.w(f7227f, "Unable to clear disk cache or disk cache cleared externally", e10);
                }
            }
        } finally {
            g();
        }
    }

    public final synchronized A.a f() throws IOException {
        try {
            if (this.f7235e == null) {
                this.f7235e = A.a.y(this.f7232b, 1, 1, this.f7233c);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f7235e;
    }

    public final synchronized void g() {
        this.f7235e = null;
    }
}
