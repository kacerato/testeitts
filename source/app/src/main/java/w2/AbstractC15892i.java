package w2;

import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b
public abstract class AbstractC15892i<A, B> implements InterfaceC15902t<A, B> {

    public final boolean f126325b;

    @q3.h
    @CheckForNull
    @J2.b
    public transient AbstractC15892i<B, A> f126326c;

    public class a implements Iterable<B> {

        public final Iterable f126327b;

        public class C2083a implements Iterator<B> {

            public final Iterator<? extends A> f126329b;

            public C2083a() {
                this.f126329b = a.this.f126327b.iterator();
            }

            @Override
            public boolean hasNext() {
                return this.f126329b.hasNext();
            }

            @Override
            @CheckForNull
            public B next() {
                return (B) AbstractC15892i.this.b(this.f126329b.next());
            }

            @Override
            public void remove() {
                this.f126329b.remove();
            }
        }

        public a(Iterable iterable) {
            this.f126327b = iterable;
        }

        @Override
        public Iterator<B> iterator() {
            return new C2083a();
        }
    }

    public static final class b<A, B, C> extends AbstractC15892i<A, C> implements Serializable {

        public static final long f126331f = 0;

        public final AbstractC15892i<A, B> f126332d;

        public final AbstractC15892i<B, C> f126333e;

        public b(AbstractC15892i<A, B> abstractC15892i, AbstractC15892i<B, C> abstractC15892i2) {
            this.f126332d = abstractC15892i;
            this.f126333e = abstractC15892i2;
        }

        @Override
        @CheckForNull
        public A d(@CheckForNull C c10) {
            return (A) this.f126332d.d(this.f126333e.d(c10));
        }

        @Override
        @CheckForNull
        public C e(@CheckForNull A a10) {
            return (C) this.f126333e.e(this.f126332d.e(a10));
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f126332d.equals(bVar.f126332d) && this.f126333e.equals(bVar.f126333e);
        }

        @Override
        public A g(C c10) {
            throw new AssertionError();
        }

        public int hashCode() {
            return (this.f126332d.hashCode() * 31) + this.f126333e.hashCode();
        }

        @Override
        public C i(A a10) {
            throw new AssertionError();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126332d);
            String valueOf2 = String.valueOf(this.f126333e);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 10 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append(".andThen(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class c<A, B> extends AbstractC15892i<A, B> implements Serializable {

        public final InterfaceC15902t<? super A, ? extends B> f126334d;

        public final InterfaceC15902t<? super B, ? extends A> f126335e;

        public c(InterfaceC15902t interfaceC15902t, InterfaceC15902t interfaceC15902t2, a aVar) {
            this(interfaceC15902t, interfaceC15902t2);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f126334d.equals(cVar.f126334d) && this.f126335e.equals(cVar.f126335e);
        }

        @Override
        public A g(B b10) {
            return this.f126335e.apply(b10);
        }

        public int hashCode() {
            return (this.f126334d.hashCode() * 31) + this.f126335e.hashCode();
        }

        @Override
        public B i(A a10) {
            return this.f126334d.apply(a10);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126334d);
            String valueOf2 = String.valueOf(this.f126335e);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 18 + valueOf2.length());
            sb2.append("Converter.from(");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }

        public c(InterfaceC15902t<? super A, ? extends B> interfaceC15902t, InterfaceC15902t<? super B, ? extends A> interfaceC15902t2) {
            this.f126334d = (InterfaceC15902t) H.E(interfaceC15902t);
            this.f126335e = (InterfaceC15902t) H.E(interfaceC15902t2);
        }
    }

    public static final class d<T> extends AbstractC15892i<T, T> implements Serializable {

        public static final d<?> f126336d = new d<>();

        public static final long f126337e = 0;

        private Object p() {
            return f126336d;
        }

        @Override
        public <S> AbstractC15892i<T, S> f(AbstractC15892i<T, S> abstractC15892i) {
            return (AbstractC15892i) H.F(abstractC15892i, "otherConverter");
        }

        @Override
        public T g(T t10) {
            return t10;
        }

        @Override
        public T i(T t10) {
            return t10;
        }

        @Override
        public d<T> m() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    public static final class e<A, B> extends AbstractC15892i<B, A> implements Serializable {

        public static final long f126338e = 0;

        public final AbstractC15892i<A, B> f126339d;

        public e(AbstractC15892i<A, B> abstractC15892i) {
            this.f126339d = abstractC15892i;
        }

        @Override
        @CheckForNull
        public B d(@CheckForNull A a10) {
            return this.f126339d.e(a10);
        }

        @Override
        @CheckForNull
        public A e(@CheckForNull B b10) {
            return this.f126339d.d(b10);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof e) {
                return this.f126339d.equals(((e) obj).f126339d);
            }
            return false;
        }

        @Override
        public B g(A a10) {
            throw new AssertionError();
        }

        public int hashCode() {
            return ~this.f126339d.hashCode();
        }

        @Override
        public A i(B b10) {
            throw new AssertionError();
        }

        @Override
        public AbstractC15892i<A, B> m() {
            return this.f126339d;
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126339d);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 10);
            sb2.append(valueOf);
            sb2.append(".reverse()");
            return sb2.toString();
        }
    }

    public AbstractC15892i() {
        this(true);
    }

    public static <A, B> AbstractC15892i<A, B> j(InterfaceC15902t<? super A, ? extends B> interfaceC15902t, InterfaceC15902t<? super B, ? extends A> interfaceC15902t2) {
        return new c(interfaceC15902t, interfaceC15902t2, null);
    }

    public static <T> AbstractC15892i<T, T> l() {
        return d.f126336d;
    }

    public final <C> AbstractC15892i<A, C> a(AbstractC15892i<B, C> abstractC15892i) {
        return f(abstractC15892i);
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.l(replacement = "this.convert(a)")
    public final B apply(@CheckForNull A a10) {
        return b(a10);
    }

    @I2.a
    @CheckForNull
    public final B b(@CheckForNull A a10) {
        return e(a10);
    }

    @I2.a
    public Iterable<B> c(Iterable<? extends A> iterable) {
        H.F(iterable, "fromIterable");
        return new a(iterable);
    }

    @CheckForNull
    public A d(@CheckForNull B b10) {
        if (!this.f126325b) {
            return n(b10);
        }
        if (b10 == null) {
            return null;
        }
        return (A) H.E(g(b10));
    }

    @CheckForNull
    public B e(@CheckForNull A a10) {
        if (!this.f126325b) {
            return o(a10);
        }
        if (a10 == null) {
            return null;
        }
        return (B) H.E(i(a10));
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    public <C> AbstractC15892i<A, C> f(AbstractC15892i<B, C> abstractC15892i) {
        return new b(this, (AbstractC15892i) H.E(abstractC15892i));
    }

    @I2.g
    public abstract A g(B b10);

    @I2.g
    public abstract B i(A a10);

    @I2.b
    public AbstractC15892i<B, A> m() {
        AbstractC15892i<B, A> abstractC15892i = this.f126326c;
        if (abstractC15892i != null) {
            return abstractC15892i;
        }
        e eVar = new e(this);
        this.f126326c = eVar;
        return eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public final A n(@CheckForNull B b10) {
        return (A) g(C15880A.a(b10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public final B o(@CheckForNull A a10) {
        return (B) i(C15880A.a(a10));
    }

    public AbstractC15892i(boolean z10) {
        this.f126325b = z10;
    }
}
