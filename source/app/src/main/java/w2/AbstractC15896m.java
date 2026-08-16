package w2;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b
public abstract class AbstractC15896m<T> {

    public static final class b extends AbstractC15896m<Object> implements Serializable {

        public static final b f126345b = new b();

        public static final long f126346c = 1;

        @Override
        public boolean a(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override
        public int b(Object obj) {
            return obj.hashCode();
        }

        public final Object k() {
            return f126345b;
        }
    }

    public static final class c<T> implements I<T>, Serializable {

        public static final long f126347d = 0;

        public final AbstractC15896m<T> f126348b;

        @CheckForNull
        public final T f126349c;

        public c(AbstractC15896m<T> abstractC15896m, @CheckForNull T t10) {
            this.f126348b = (AbstractC15896m) H.E(abstractC15896m);
            this.f126349c = t10;
        }

        @Override
        public boolean apply(@CheckForNull T t10) {
            return this.f126348b.d(t10, this.f126349c);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f126348b.equals(cVar.f126348b) && B.a(this.f126349c, cVar.f126349c);
        }

        public int hashCode() {
            return B.b(this.f126348b, this.f126349c);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126348b);
            String valueOf2 = String.valueOf(this.f126349c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 15 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append(".equivalentTo(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class d extends AbstractC15896m<Object> implements Serializable {

        public static final d f126350b = new d();

        public static final long f126351c = 1;

        private Object k() {
            return f126350b;
        }

        @Override
        public boolean a(Object obj, Object obj2) {
            return false;
        }

        @Override
        public int b(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    public static final class e<T> implements Serializable {

        public static final long f126352d = 0;

        public final AbstractC15896m<? super T> f126353b;

        @E
        public final T f126354c;

        @E
        public T a() {
            return this.f126354c;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f126353b.equals(eVar.f126353b)) {
                return this.f126353b.d(this.f126354c, eVar.f126354c);
            }
            return false;
        }

        public int hashCode() {
            return this.f126353b.f(this.f126354c);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126353b);
            String valueOf2 = String.valueOf(this.f126354c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 7 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append(".wrap(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }

        public e(AbstractC15896m<? super T> abstractC15896m, @E T t10) {
            this.f126353b = (AbstractC15896m) H.E(abstractC15896m);
            this.f126354c = t10;
        }
    }

    public static AbstractC15896m<Object> c() {
        return b.f126345b;
    }

    public static AbstractC15896m<Object> g() {
        return d.f126350b;
    }

    @I2.g
    public abstract boolean a(T t10, T t11);

    @I2.g
    public abstract int b(T t10);

    public final boolean d(@CheckForNull T t10, @CheckForNull T t11) {
        if (t10 == t11) {
            return true;
        }
        if (t10 == null || t11 == null) {
            return false;
        }
        return a(t10, t11);
    }

    public final I<T> e(@CheckForNull T t10) {
        return new c(this, t10);
    }

    public final int f(@CheckForNull T t10) {
        if (t10 == null) {
            return 0;
        }
        return b(t10);
    }

    public final <F> AbstractC15896m<F> h(InterfaceC15902t<? super F, ? extends T> interfaceC15902t) {
        return new C15903u(interfaceC15902t, this);
    }

    @v2.b(serializable = true)
    public final <S extends T> AbstractC15896m<Iterable<S>> i() {
        return new D(this);
    }

    public final <S extends T> e<S> j(@E S s10) {
        return new e<>(s10);
    }
}
