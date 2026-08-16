package w2;

import java.io.Serializable;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b
public final class S {

    @v2.d
    public static class a<T> implements Q<T>, Serializable {

        public static final long f126204f = 0;

        public final Q<T> f126205b;

        public final long f126206c;

        @CheckForNull
        public volatile transient T f126207d;

        public volatile transient long f126208e;

        public a(Q<T> q10, long j10, TimeUnit timeUnit) {
            this.f126205b = (Q) H.E(q10);
            this.f126206c = timeUnit.toNanos(j10);
            H.t(j10 > 0, "duration (%s %s) must be > 0", j10, timeUnit);
        }

        @Override
        @E
        public T get() {
            long j10 = this.f126208e;
            long l10 = G.l();
            if (j10 == 0 || l10 - j10 >= 0) {
                synchronized (this) {
                    try {
                        if (j10 == this.f126208e) {
                            T t10 = this.f126205b.get();
                            this.f126207d = t10;
                            long j11 = l10 + this.f126206c;
                            if (j11 == 0) {
                                j11 = 1;
                            }
                            this.f126208e = j11;
                            return t10;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return (T) C15880A.a(this.f126207d);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126205b);
            long j10 = this.f126206c;
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 62);
            sb2.append("Suppliers.memoizeWithExpiration(");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(j10);
            sb2.append(", NANOS)");
            return sb2.toString();
        }
    }

    @v2.d
    public static class b<T> implements Q<T>, Serializable {

        public static final long f126209e = 0;

        public final Q<T> f126210b;

        public volatile transient boolean f126211c;

        @CheckForNull
        public transient T f126212d;

        public b(Q<T> q10) {
            this.f126210b = (Q) H.E(q10);
        }

        @Override
        @E
        public T get() {
            if (!this.f126211c) {
                synchronized (this) {
                    try {
                        if (!this.f126211c) {
                            T t10 = this.f126210b.get();
                            this.f126212d = t10;
                            this.f126211c = true;
                            return t10;
                        }
                    } finally {
                    }
                }
            }
            return (T) C15880A.a(this.f126212d);
        }

        public String toString() {
            Object obj;
            if (this.f126211c) {
                String valueOf = String.valueOf(this.f126212d);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 25);
                sb2.append("<supplier that returned ");
                sb2.append(valueOf);
                sb2.append(">");
                obj = sb2.toString();
            } else {
                obj = this.f126210b;
            }
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 19);
            sb3.append("Suppliers.memoize(");
            sb3.append(valueOf2);
            sb3.append(")");
            return sb3.toString();
        }
    }

    @v2.d
    public static class c<T> implements Q<T> {

        @CheckForNull
        public volatile Q<T> f126213b;

        public volatile boolean f126214c;

        @CheckForNull
        public T f126215d;

        public c(Q<T> q10) {
            this.f126213b = (Q) H.E(q10);
        }

        @Override
        @E
        public T get() {
            if (!this.f126214c) {
                synchronized (this) {
                    try {
                        if (!this.f126214c) {
                            Q<T> q10 = this.f126213b;
                            Objects.requireNonNull(q10);
                            T t10 = q10.get();
                            this.f126215d = t10;
                            this.f126214c = true;
                            this.f126213b = null;
                            return t10;
                        }
                    } finally {
                    }
                }
            }
            return (T) C15880A.a(this.f126215d);
        }

        public String toString() {
            Object obj = this.f126213b;
            if (obj == null) {
                String valueOf = String.valueOf(this.f126215d);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 25);
                sb2.append("<supplier that returned ");
                sb2.append(valueOf);
                sb2.append(">");
                obj = sb2.toString();
            }
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 19);
            sb3.append("Suppliers.memoize(");
            sb3.append(valueOf2);
            sb3.append(")");
            return sb3.toString();
        }
    }

    public static class d<F, T> implements Q<T>, Serializable {

        public static final long f126216d = 0;

        public final InterfaceC15902t<? super F, T> f126217b;

        public final Q<F> f126218c;

        public d(InterfaceC15902t<? super F, T> interfaceC15902t, Q<F> q10) {
            this.f126217b = (InterfaceC15902t) H.E(interfaceC15902t);
            this.f126218c = (Q) H.E(q10);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f126217b.equals(dVar.f126217b) && this.f126218c.equals(dVar.f126218c);
        }

        @Override
        @E
        public T get() {
            return this.f126217b.apply(this.f126218c.get());
        }

        public int hashCode() {
            return B.b(this.f126217b, this.f126218c);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126217b);
            String valueOf2 = String.valueOf(this.f126218c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
            sb2.append("Suppliers.compose(");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public interface e<T> extends InterfaceC15902t<Q<T>, T> {
    }

    public enum f implements e<Object> {
        INSTANCE;

        @Override
        @CheckForNull
        public Object apply(Q<Object> q10) {
            return q10.get();
        }

        @Override
        public String toString() {
            return "Suppliers.supplierFunction()";
        }
    }

    public static class g<T> implements Q<T>, Serializable {

        public static final long f126219c = 0;

        @E
        public final T f126220b;

        public g(@E T t10) {
            this.f126220b = t10;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof g) {
                return B.a(this.f126220b, ((g) obj).f126220b);
            }
            return false;
        }

        @Override
        @E
        public T get() {
            return this.f126220b;
        }

        public int hashCode() {
            return B.b(this.f126220b);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126220b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 22);
            sb2.append("Suppliers.ofInstance(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class h<T> implements Q<T>, Serializable {

        public static final long f126221c = 0;

        public final Q<T> f126222b;

        public h(Q<T> q10) {
            this.f126222b = (Q) H.E(q10);
        }

        @Override
        @E
        public T get() {
            T t10;
            synchronized (this.f126222b) {
                t10 = this.f126222b.get();
            }
            return t10;
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126222b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 32);
            sb2.append("Suppliers.synchronizedSupplier(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static <F, T> Q<T> a(InterfaceC15902t<? super F, T> interfaceC15902t, Q<F> q10) {
        return new d(interfaceC15902t, q10);
    }

    public static <T> Q<T> b(Q<T> q10) {
        return ((q10 instanceof c) || (q10 instanceof b)) ? q10 : q10 instanceof Serializable ? new b(q10) : new c(q10);
    }

    public static <T> Q<T> c(Q<T> q10, long j10, TimeUnit timeUnit) {
        return new a(q10, j10, timeUnit);
    }

    public static <T> Q<T> d(@E T t10) {
        return new g(t10);
    }

    public static <T> InterfaceC15902t<Q<T>, T> e() {
        return f.INSTANCE;
    }

    public static <T> Q<T> f(Q<T> q10) {
        return new h(q10);
    }
}
