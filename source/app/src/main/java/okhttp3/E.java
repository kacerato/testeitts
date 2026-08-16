package okhttp3;

import Tg.C3089c;
import java.io.Closeable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.u;
import org.eclipse.jdt.internal.core.JavaElement;

public final class E implements Closeable {

    public final C f99121b;

    public final A f99122c;

    public final int f99123d;

    public final String f99124e;

    @Nullable
    public final t f99125f;

    public final u f99126g;

    @Nullable
    public final F f99127h;

    @Nullable
    public final E f99128i;

    @Nullable
    public final E f99129j;

    @Nullable
    public final E f99130k;

    public final long f99131l;

    public final long f99132m;

    @Nullable
    public volatile C14584d f99133n;

    public E(a aVar) {
        this.f99121b = aVar.f99134a;
        this.f99122c = aVar.f99135b;
        this.f99123d = aVar.f99136c;
        this.f99124e = aVar.f99137d;
        this.f99125f = aVar.f99138e;
        this.f99126g = aVar.f99139f.h();
        this.f99127h = aVar.f99140g;
        this.f99128i = aVar.f99141h;
        this.f99129j = aVar.f99142i;
        this.f99130k = aVar.f99143j;
        this.f99131l = aVar.f99144k;
        this.f99132m = aVar.f99145l;
    }

    @Nullable
    public F c() {
        return this.f99127h;
    }

    @Override
    public void close() {
        F f10 = this.f99127h;
        if (f10 == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        f10.close();
    }

    public C14584d d() {
        C14584d c14584d = this.f99133n;
        if (c14584d != null) {
            return c14584d;
        }
        C14584d m10 = C14584d.m(this.f99126g);
        this.f99133n = m10;
        return m10;
    }

    @Nullable
    public E e() {
        return this.f99129j;
    }

    public List<C14588h> f() {
        String str;
        int i10 = this.f99123d;
        if (i10 == 401) {
            str = F2.d.f6181M0;
        } else {
            if (i10 != 407) {
                return Collections.emptyList();
            }
            str = F2.d.f6287x0;
        }
        return Lg.e.g(m(), str);
    }

    public int g() {
        return this.f99123d;
    }

    @Nullable
    public t h() {
        return this.f99125f;
    }

    @Nullable
    public String j(String str) {
        return k(str, null);
    }

    @Nullable
    public String k(String str, @Nullable String str2) {
        String d10 = this.f99126g.d(str);
        return d10 != null ? d10 : str2;
    }

    public List<String> l(String str) {
        return this.f99126g.o(str);
    }

    public u m() {
        return this.f99126g;
    }

    public boolean n() {
        int i10 = this.f99123d;
        if (i10 == 307 || i10 == 308) {
            return true;
        }
        switch (i10) {
            case 300:
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    public boolean o() {
        int i10 = this.f99123d;
        return i10 >= 200 && i10 < 300;
    }

    public String p() {
        return this.f99124e;
    }

    @Nullable
    public E q() {
        return this.f99128i;
    }

    public a r() {
        return new a(this);
    }

    public F s(long j10) throws IOException {
        Tg.e n10 = this.f99127h.n();
        n10.i(j10);
        C3089c clone = n10.C().clone();
        if (clone.Q() > j10) {
            C3089c c3089c = new C3089c();
            c3089c.h0(clone, j10);
            clone.c();
            clone = c3089c;
        }
        return F.j(this.f99127h.h(), clone.Q(), clone);
    }

    @Nullable
    public E t() {
        return this.f99130k;
    }

    public String toString() {
        return "Response{protocol=" + ((Object) this.f99122c) + ", code=" + this.f99123d + ", message=" + this.f99124e + ", url=" + ((Object) this.f99121b.k()) + JavaElement.JEM_ANNOTATION;
    }

    public A u() {
        return this.f99122c;
    }

    public long v() {
        return this.f99132m;
    }

    public C w() {
        return this.f99121b;
    }

    public long x() {
        return this.f99131l;
    }

    public static class a {

        @Nullable
        public C f99134a;

        @Nullable
        public A f99135b;

        public int f99136c;

        public String f99137d;

        @Nullable
        public t f99138e;

        public u.a f99139f;

        @Nullable
        public F f99140g;

        @Nullable
        public E f99141h;

        @Nullable
        public E f99142i;

        @Nullable
        public E f99143j;

        public long f99144k;

        public long f99145l;

        public a() {
            this.f99136c = -1;
            this.f99139f = new u.a();
        }

        public a a(String str, String str2) {
            this.f99139f.b(str, str2);
            return this;
        }

        public a b(@Nullable F f10) {
            this.f99140g = f10;
            return this;
        }

        public E c() {
            if (this.f99134a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f99135b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f99136c >= 0) {
                if (this.f99137d != null) {
                    return new E(this);
                }
                throw new IllegalStateException("message == null");
            }
            throw new IllegalStateException("code < 0: " + this.f99136c);
        }

        public a d(@Nullable E e10) {
            if (e10 != null) {
                f("cacheResponse", e10);
            }
            this.f99142i = e10;
            return this;
        }

        public final void e(E e10) {
            if (e10.f99127h != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public final void f(String str, E e10) {
            if (e10.f99127h != null) {
                throw new IllegalArgumentException(str + ".body != null");
            }
            if (e10.f99128i != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            if (e10.f99129j != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (e10.f99130k == null) {
                return;
            }
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }

        public a g(int i10) {
            this.f99136c = i10;
            return this;
        }

        public a h(@Nullable t tVar) {
            this.f99138e = tVar;
            return this;
        }

        public a i(String str, String str2) {
            this.f99139f.k(str, str2);
            return this;
        }

        public a j(u uVar) {
            this.f99139f = uVar.i();
            return this;
        }

        public a k(String str) {
            this.f99137d = str;
            return this;
        }

        public a l(@Nullable E e10) {
            if (e10 != null) {
                f("networkResponse", e10);
            }
            this.f99141h = e10;
            return this;
        }

        public a m(@Nullable E e10) {
            if (e10 != null) {
                e(e10);
            }
            this.f99143j = e10;
            return this;
        }

        public a n(A a10) {
            this.f99135b = a10;
            return this;
        }

        public a o(long j10) {
            this.f99145l = j10;
            return this;
        }

        public a p(String str) {
            this.f99139f.j(str);
            return this;
        }

        public a q(C c10) {
            this.f99134a = c10;
            return this;
        }

        public a r(long j10) {
            this.f99144k = j10;
            return this;
        }

        public a(E e10) {
            this.f99136c = -1;
            this.f99134a = e10.f99121b;
            this.f99135b = e10.f99122c;
            this.f99136c = e10.f99123d;
            this.f99137d = e10.f99124e;
            this.f99138e = e10.f99125f;
            this.f99139f = e10.f99126g.i();
            this.f99140g = e10.f99127h;
            this.f99141h = e10.f99128i;
            this.f99142i = e10.f99129j;
            this.f99143j = e10.f99130k;
            this.f99144k = e10.f99131l;
            this.f99145l = e10.f99132m;
        }
    }
}
