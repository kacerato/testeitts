package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

public class a {

    public static final int f64874e = 0;

    public static final int f64875f = 1500;

    public static final int f64876g = 2750;

    public static a f64877h;

    @NonNull
    public final Object f64878a = new Object();

    @NonNull
    public final Handler f64879b = new Handler(Looper.getMainLooper(), new C0967a());

    @Nullable
    public c f64880c;

    @Nullable
    public c f64881d;

    public class C0967a implements Handler.Callback {
        public C0967a() {
        }

        @Override
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            a.this.d((c) message.obj);
            return true;
        }
    }

    public interface b {
        void a(int i10);

        void show();
    }

    public static class c {

        @NonNull
        public final WeakReference<b> f64883a;

        public int f64884b;

        public boolean f64885c;

        public c(int i10, b bVar) {
            this.f64883a = new WeakReference<>(bVar);
            this.f64884b = i10;
        }

        public boolean a(@Nullable b bVar) {
            return bVar != null && this.f64883a.get() == bVar;
        }
    }

    public static a c() {
        if (f64877h == null) {
            f64877h = new a();
        }
        return f64877h;
    }

    public final boolean a(@NonNull c cVar, int i10) {
        b bVar = cVar.f64883a.get();
        if (bVar == null) {
            return false;
        }
        this.f64879b.removeCallbacksAndMessages(cVar);
        bVar.a(i10);
        return true;
    }

    public void b(b bVar, int i10) {
        synchronized (this.f64878a) {
            try {
                if (g(bVar)) {
                    a(this.f64880c, i10);
                } else if (h(bVar)) {
                    a(this.f64881d, i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void d(@NonNull c cVar) {
        synchronized (this.f64878a) {
            try {
                if (this.f64880c != cVar) {
                    if (this.f64881d == cVar) {
                    }
                }
                a(cVar, 2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean e(b bVar) {
        boolean g10;
        synchronized (this.f64878a) {
            g10 = g(bVar);
        }
        return g10;
    }

    public boolean f(b bVar) {
        boolean z10;
        synchronized (this.f64878a) {
            try {
                z10 = g(bVar) || h(bVar);
            } finally {
            }
        }
        return z10;
    }

    public final boolean g(b bVar) {
        c cVar = this.f64880c;
        return cVar != null && cVar.a(bVar);
    }

    public final boolean h(b bVar) {
        c cVar = this.f64881d;
        return cVar != null && cVar.a(bVar);
    }

    public void i(b bVar) {
        synchronized (this.f64878a) {
            try {
                if (g(bVar)) {
                    this.f64880c = null;
                    if (this.f64881d != null) {
                        o();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void j(b bVar) {
        synchronized (this.f64878a) {
            try {
                if (g(bVar)) {
                    m(this.f64880c);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void k(b bVar) {
        synchronized (this.f64878a) {
            try {
                if (g(bVar)) {
                    c cVar = this.f64880c;
                    if (!cVar.f64885c) {
                        cVar.f64885c = true;
                        this.f64879b.removeCallbacksAndMessages(cVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void l(b bVar) {
        synchronized (this.f64878a) {
            try {
                if (g(bVar)) {
                    c cVar = this.f64880c;
                    if (cVar.f64885c) {
                        cVar.f64885c = false;
                        m(cVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void m(@NonNull c cVar) {
        int i10 = cVar.f64884b;
        if (i10 == -2) {
            return;
        }
        if (i10 <= 0) {
            i10 = i10 == -1 ? 1500 : f64876g;
        }
        this.f64879b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f64879b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i10);
    }

    public void n(int i10, b bVar) {
        synchronized (this.f64878a) {
            try {
                if (g(bVar)) {
                    c cVar = this.f64880c;
                    cVar.f64884b = i10;
                    this.f64879b.removeCallbacksAndMessages(cVar);
                    m(this.f64880c);
                    return;
                }
                if (h(bVar)) {
                    this.f64881d.f64884b = i10;
                } else {
                    this.f64881d = new c(i10, bVar);
                }
                c cVar2 = this.f64880c;
                if (cVar2 == null || !a(cVar2, 4)) {
                    this.f64880c = null;
                    o();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void o() {
        c cVar = this.f64881d;
        if (cVar != null) {
            this.f64880c = cVar;
            this.f64881d = null;
            b bVar = cVar.f64883a.get();
            if (bVar != null) {
                bVar.show();
            } else {
                this.f64880c = null;
            }
        }
    }
}
