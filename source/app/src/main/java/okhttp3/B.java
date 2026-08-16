package okhttp3;

import Tg.C3087a;
import com.tonyodev.fetch2core.FetchErrorStrings;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public final class B implements InterfaceC14585e {

    public final z f99091b;

    public final Lg.j f99092c;

    public final C3087a f99093d;

    @Nullable
    public r f99094e;

    public final C f99095f;

    public final boolean f99096g;

    public boolean f99097h;

    public class a extends C3087a {
        public a() {
        }

        @Override
        public void v() {
            B.this.cancel();
        }
    }

    public final class b extends Gg.b {

        public static final boolean f99099e = false;

        public final InterfaceC14586f f99100c;

        public b(InterfaceC14586f interfaceC14586f) {
            super("OkHttp %s", B.this.f());
            this.f99100c = interfaceC14586f;
        }

        @Override
        public void m() {
            boolean z10;
            IOException e10;
            B.this.f99093d.m();
            try {
                try {
                    E d10 = B.this.d();
                    z10 = true;
                    try {
                        if (B.this.f99092c.e()) {
                            this.f99100c.a(B.this, new IOException("Canceled"));
                        } else {
                            this.f99100c.b(B.this, d10);
                        }
                    } catch (IOException e11) {
                        e10 = e11;
                        IOException h10 = B.this.h(e10);
                        if (z10) {
                            Pg.f.k().r(4, "Callback failure for " + B.this.i(), h10);
                        } else {
                            B.this.f99094e.b(B.this, h10);
                            this.f99100c.a(B.this, h10);
                        }
                        B.this.f99091b.k().f(this);
                    }
                } catch (Throwable th2) {
                    B.this.f99091b.k().f(this);
                    throw th2;
                }
            } catch (IOException e12) {
                z10 = false;
                e10 = e12;
            }
            B.this.f99091b.k().f(this);
        }

        public void n(ExecutorService executorService) {
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e10) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e10);
                    B.this.f99094e.b(B.this, interruptedIOException);
                    this.f99100c.a(B.this, interruptedIOException);
                    B.this.f99091b.k().f(this);
                }
            } catch (Throwable th2) {
                B.this.f99091b.k().f(this);
                throw th2;
            }
        }

        public B o() {
            return B.this;
        }

        public String p() {
            return B.this.f99095f.k().p();
        }

        public C q() {
            return B.this.f99095f;
        }
    }

    public B(z zVar, C c10, boolean z10) {
        this.f99091b = zVar;
        this.f99095f = c10;
        this.f99096g = z10;
        this.f99092c = new Lg.j(zVar, z10);
        a aVar = new a();
        this.f99093d = aVar;
        aVar.h(zVar.e(), TimeUnit.MILLISECONDS);
    }

    public static B e(z zVar, C c10, boolean z10) {
        B b10 = new B(zVar, c10, z10);
        b10.f99094e = zVar.m().a(b10);
        return b10;
    }

    @Override
    public synchronized boolean H3() {
        return this.f99097h;
    }

    @Override
    public void V4(InterfaceC14586f interfaceC14586f) {
        synchronized (this) {
            if (this.f99097h) {
                throw new IllegalStateException("Already Executed");
            }
            this.f99097h = true;
        }
        b();
        this.f99094e.c(this);
        this.f99091b.k().b(new b(interfaceC14586f));
    }

    @Override
    public Tg.z a0() {
        return this.f99093d;
    }

    public final void b() {
        this.f99092c.j(Pg.f.k().o("response.body().close()"));
    }

    @Override
    public C b0() {
        return this.f99095f;
    }

    @Override
    public B mo1777clone() {
        return e(this.f99091b, this.f99095f, this.f99096g);
    }

    @Override
    public void cancel() {
        this.f99092c.b();
    }

    public E d() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f99091b.q());
        arrayList.add(this.f99092c);
        arrayList.add(new Lg.a(this.f99091b.j()));
        arrayList.add(new Ig.a(this.f99091b.r()));
        arrayList.add(new Kg.a(this.f99091b));
        if (!this.f99096g) {
            arrayList.addAll(this.f99091b.s());
        }
        arrayList.add(new Lg.b(this.f99096g));
        return new Lg.g(arrayList, null, null, null, 0, this.f99095f, this, this.f99094e, this.f99091b.g(), this.f99091b.A(), this.f99091b.E()).c(this.f99095f);
    }

    @Override
    public E execute() throws IOException {
        synchronized (this) {
            if (this.f99097h) {
                throw new IllegalStateException("Already Executed");
            }
            this.f99097h = true;
        }
        b();
        this.f99093d.m();
        this.f99094e.c(this);
        try {
            try {
                this.f99091b.k().c(this);
                E d10 = d();
                if (d10 != null) {
                    return d10;
                }
                throw new IOException("Canceled");
            } catch (IOException e10) {
                IOException h10 = h(e10);
                this.f99094e.b(this, h10);
                throw h10;
            }
        } finally {
            this.f99091b.k().g(this);
        }
    }

    public String f() {
        return this.f99095f.k().N();
    }

    public Kg.f g() {
        return this.f99092c.k();
    }

    @Nullable
    public IOException h(@Nullable IOException iOException) {
        if (!this.f99093d.p()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException(FetchErrorStrings.CONNECTION_TIMEOUT);
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public String i() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(isCanceled() ? "canceled " : "");
        sb2.append(this.f99096g ? "web socket" : "call");
        sb2.append(" to ");
        sb2.append(f());
        return sb2.toString();
    }

    @Override
    public boolean isCanceled() {
        return this.f99092c.e();
    }
}
