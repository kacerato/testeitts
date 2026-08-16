package B2;

import java.io.OutputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@k
@InterfaceC15800a
public final class o {

    public enum a implements n<byte[]> {
        INSTANCE;

        @Override
        public void ue(byte[] bArr, G g10) {
            g10.b(bArr);
        }

        @Override
        public String toString() {
            return "Funnels.byteArrayFunnel()";
        }
    }

    public enum b implements n<Integer> {
        INSTANCE;

        @Override
        public void ue(Integer num, G g10) {
            g10.putInt(num.intValue());
        }

        @Override
        public String toString() {
            return "Funnels.integerFunnel()";
        }
    }

    public enum c implements n<Long> {
        INSTANCE;

        @Override
        public void ue(Long l10, G g10) {
            g10.putLong(l10.longValue());
        }

        @Override
        public String toString() {
            return "Funnels.longFunnel()";
        }
    }

    public static class d<E> implements n<Iterable<? extends E>>, Serializable {

        public final n<E> f1456b;

        public d(n<E> nVar) {
            this.f1456b = (n) w2.H.E(nVar);
        }

        @Override
        public void ue(Iterable<? extends E> iterable, G g10) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                this.f1456b.ue(it.next(), g10);
            }
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof d) {
                return this.f1456b.equals(((d) obj).f1456b);
            }
            return false;
        }

        public int hashCode() {
            return d.class.hashCode() ^ this.f1456b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f1456b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 26);
            sb2.append("Funnels.sequentialFunnel(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class e extends OutputStream {

        public final G f1457b;

        public e(G g10) {
            this.f1457b = (G) w2.H.E(g10);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f1457b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 24);
            sb2.append("Funnels.asOutputStream(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        @Override
        public void write(int i10) {
            this.f1457b.a((byte) i10);
        }

        @Override
        public void write(byte[] bArr) {
            this.f1457b.b(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) {
            this.f1457b.e(bArr, i10, i11);
        }
    }

    public static class f implements n<CharSequence>, Serializable {

        public final Charset f1458b;

        public static class a implements Serializable {

            public static final long f1459c = 0;

            public final String f1460b;

            public a(Charset charset) {
                this.f1460b = charset.name();
            }

            public final Object a() {
                return o.f(Charset.forName(this.f1460b));
            }
        }

        public f(Charset charset) {
            this.f1458b = (Charset) w2.H.E(charset);
        }

        @Override
        public void ue(CharSequence charSequence, G g10) {
            g10.g(charSequence, this.f1458b);
        }

        public Object b() {
            return new a(this.f1458b);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof f) {
                return this.f1458b.equals(((f) obj).f1458b);
            }
            return false;
        }

        public int hashCode() {
            return f.class.hashCode() ^ this.f1458b.hashCode();
        }

        public String toString() {
            String name = this.f1458b.name();
            StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 22);
            sb2.append("Funnels.stringFunnel(");
            sb2.append(name);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public enum g implements n<CharSequence> {
        INSTANCE;

        @Override
        public void ue(CharSequence charSequence, G g10) {
            g10.d(charSequence);
        }

        @Override
        public String toString() {
            return "Funnels.unencodedCharsFunnel()";
        }
    }

    public static OutputStream a(G g10) {
        return new e(g10);
    }

    public static n<byte[]> b() {
        return a.INSTANCE;
    }

    public static n<Integer> c() {
        return b.INSTANCE;
    }

    public static n<Long> d() {
        return c.INSTANCE;
    }

    public static <E> n<Iterable<? extends E>> e(n<E> nVar) {
        return new d(nVar);
    }

    public static n<CharSequence> f(Charset charset) {
        return new f(charset);
    }

    public static n<CharSequence> g() {
        return g.INSTANCE;
    }
}
