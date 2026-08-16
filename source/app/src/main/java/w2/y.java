package w2;

import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@InterfaceC15894k
@v2.b
public class y {

    public final String f126383a;

    public class a extends y {

        public final String f126384b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(y yVar, String str) {
            super(yVar, null);
            this.f126384b = str;
        }

        @Override
        public y q() {
            throw new UnsupportedOperationException("already specified useForNull");
        }

        @Override
        public CharSequence r(@CheckForNull Object obj) {
            return obj == null ? this.f126384b : y.this.r(obj);
        }

        @Override
        public y s(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    public class b extends y {
        public b(y yVar) {
            super(yVar, null);
        }

        @Override
        public <A extends Appendable> A d(A a10, Iterator<? extends Object> it) throws IOException {
            H.F(a10, "appendable");
            H.F(it, "parts");
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (next != null) {
                    a10.append(y.this.r(next));
                    break;
                }
            }
            while (it.hasNext()) {
                Object next2 = it.next();
                if (next2 != null) {
                    a10.append(y.this.f126383a);
                    a10.append(y.this.r(next2));
                }
            }
            return a10;
        }

        @Override
        public y s(String str) {
            throw new UnsupportedOperationException("already specified skipNulls");
        }

        @Override
        public d u(String str) {
            throw new UnsupportedOperationException("can't use .skipNulls() with maps");
        }
    }

    public class c extends AbstractList<Object> {

        public final Object[] f126387b;

        public final Object f126388c;

        public final Object f126389d;

        public c(Object[] objArr, Object obj, Object obj2) {
            this.f126387b = objArr;
            this.f126388c = obj;
            this.f126389d = obj2;
        }

        @Override
        @CheckForNull
        public Object get(int i10) {
            return i10 != 0 ? i10 != 1 ? this.f126387b[i10 - 2] : this.f126389d : this.f126388c;
        }

        @Override
        public int size() {
            return this.f126387b.length + 2;
        }
    }

    public static final class d {

        public final y f126390a;

        public final String f126391b;

        public d(y yVar, String str, a aVar) {
            this(yVar, str);
        }

        @I2.a
        @InterfaceC15800a
        public <A extends Appendable> A a(A a10, Iterable<? extends Map.Entry<?, ?>> iterable) throws IOException {
            return (A) b(a10, iterable.iterator());
        }

        @I2.a
        @InterfaceC15800a
        public <A extends Appendable> A b(A a10, Iterator<? extends Map.Entry<?, ?>> it) throws IOException {
            H.E(a10);
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                a10.append(this.f126390a.r(next.getKey()));
                a10.append(this.f126391b);
                a10.append(this.f126390a.r(next.getValue()));
                while (it.hasNext()) {
                    a10.append(this.f126390a.f126383a);
                    Map.Entry<?, ?> next2 = it.next();
                    a10.append(this.f126390a.r(next2.getKey()));
                    a10.append(this.f126391b);
                    a10.append(this.f126390a.r(next2.getValue()));
                }
            }
            return a10;
        }

        @I2.a
        public <A extends Appendable> A c(A a10, Map<?, ?> map) throws IOException {
            return (A) a(a10, map.entrySet());
        }

        @I2.a
        @InterfaceC15800a
        public StringBuilder d(StringBuilder sb2, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return e(sb2, iterable.iterator());
        }

        @I2.a
        @InterfaceC15800a
        public StringBuilder e(StringBuilder sb2, Iterator<? extends Map.Entry<?, ?>> it) {
            try {
                b(sb2, it);
                return sb2;
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @I2.a
        public StringBuilder f(StringBuilder sb2, Map<?, ?> map) {
            return d(sb2, map.entrySet());
        }

        @InterfaceC15800a
        public String g(Iterable<? extends Map.Entry<?, ?>> iterable) {
            return h(iterable.iterator());
        }

        @InterfaceC15800a
        public String h(Iterator<? extends Map.Entry<?, ?>> it) {
            return e(new StringBuilder(), it).toString();
        }

        public String i(Map<?, ?> map) {
            return g(map.entrySet());
        }

        public d j(String str) {
            return new d(this.f126390a.s(str), this.f126391b);
        }

        public d(y yVar, String str) {
            this.f126390a = yVar;
            this.f126391b = (String) H.E(str);
        }
    }

    public y(y yVar, a aVar) {
        this(yVar);
    }

    public static Iterable<Object> j(@CheckForNull Object obj, @CheckForNull Object obj2, Object[] objArr) {
        H.E(objArr);
        return new c(objArr, obj, obj2);
    }

    public static y o(char c10) {
        return new y(String.valueOf(c10));
    }

    public static y p(String str) {
        return new y(str);
    }

    @I2.a
    public <A extends Appendable> A b(A a10, Iterable<? extends Object> iterable) throws IOException {
        return (A) d(a10, iterable.iterator());
    }

    @I2.a
    public final <A extends Appendable> A c(A a10, @CheckForNull Object obj, @CheckForNull Object obj2, Object... objArr) throws IOException {
        return (A) b(a10, j(obj, obj2, objArr));
    }

    @I2.a
    public <A extends Appendable> A d(A a10, Iterator<? extends Object> it) throws IOException {
        H.E(a10);
        if (it.hasNext()) {
            a10.append(r(it.next()));
            while (it.hasNext()) {
                a10.append(this.f126383a);
                a10.append(r(it.next()));
            }
        }
        return a10;
    }

    @I2.a
    public final <A extends Appendable> A e(A a10, Object[] objArr) throws IOException {
        return (A) b(a10, Arrays.asList(objArr));
    }

    @I2.a
    public final StringBuilder f(StringBuilder sb2, Iterable<? extends Object> iterable) {
        return h(sb2, iterable.iterator());
    }

    @I2.a
    public final StringBuilder g(StringBuilder sb2, @CheckForNull Object obj, @CheckForNull Object obj2, Object... objArr) {
        return f(sb2, j(obj, obj2, objArr));
    }

    @I2.a
    public final StringBuilder h(StringBuilder sb2, Iterator<? extends Object> it) {
        try {
            d(sb2, it);
            return sb2;
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    @I2.a
    public final StringBuilder i(StringBuilder sb2, Object[] objArr) {
        return f(sb2, Arrays.asList(objArr));
    }

    public final String k(Iterable<? extends Object> iterable) {
        return m(iterable.iterator());
    }

    public final String l(@CheckForNull Object obj, @CheckForNull Object obj2, Object... objArr) {
        return k(j(obj, obj2, objArr));
    }

    public final String m(Iterator<? extends Object> it) {
        return h(new StringBuilder(), it).toString();
    }

    public final String n(Object[] objArr) {
        return k(Arrays.asList(objArr));
    }

    public y q() {
        return new b(this);
    }

    public CharSequence r(@CheckForNull Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public y s(String str) {
        H.E(str);
        return new a(this, str);
    }

    public d t(char c10) {
        return u(String.valueOf(c10));
    }

    public d u(String str) {
        return new d(this, str, null);
    }

    public y(String str) {
        this.f126383a = (String) H.E(str);
    }

    public y(y yVar) {
        this.f126383a = yVar.f126383a;
    }
}
