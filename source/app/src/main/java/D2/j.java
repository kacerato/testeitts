package D2;

import com.google.common.collect.AbstractC12503c;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.M1;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.C15883c;
import w2.H;
import w2.M;

@v2.c
@p
public abstract class j {

    public final class a extends AbstractC2488f {

        public final Charset f4769a;

        public a(Charset charset) {
            this.f4769a = (Charset) H.E(charset);
        }

        @Override
        public j a(Charset charset) {
            return charset.equals(this.f4769a) ? j.this : super.a(charset);
        }

        @Override
        public InputStream m() throws IOException {
            return new E(j.this.m(), this.f4769a, 8192);
        }

        public String toString() {
            String obj = j.this.toString();
            String valueOf = String.valueOf(this.f4769a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 15 + valueOf.length());
            sb2.append(obj);
            sb2.append(".asByteSource(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class b extends j {

        public static final M f4771b = M.m("\r\n|\n|\r");

        public final CharSequence f4772a;

        public class a extends AbstractC12503c<String> {

            public Iterator<String> f4773d;

            public a() {
                this.f4773d = b.f4771b.n(b.this.f4772a).iterator();
            }

            @Override
            @CheckForNull
            public String a() {
                if (this.f4773d.hasNext()) {
                    String next = this.f4773d.next();
                    if (this.f4773d.hasNext() || !next.isEmpty()) {
                        return next;
                    }
                }
                return b();
            }
        }

        public b(CharSequence charSequence) {
            this.f4772a = (CharSequence) H.E(charSequence);
        }

        @Override
        public boolean i() {
            return this.f4772a.length() == 0;
        }

        @Override
        public long j() {
            return this.f4772a.length();
        }

        @Override
        public w2.C<Long> k() {
            return w2.C.f(Long.valueOf(this.f4772a.length()));
        }

        @Override
        public Reader m() {
            return new h(this.f4772a);
        }

        @Override
        public String n() {
            return this.f4772a.toString();
        }

        @Override
        @CheckForNull
        public String o() {
            Iterator<String> t10 = t();
            if (t10.hasNext()) {
                return t10.next();
            }
            return null;
        }

        @Override
        public AbstractC12521g1<String> p() {
            return AbstractC12521g1.s(t());
        }

        @Override
        @C
        public <T> T q(w<T> wVar) throws IOException {
            Iterator<String> t10 = t();
            while (t10.hasNext() && wVar.a(t10.next())) {
            }
            return wVar.getResult();
        }

        public final Iterator<String> t() {
            return new a();
        }

        public String toString() {
            String k10 = C15883c.k(this.f4772a, 30, "...");
            StringBuilder sb2 = new StringBuilder(String.valueOf(k10).length() + 17);
            sb2.append("CharSource.wrap(");
            sb2.append(k10);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class c extends j {

        public final Iterable<? extends j> f4775a;

        public c(Iterable<? extends j> iterable) {
            this.f4775a = (Iterable) H.E(iterable);
        }

        @Override
        public boolean i() throws IOException {
            Iterator<? extends j> it = this.f4775a.iterator();
            while (it.hasNext()) {
                if (!it.next().i()) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public long j() throws IOException {
            Iterator<? extends j> it = this.f4775a.iterator();
            long j10 = 0;
            while (it.hasNext()) {
                j10 += it.next().j();
            }
            return j10;
        }

        @Override
        public w2.C<Long> k() {
            Iterator<? extends j> it = this.f4775a.iterator();
            long j10 = 0;
            while (it.hasNext()) {
                w2.C<Long> k10 = it.next().k();
                if (!k10.e()) {
                    return w2.C.a();
                }
                j10 += k10.d().longValue();
            }
            return w2.C.f(Long.valueOf(j10));
        }

        @Override
        public Reader m() throws IOException {
            return new B(this.f4775a.iterator());
        }

        public String toString() {
            String valueOf = String.valueOf(this.f4775a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 19);
            sb2.append("CharSource.concat(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class d extends e {

        public static final d f4776c = new d();

        public d() {
            super("");
        }

        @Override
        public String toString() {
            return "CharSource.empty()";
        }
    }

    public static class e extends b {
        public e(String str) {
            super(str);
        }

        @Override
        public long e(i iVar) throws IOException {
            H.E(iVar);
            try {
                ((Writer) m.c().d(iVar.b())).write((String) this.f4772a);
                return this.f4772a.length();
            } finally {
            }
        }

        @Override
        public long f(Appendable appendable) throws IOException {
            appendable.append(this.f4772a);
            return this.f4772a.length();
        }

        @Override
        public Reader m() {
            return new StringReader((String) this.f4772a);
        }
    }

    public static j b(Iterable<? extends j> iterable) {
        return new c(iterable);
    }

    public static j c(Iterator<? extends j> it) {
        return b(AbstractC12521g1.s(it));
    }

    public static j d(j... jVarArr) {
        return b(AbstractC12521g1.u(jVarArr));
    }

    public static j h() {
        return d.f4776c;
    }

    public static j r(CharSequence charSequence) {
        return charSequence instanceof String ? new e((String) charSequence) : new b(charSequence);
    }

    @InterfaceC15800a
    public AbstractC2488f a(Charset charset) {
        return new a(charset);
    }

    @I2.a
    public long e(i iVar) throws IOException {
        H.E(iVar);
        m c10 = m.c();
        try {
            return k.b((Reader) c10.d(m()), (Writer) c10.d(iVar.b()));
        } finally {
        }
    }

    @I2.a
    public long f(Appendable appendable) throws IOException {
        H.E(appendable);
        try {
            return k.b((Reader) m.c().d(m()), appendable);
        } finally {
        }
    }

    public final long g(Reader reader) throws IOException {
        long j10 = 0;
        while (true) {
            long skip = reader.skip(Long.MAX_VALUE);
            if (skip == 0) {
                return j10;
            }
            j10 += skip;
        }
    }

    public boolean i() throws IOException {
        w2.C<Long> k10 = k();
        if (k10.e()) {
            return k10.d().longValue() == 0;
        }
        m c10 = m.c();
        try {
            return ((Reader) c10.d(m())).read() == -1;
        } catch (Throwable th2) {
            try {
                throw c10.e(th2);
            } finally {
                c10.close();
            }
        }
    }

    @InterfaceC15800a
    public long j() throws IOException {
        w2.C<Long> k10 = k();
        if (k10.e()) {
            return k10.d().longValue();
        }
        try {
            return g((Reader) m.c().d(m()));
        } finally {
        }
    }

    @InterfaceC15800a
    public w2.C<Long> k() {
        return w2.C.a();
    }

    public BufferedReader l() throws IOException {
        Reader m10 = m();
        return m10 instanceof BufferedReader ? (BufferedReader) m10 : new BufferedReader(m10);
    }

    public abstract Reader m() throws IOException;

    public String n() throws IOException {
        try {
            return k.k((Reader) m.c().d(m()));
        } finally {
        }
    }

    @CheckForNull
    public String o() throws IOException {
        try {
            return ((BufferedReader) m.c().d(l())).readLine();
        } finally {
        }
    }

    public AbstractC12521g1<String> p() throws IOException {
        try {
            BufferedReader bufferedReader = (BufferedReader) m.c().d(l());
            ArrayList q10 = M1.q();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return AbstractC12521g1.r(q10);
                }
                q10.add(readLine);
            }
        } finally {
        }
    }

    @I2.a
    @C
    @InterfaceC15800a
    public <T> T q(w<T> wVar) throws IOException {
        H.E(wVar);
        try {
            return (T) k.h((Reader) m.c().d(m()), wVar);
        } finally {
        }
    }
}
