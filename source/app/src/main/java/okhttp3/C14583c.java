package okhttp3;

import Ig.d;
import Tg.C3089c;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import okhttp3.C;
import okhttp3.E;
import okhttp3.u;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C14583c implements Closeable, Flushable {

    public static final int f99169i = 201105;

    public static final int f99170j = 0;

    public static final int f99171k = 1;

    public static final int f99172l = 2;

    public final Ig.f f99173b;

    public final Ig.d f99174c;

    public int f99175d;

    public int f99176e;

    public int f99177f;

    public int f99178g;

    public int f99179h;

    public class a implements Ig.f {
        public a() {
        }

        @Override
        public void a(Ig.c cVar) {
            C14583c.this.s(cVar);
        }

        @Override
        public void b(C c10) throws IOException {
            C14583c.this.o(c10);
        }

        @Override
        public E c(C c10) throws IOException {
            return C14583c.this.f(c10);
        }

        @Override
        public void d(E e10, E e11) {
            C14583c.this.t(e10, e11);
        }

        @Override
        public Ig.b e(E e10) throws IOException {
            return C14583c.this.m(e10);
        }

        @Override
        public void f() {
            C14583c.this.r();
        }
    }

    public class b implements Iterator<String> {

        public final Iterator<d.f> f99181b;

        @Nullable
        public String f99182c;

        public boolean f99183d;

        public b() throws IOException {
            this.f99181b = C14583c.this.f99174c.y();
        }

        @Override
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.f99182c;
            this.f99182c = null;
            this.f99183d = true;
            return str;
        }

        @Override
        public boolean hasNext() {
            if (this.f99182c != null) {
                return true;
            }
            this.f99183d = false;
            while (this.f99181b.hasNext()) {
                d.f next = this.f99181b.next();
                try {
                    this.f99182c = Tg.p.d(next.e(0)).L1();
                    return true;
                } catch (IOException unused) {
                } finally {
                    next.close();
                }
            }
            return false;
        }

        @Override
        public void remove() {
            if (!this.f99183d) {
                throw new IllegalStateException("remove() before next()");
            }
            this.f99181b.remove();
        }
    }

    public final class C1894c implements Ig.b {

        public final d.C0237d f99185a;

        public Tg.x f99186b;

        public Tg.x f99187c;

        public boolean f99188d;

        public class a extends Tg.h {

            public final C14583c f99190c;

            public final d.C0237d f99191d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Tg.x xVar, C14583c c14583c, d.C0237d c0237d) {
                super(xVar);
                this.f99190c = c14583c;
                this.f99191d = c0237d;
            }

            @Override
            public void close() throws IOException {
                synchronized (C14583c.this) {
                    try {
                        C1894c c1894c = C1894c.this;
                        if (c1894c.f99188d) {
                            return;
                        }
                        c1894c.f99188d = true;
                        C14583c.this.f99175d++;
                        super.close();
                        this.f99191d.c();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public C1894c(d.C0237d c0237d) {
            this.f99185a = c0237d;
            Tg.x e10 = c0237d.e(1);
            this.f99186b = e10;
            this.f99187c = new a(e10, C14583c.this, c0237d);
        }

        @Override
        public void a() {
            synchronized (C14583c.this) {
                try {
                    if (this.f99188d) {
                        return;
                    }
                    this.f99188d = true;
                    C14583c.this.f99176e++;
                    Gg.c.g(this.f99186b);
                    try {
                        this.f99185a.a();
                    } catch (IOException unused) {
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public Tg.x b() {
            return this.f99187c;
        }
    }

    public static class d extends F {

        public final d.f f99193c;

        public final Tg.e f99194d;

        @Nullable
        public final String f99195e;

        @Nullable
        public final String f99196f;

        public class a extends Tg.i {

            public final d.f f99197c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Tg.y yVar, d.f fVar) {
                super(yVar);
                this.f99197c = fVar;
            }

            @Override
            public void close() throws IOException {
                this.f99197c.close();
                super.close();
            }
        }

        public d(d.f fVar, String str, String str2) {
            this.f99193c = fVar;
            this.f99195e = str;
            this.f99196f = str2;
            this.f99194d = Tg.p.d(new a(fVar.e(1), fVar));
        }

        @Override
        public long g() {
            try {
                String str = this.f99196f;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override
        public x h() {
            String str = this.f99195e;
            if (str != null) {
                return x.d(str);
            }
            return null;
        }

        @Override
        public Tg.e n() {
            return this.f99194d;
        }
    }

    public C14583c(File file, long j10) {
        this(file, j10, Og.a.f20090a);
    }

    public static String j(v vVar) {
        return Tg.f.m(vVar.toString()).H().s();
    }

    public static int n(Tg.e eVar) throws IOException {
        try {
            long c22 = eVar.c2();
            String L12 = eVar.L1();
            if (c22 >= 0 && c22 <= 2147483647L && L12.isEmpty()) {
                return (int) c22;
            }
            throw new IOException("expected an int but was \"" + c22 + L12 + JavadocConstants.ANCHOR_PREFIX_END);
        } catch (NumberFormatException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    public final void a(@Nullable d.C0237d c0237d) {
        if (c0237d != null) {
            try {
                c0237d.a();
            } catch (IOException unused) {
            }
        }
    }

    public void c() throws IOException {
        this.f99174c.f();
    }

    @Override
    public void close() throws IOException {
        this.f99174c.close();
    }

    public File d() {
        return this.f99174c.l();
    }

    public void e() throws IOException {
        this.f99174c.j();
    }

    @Nullable
    public E f(C c10) {
        try {
            d.f k10 = this.f99174c.k(j(c10.k()));
            if (k10 == null) {
                return null;
            }
            try {
                e eVar = new e(k10.e(0));
                E d10 = eVar.d(k10);
                if (eVar.b(c10, d10)) {
                    return d10;
                }
                Gg.c.g(d10.c());
                return null;
            } catch (IOException unused) {
                Gg.c.g(k10);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    @Override
    public void flush() throws IOException {
        this.f99174c.flush();
    }

    public synchronized int g() {
        return this.f99178g;
    }

    public void h() throws IOException {
        this.f99174c.n();
    }

    public boolean isClosed() {
        return this.f99174c.isClosed();
    }

    public long k() {
        return this.f99174c.m();
    }

    public synchronized int l() {
        return this.f99177f;
    }

    @Nullable
    public Ig.b m(E e10) {
        d.C0237d c0237d;
        String g10 = e10.w().g();
        if (Lg.f.a(e10.w().g())) {
            try {
                o(e10.w());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!g10.equals(FetchCoreUtils.GET_REQUEST_METHOD) || Lg.e.e(e10)) {
            return null;
        }
        e eVar = new e(e10);
        try {
            c0237d = this.f99174c.g(j(e10.w().k()));
            if (c0237d == null) {
                return null;
            }
            try {
                eVar.f(c0237d);
                return new C1894c(c0237d);
            } catch (IOException unused2) {
                a(c0237d);
                return null;
            }
        } catch (IOException unused3) {
            c0237d = null;
        }
    }

    public void o(C c10) throws IOException {
        this.f99174c.u(j(c10.k()));
    }

    public synchronized int p() {
        return this.f99179h;
    }

    public long q() throws IOException {
        return this.f99174c.x();
    }

    public synchronized void r() {
        this.f99178g++;
    }

    public synchronized void s(Ig.c cVar) {
        try {
            this.f99179h++;
            if (cVar.f9357a != null) {
                this.f99177f++;
            } else if (cVar.f9358b != null) {
                this.f99178g++;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void t(E e10, E e11) {
        d.C0237d c0237d;
        e eVar = new e(e11);
        try {
            c0237d = ((d) e10.c()).f99193c.c();
            if (c0237d != null) {
                try {
                    eVar.f(c0237d);
                    c0237d.c();
                } catch (IOException unused) {
                    a(c0237d);
                }
            }
        } catch (IOException unused2) {
            c0237d = null;
        }
    }

    public Iterator<String> u() throws IOException {
        return new b();
    }

    public synchronized int v() {
        return this.f99176e;
    }

    public synchronized int w() {
        return this.f99175d;
    }

    public C14583c(File file, long j10, Og.a aVar) {
        this.f99173b = new a();
        this.f99174c = Ig.d.e(aVar, file, f99169i, 2, j10);
    }

    public static final class e {

        public static final String f99199k = Pg.f.k().l() + "-Sent-Millis";

        public static final String f99200l = Pg.f.k().l() + "-Received-Millis";

        public final String f99201a;

        public final u f99202b;

        public final String f99203c;

        public final A f99204d;

        public final int f99205e;

        public final String f99206f;

        public final u f99207g;

        @Nullable
        public final t f99208h;

        public final long f99209i;

        public final long f99210j;

        public e(Tg.y yVar) throws IOException {
            H h10;
            try {
                Tg.e d10 = Tg.p.d(yVar);
                this.f99201a = d10.L1();
                this.f99203c = d10.L1();
                u.a aVar = new u.a();
                int n10 = C14583c.n(d10);
                for (int i10 = 0; i10 < n10; i10++) {
                    aVar.e(d10.L1());
                }
                this.f99202b = aVar.h();
                Lg.k b10 = Lg.k.b(d10.L1());
                this.f99204d = b10.f13451a;
                this.f99205e = b10.f13452b;
                this.f99206f = b10.f13453c;
                u.a aVar2 = new u.a();
                int n11 = C14583c.n(d10);
                for (int i11 = 0; i11 < n11; i11++) {
                    aVar2.e(d10.L1());
                }
                String str = f99199k;
                String i12 = aVar2.i(str);
                String str2 = f99200l;
                String i13 = aVar2.i(str2);
                aVar2.j(str);
                aVar2.j(str2);
                this.f99209i = i12 != null ? Long.parseLong(i12) : 0L;
                this.f99210j = i13 != null ? Long.parseLong(i13) : 0L;
                this.f99207g = aVar2.h();
                if (a()) {
                    String L12 = d10.L1();
                    if (L12.length() <= 0) {
                        C14589i a10 = C14589i.a(d10.L1());
                        List<Certificate> c10 = c(d10);
                        List<Certificate> c11 = c(d10);
                        if (!d10.b2()) {
                            h10 = H.a(d10.L1());
                        } else {
                            h10 = H.SSL_3_0;
                        }
                        this.f99208h = t.c(h10, a10, c10, c11);
                    } else {
                        throw new IOException("expected \"\" but was \"" + L12 + JavadocConstants.ANCHOR_PREFIX_END);
                    }
                } else {
                    this.f99208h = null;
                }
                yVar.close();
            } catch (Throwable th2) {
                yVar.close();
                throw th2;
            }
        }

        public final boolean a() {
            return this.f99201a.startsWith("https://");
        }

        public boolean b(C c10, E e10) {
            return this.f99201a.equals(c10.k().toString()) && this.f99203c.equals(c10.g()) && Lg.e.v(e10, this.f99202b, c10);
        }

        public final List<Certificate> c(Tg.e eVar) throws IOException {
            int n10 = C14583c.n(eVar);
            if (n10 == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(n10);
                for (int i10 = 0; i10 < n10; i10++) {
                    String L12 = eVar.L1();
                    C3089c c3089c = new C3089c();
                    c3089c.D(Tg.f.g(L12));
                    arrayList.add(certificateFactory.generateCertificate(c3089c.j2()));
                }
                return arrayList;
            } catch (CertificateException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public E d(d.f fVar) {
            String d10 = this.f99207g.d("Content-Type");
            String d11 = this.f99207g.d("Content-Length");
            return new E.a().q(new C.a().q(this.f99201a).j(this.f99203c, null).i(this.f99202b).b()).n(this.f99204d).g(this.f99205e).k(this.f99206f).j(this.f99207g).b(new d(fVar, d10, d11)).h(this.f99208h).r(this.f99209i).o(this.f99210j).c();
        }

        public final void e(Tg.d dVar, List<Certificate> list) throws IOException {
            try {
                dVar.J(list.size()).writeByte(10);
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    dVar.X(Tg.f.J(list.get(i10).getEncoded()).b()).writeByte(10);
                }
            } catch (CertificateEncodingException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public void f(d.C0237d c0237d) throws IOException {
            Tg.d c10 = Tg.p.c(c0237d.e(0));
            c10.X(this.f99201a).writeByte(10);
            c10.X(this.f99203c).writeByte(10);
            c10.J(this.f99202b.l()).writeByte(10);
            int l10 = this.f99202b.l();
            for (int i10 = 0; i10 < l10; i10++) {
                c10.X(this.f99202b.g(i10)).X(": ").X(this.f99202b.n(i10)).writeByte(10);
            }
            c10.X(new Lg.k(this.f99204d, this.f99205e, this.f99206f).toString()).writeByte(10);
            c10.J(this.f99207g.l() + 2).writeByte(10);
            int l11 = this.f99207g.l();
            for (int i11 = 0; i11 < l11; i11++) {
                c10.X(this.f99207g.g(i11)).X(": ").X(this.f99207g.n(i11)).writeByte(10);
            }
            c10.X(f99199k).X(": ").J(this.f99209i).writeByte(10);
            c10.X(f99200l).X(": ").J(this.f99210j).writeByte(10);
            if (a()) {
                c10.writeByte(10);
                c10.X(this.f99208h.a().d()).writeByte(10);
                e(c10, this.f99208h.f());
                e(c10, this.f99208h.d());
                c10.X(this.f99208h.h().c()).writeByte(10);
            }
            c10.close();
        }

        public e(E e10) {
            this.f99201a = e10.w().k().toString();
            this.f99202b = Lg.e.u(e10);
            this.f99203c = e10.w().g();
            this.f99204d = e10.u();
            this.f99205e = e10.g();
            this.f99206f = e10.p();
            this.f99207g = e10.m();
            this.f99208h = e10.h();
            this.f99209i = e10.x();
            this.f99210j = e10.v();
        }
    }
}
