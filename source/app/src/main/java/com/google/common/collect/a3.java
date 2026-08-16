package com.google.common.collect;

import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class a3<E> extends AbstractC12551o<E> implements Serializable {

    @v2.c
    public static final long f66422i = 1;

    public final transient g<f<E>> f66423f;

    public final transient R0<E> f66424g;

    public final transient f<E> f66425h;

    public class a extends W1.f<E> {

        public final f f66426b;

        public a(f fVar) {
            this.f66426b = fVar;
        }

        @Override
        public int getCount() {
            int w10 = this.f66426b.w();
            return w10 == 0 ? a3.this.Ad(getElement()) : w10;
        }

        @Override
        @InterfaceC12518f2
        public E getElement() {
            return (E) this.f66426b.x();
        }
    }

    public class b implements Iterator<V1.a<E>> {

        @CheckForNull
        public f<E> f66428b;

        @CheckForNull
        public V1.a<E> f66429c;

        public b() {
            this.f66428b = a3.this.B();
        }

        @Override
        public V1.a<E> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            a3 a3Var = a3.this;
            f<E> fVar = this.f66428b;
            Objects.requireNonNull(fVar);
            V1.a<E> G10 = a3Var.G(fVar);
            this.f66429c = G10;
            if (this.f66428b.L() == a3.this.f66425h) {
                this.f66428b = null;
            } else {
                this.f66428b = this.f66428b.L();
            }
            return G10;
        }

        @Override
        public boolean hasNext() {
            if (this.f66428b == null) {
                return false;
            }
            if (!a3.this.f66424g.p(this.f66428b.x())) {
                return true;
            }
            this.f66428b = null;
            return false;
        }

        @Override
        public void remove() {
            w2.H.h0(this.f66429c != null, "no calls to next() since the last call to remove()");
            a3.this.P9(this.f66429c.getElement(), 0);
            this.f66429c = null;
        }
    }

    public class c implements Iterator<V1.a<E>> {

        @CheckForNull
        public f<E> f66431b;

        @CheckForNull
        public V1.a<E> f66432c = null;

        public c() {
            this.f66431b = a3.this.C();
        }

        @Override
        public V1.a<E> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Objects.requireNonNull(this.f66431b);
            V1.a<E> G10 = a3.this.G(this.f66431b);
            this.f66432c = G10;
            if (this.f66431b.z() == a3.this.f66425h) {
                this.f66431b = null;
            } else {
                this.f66431b = this.f66431b.z();
            }
            return G10;
        }

        @Override
        public boolean hasNext() {
            if (this.f66431b == null) {
                return false;
            }
            if (!a3.this.f66424g.q(this.f66431b.x())) {
                return true;
            }
            this.f66431b = null;
            return false;
        }

        @Override
        public void remove() {
            w2.H.h0(this.f66432c != null, "no calls to next() since the last call to remove()");
            a3.this.P9(this.f66432c.getElement(), 0);
            this.f66432c = null;
        }
    }

    public static class d {

        public static final int[] f66434a;

        static {
            int[] iArr = new int[EnumC12586x.values().length];
            f66434a = iArr;
            try {
                iArr[EnumC12586x.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66434a[EnumC12586x.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class e {
        public static final e SIZE = new a("SIZE", 0);
        public static final e DISTINCT = new b("DISTINCT", 1);
        private static final e[] $VALUES = a();

        public enum a extends e {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public int b(f<?> fVar) {
                return fVar.f66436b;
            }

            @Override
            public long c(@CheckForNull f<?> fVar) {
                if (fVar == null) {
                    return 0L;
                }
                return fVar.f66438d;
            }
        }

        public enum b extends e {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public int b(f<?> fVar) {
                return 1;
            }

            @Override
            public long c(@CheckForNull f<?> fVar) {
                if (fVar == null) {
                    return 0L;
                }
                return fVar.f66437c;
            }
        }

        public e(String str, int i10) {
        }

        public static e[] a() {
            return new e[]{SIZE, DISTINCT};
        }

        public static e valueOf(String str) {
            return (e) Enum.valueOf(e.class, str);
        }

        public static e[] values() {
            return (e[]) $VALUES.clone();
        }

        public abstract int b(f<?> fVar);

        public abstract long c(@CheckForNull f<?> fVar);

        public e(String str, int i10, a aVar) {
            this(str, i10);
        }
    }

    public static final class g<T> {

        @CheckForNull
        public T f66444a;

        public g() {
        }

        public void a(@CheckForNull T t10, @CheckForNull T t11) {
            if (this.f66444a != t10) {
                throw new ConcurrentModificationException();
            }
            this.f66444a = t11;
        }

        public void b() {
            this.f66444a = null;
        }

        @CheckForNull
        public T c() {
            return this.f66444a;
        }

        public g(a aVar) {
            this();
        }
    }

    public a3(g<f<E>> gVar, R0<E> r02, f<E> fVar) {
        super(r02.b());
        this.f66423f = gVar;
        this.f66424g = r02;
        this.f66425h = fVar;
    }

    public static int A(@CheckForNull f<?> fVar) {
        if (fVar == null) {
            return 0;
        }
        return fVar.f66437c;
    }

    @v2.c
    private void D(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        B2.a(AbstractC12551o.class, "comparator").b(this, comparator);
        B2.a(a3.class, "range").b(this, R0.a(comparator));
        B2.a(a3.class, "rootReference").b(this, new g(null));
        f fVar = new f();
        B2.a(a3.class, "header").b(this, fVar);
        E(fVar, fVar);
        B2.f(this, objectInputStream);
    }

    public static <T> void E(f<T> fVar, f<T> fVar2) {
        fVar.f66443i = fVar2;
        fVar2.f66442h = fVar;
    }

    public static <T> void F(f<T> fVar, f<T> fVar2, f<T> fVar3) {
        E(fVar, fVar2);
        E(fVar2, fVar3);
    }

    @v2.c
    private void H(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(S1().comparator());
        B2.k(this, objectOutputStream);
    }

    public static <E extends Comparable> a3<E> x() {
        return new a3<>(Ordering.A());
    }

    public static <E extends Comparable> a3<E> y(Iterable<? extends E> iterable) {
        a3<E> x10 = x();
        D1.a(x10, iterable);
        return x10;
    }

    public static <E> a3<E> z(@CheckForNull Comparator<? super E> comparator) {
        return comparator == null ? new a3<>(Ordering.A()) : new a3<>(comparator);
    }

    @Override
    public int Ad(@CheckForNull Object obj) {
        try {
            f<E> c10 = this.f66423f.c();
            if (this.f66424g.c(obj) && c10 != null) {
                return c10.t(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @CheckForNull
    public final f<E> B() {
        f<E> L10;
        f<E> c10 = this.f66423f.c();
        if (c10 == null) {
            return null;
        }
        if (this.f66424g.j()) {
            Object a10 = Z1.a(this.f66424g.g());
            L10 = c10.s(comparator(), a10);
            if (L10 == null) {
                return null;
            }
            if (this.f66424g.f() == EnumC12586x.OPEN && comparator().compare(a10, L10.x()) == 0) {
                L10 = L10.L();
            }
        } else {
            L10 = this.f66425h.L();
        }
        if (L10 == this.f66425h || !this.f66424g.c(L10.x())) {
            return null;
        }
        return L10;
    }

    @Override
    public K2<E> B7(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x) {
        return new a3(this.f66423f, this.f66424g.l(R0.r(comparator(), e10, enumC12586x)), this.f66425h);
    }

    @CheckForNull
    public final f<E> C() {
        f<E> z10;
        f<E> c10 = this.f66423f.c();
        if (c10 == null) {
            return null;
        }
        if (this.f66424g.k()) {
            Object a10 = Z1.a(this.f66424g.i());
            z10 = c10.v(comparator(), a10);
            if (z10 == null) {
                return null;
            }
            if (this.f66424g.h() == EnumC12586x.OPEN && comparator().compare(a10, z10.x()) == 0) {
                z10 = z10.z();
            }
        } else {
            z10 = this.f66425h.z();
        }
        if (z10 == this.f66425h || !this.f66424g.c(z10.x())) {
            return null;
        }
        return z10;
    }

    public final V1.a<E> G(f<E> fVar) {
        return new a(fVar);
    }

    @Override
    public K2<E> Jd(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x) {
        return new a3(this.f66423f, this.f66424g.l(R0.d(comparator(), e10, enumC12586x)), this.f66425h);
    }

    @Override
    public K2 P6() {
        return super.P6();
    }

    @Override
    @I2.a
    public int P9(@InterfaceC12518f2 E e10, int i10) {
        B.b(i10, oc.c.f98682m);
        if (!this.f66424g.c(e10)) {
            w2.H.d(i10 == 0);
            return 0;
        }
        f<E> c10 = this.f66423f.c();
        if (c10 == null) {
            if (i10 > 0) {
                y6(e10, i10);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.f66423f.a(c10, c10.K(comparator(), e10, i10, iArr));
        return iArr[0];
    }

    @Override
    public NavigableSet S1() {
        return super.S1();
    }

    @Override
    public int c() {
        return com.google.common.primitives.l.x(v(e.DISTINCT));
    }

    @Override
    public void clear() {
        if (this.f66424g.j() || this.f66424g.k()) {
            E1.h(g());
            return;
        }
        f<E> L10 = this.f66425h.L();
        while (true) {
            f<E> fVar = this.f66425h;
            if (L10 == fVar) {
                E(fVar, fVar);
                this.f66423f.b();
                return;
            }
            f<E> L11 = L10.L();
            L10.f66436b = 0;
            L10.f66440f = null;
            L10.f66441g = null;
            L10.f66442h = null;
            L10.f66443i = null;
            L10 = L11;
        }
    }

    @Override
    public Comparator comparator() {
        return super.comparator();
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override
    public Iterator<E> d() {
        return W1.h(g());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public K2 dc(@InterfaceC12518f2 Object obj, EnumC12586x enumC12586x, @InterfaceC12518f2 Object obj2, EnumC12586x enumC12586x2) {
        return super.dc(obj, enumC12586x, obj2, enumC12586x2);
    }

    @Override
    @I2.a
    public boolean e7(@InterfaceC12518f2 E e10, int i10, int i11) {
        B.b(i11, "newCount");
        B.b(i10, "oldCount");
        w2.H.d(this.f66424g.c(e10));
        f<E> c10 = this.f66423f.c();
        if (c10 != null) {
            int[] iArr = new int[1];
            this.f66423f.a(c10, c10.J(comparator(), e10, i10, i11, iArr));
            return iArr[0] == i10;
        }
        if (i10 != 0) {
            return false;
        }
        if (i11 > 0) {
            y6(e10, i11);
        }
        return true;
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    @CheckForNull
    public V1.a firstEntry() {
        return super.firstEntry();
    }

    @Override
    public Iterator<V1.a<E>> g() {
        return new b();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        return W1.n(this);
    }

    @Override
    public Iterator<V1.a<E>> j() {
        return new c();
    }

    @Override
    @CheckForNull
    public V1.a lastEntry() {
        return super.lastEntry();
    }

    @Override
    @I2.a
    public int pc(@CheckForNull Object obj, int i10) {
        B.b(i10, "occurrences");
        if (i10 == 0) {
            return Ad(obj);
        }
        f<E> c10 = this.f66423f.c();
        int[] iArr = new int[1];
        try {
            if (this.f66424g.c(obj) && c10 != null) {
                this.f66423f.a(c10, c10.E(comparator(), obj, i10, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override
    @CheckForNull
    public V1.a pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override
    @CheckForNull
    public V1.a pollLastEntry() {
        return super.pollLastEntry();
    }

    public final long s(e eVar, @CheckForNull f<E> fVar) {
        long c10;
        long s10;
        if (fVar == null) {
            return 0L;
        }
        int compare = comparator().compare(Z1.a(this.f66424g.i()), fVar.x());
        if (compare > 0) {
            return s(eVar, fVar.f66441g);
        }
        if (compare == 0) {
            int i10 = d.f66434a[this.f66424g.h().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return eVar.c(fVar.f66441g);
                }
                throw new AssertionError();
            }
            c10 = eVar.b(fVar);
            s10 = eVar.c(fVar.f66441g);
        } else {
            c10 = eVar.c(fVar.f66441g) + eVar.b(fVar);
            s10 = s(eVar, fVar.f66440f);
        }
        return c10 + s10;
    }

    @Override
    public int size() {
        return com.google.common.primitives.l.x(v(e.SIZE));
    }

    public final long u(e eVar, @CheckForNull f<E> fVar) {
        long c10;
        long u10;
        if (fVar == null) {
            return 0L;
        }
        int compare = comparator().compare(Z1.a(this.f66424g.g()), fVar.x());
        if (compare < 0) {
            return u(eVar, fVar.f66440f);
        }
        if (compare == 0) {
            int i10 = d.f66434a[this.f66424g.f().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return eVar.c(fVar.f66440f);
                }
                throw new AssertionError();
            }
            c10 = eVar.b(fVar);
            u10 = eVar.c(fVar.f66440f);
        } else {
            c10 = eVar.c(fVar.f66440f) + eVar.b(fVar);
            u10 = u(eVar, fVar.f66441g);
        }
        return c10 + u10;
    }

    public final long v(e eVar) {
        f<E> c10 = this.f66423f.c();
        long c11 = eVar.c(c10);
        if (this.f66424g.j()) {
            c11 -= u(eVar, c10);
        }
        return this.f66424g.k() ? c11 - s(eVar, c10) : c11;
    }

    @Override
    @I2.a
    public int y6(@InterfaceC12518f2 E e10, int i10) {
        B.b(i10, "occurrences");
        if (i10 == 0) {
            return Ad(e10);
        }
        w2.H.d(this.f66424g.c(e10));
        f<E> c10 = this.f66423f.c();
        if (c10 != null) {
            int[] iArr = new int[1];
            this.f66423f.a(c10, c10.o(comparator(), e10, i10, iArr));
            return iArr[0];
        }
        comparator().compare(e10, e10);
        f<E> fVar = new f<>(e10, i10);
        f<E> fVar2 = this.f66425h;
        F(fVar2, fVar, fVar2);
        this.f66423f.a(c10, fVar);
        return 0;
    }

    public a3(Comparator<? super E> comparator) {
        super(comparator);
        this.f66424g = R0.a(comparator);
        f<E> fVar = new f<>();
        this.f66425h = fVar;
        E(fVar, fVar);
        this.f66423f = new g<>(null);
    }

    public static final class f<E> {

        @CheckForNull
        public final E f66435a;

        public int f66436b;

        public int f66437c;

        public long f66438d;

        public int f66439e;

        @CheckForNull
        public f<E> f66440f;

        @CheckForNull
        public f<E> f66441g;

        @CheckForNull
        public f<E> f66442h;

        @CheckForNull
        public f<E> f66443i;

        public f(@InterfaceC12518f2 E e10, int i10) {
            w2.H.d(i10 > 0);
            this.f66435a = e10;
            this.f66436b = i10;
            this.f66438d = i10;
            this.f66437c = 1;
            this.f66439e = 1;
            this.f66440f = null;
            this.f66441g = null;
        }

        public static long M(@CheckForNull f<?> fVar) {
            if (fVar == null) {
                return 0L;
            }
            return fVar.f66438d;
        }

        public static int y(@CheckForNull f<?> fVar) {
            if (fVar == null) {
                return 0;
            }
            return fVar.f66439e;
        }

        public final f<E> A() {
            int r10 = r();
            if (r10 == -2) {
                Objects.requireNonNull(this.f66441g);
                if (this.f66441g.r() > 0) {
                    this.f66441g = this.f66441g.I();
                }
                return H();
            }
            if (r10 != 2) {
                C();
                return this;
            }
            Objects.requireNonNull(this.f66440f);
            if (this.f66440f.r() < 0) {
                this.f66440f = this.f66440f.H();
            }
            return I();
        }

        public final void B() {
            D();
            C();
        }

        public final void C() {
            this.f66439e = Math.max(y(this.f66440f), y(this.f66441g)) + 1;
        }

        public final void D() {
            this.f66437c = a3.A(this.f66440f) + 1 + a3.A(this.f66441g);
            this.f66438d = this.f66436b + M(this.f66440f) + M(this.f66441g);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        public f<E> E(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, int i10, int[] iArr) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f66440f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f66440f = fVar.E(comparator, e10, i10, iArr);
                int i11 = iArr[0];
                if (i11 > 0) {
                    if (i10 >= i11) {
                        this.f66437c--;
                        this.f66438d -= i11;
                    } else {
                        this.f66438d -= i10;
                    }
                }
                return i11 == 0 ? this : A();
            }
            if (compare <= 0) {
                int i12 = this.f66436b;
                iArr[0] = i12;
                if (i10 >= i12) {
                    return u();
                }
                this.f66436b = i12 - i10;
                this.f66438d -= i10;
                return this;
            }
            f<E> fVar2 = this.f66441g;
            if (fVar2 == null) {
                iArr[0] = 0;
                return this;
            }
            this.f66441g = fVar2.E(comparator, e10, i10, iArr);
            int i13 = iArr[0];
            if (i13 > 0) {
                if (i10 >= i13) {
                    this.f66437c--;
                    this.f66438d -= i13;
                } else {
                    this.f66438d -= i10;
                }
            }
            return A();
        }

        @CheckForNull
        public final f<E> F(f<E> fVar) {
            f<E> fVar2 = this.f66441g;
            if (fVar2 == null) {
                return this.f66440f;
            }
            this.f66441g = fVar2.F(fVar);
            this.f66437c--;
            this.f66438d -= fVar.f66436b;
            return A();
        }

        @CheckForNull
        public final f<E> G(f<E> fVar) {
            f<E> fVar2 = this.f66440f;
            if (fVar2 == null) {
                return this.f66441g;
            }
            this.f66440f = fVar2.G(fVar);
            this.f66437c--;
            this.f66438d -= fVar.f66436b;
            return A();
        }

        public final f<E> H() {
            w2.H.g0(this.f66441g != null);
            f<E> fVar = this.f66441g;
            this.f66441g = fVar.f66440f;
            fVar.f66440f = this;
            fVar.f66438d = this.f66438d;
            fVar.f66437c = this.f66437c;
            B();
            fVar.C();
            return fVar;
        }

        public final f<E> I() {
            w2.H.g0(this.f66440f != null);
            f<E> fVar = this.f66440f;
            this.f66440f = fVar.f66441g;
            fVar.f66441g = this;
            fVar.f66438d = this.f66438d;
            fVar.f66437c = this.f66437c;
            B();
            fVar.C();
            return fVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        public f<E> J(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, int i10, int i11, int[] iArr) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f66440f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return (i10 != 0 || i11 <= 0) ? this : p(e10, i11);
                }
                this.f66440f = fVar.J(comparator, e10, i10, i11, iArr);
                int i12 = iArr[0];
                if (i12 == i10) {
                    if (i11 == 0 && i12 != 0) {
                        this.f66437c--;
                    } else if (i11 > 0 && i12 == 0) {
                        this.f66437c++;
                    }
                    this.f66438d += i11 - i12;
                }
                return A();
            }
            if (compare <= 0) {
                int i13 = this.f66436b;
                iArr[0] = i13;
                if (i10 == i13) {
                    if (i11 == 0) {
                        return u();
                    }
                    this.f66438d += i11 - i13;
                    this.f66436b = i11;
                }
                return this;
            }
            f<E> fVar2 = this.f66441g;
            if (fVar2 == null) {
                iArr[0] = 0;
                return (i10 != 0 || i11 <= 0) ? this : q(e10, i11);
            }
            this.f66441g = fVar2.J(comparator, e10, i10, i11, iArr);
            int i14 = iArr[0];
            if (i14 == i10) {
                if (i11 == 0 && i14 != 0) {
                    this.f66437c--;
                } else if (i11 > 0 && i14 == 0) {
                    this.f66437c++;
                }
                this.f66438d += i11 - i14;
            }
            return A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        public f<E> K(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, int i10, int[] iArr) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f66440f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return i10 > 0 ? p(e10, i10) : this;
                }
                this.f66440f = fVar.K(comparator, e10, i10, iArr);
                if (i10 == 0 && iArr[0] != 0) {
                    this.f66437c--;
                } else if (i10 > 0 && iArr[0] == 0) {
                    this.f66437c++;
                }
                this.f66438d += i10 - iArr[0];
                return A();
            }
            if (compare <= 0) {
                iArr[0] = this.f66436b;
                if (i10 == 0) {
                    return u();
                }
                this.f66438d += i10 - r3;
                this.f66436b = i10;
                return this;
            }
            f<E> fVar2 = this.f66441g;
            if (fVar2 == null) {
                iArr[0] = 0;
                return i10 > 0 ? q(e10, i10) : this;
            }
            this.f66441g = fVar2.K(comparator, e10, i10, iArr);
            if (i10 == 0 && iArr[0] != 0) {
                this.f66437c--;
            } else if (i10 > 0 && iArr[0] == 0) {
                this.f66437c++;
            }
            this.f66438d += i10 - iArr[0];
            return A();
        }

        public final f<E> L() {
            f<E> fVar = this.f66443i;
            Objects.requireNonNull(fVar);
            return fVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public f<E> o(Comparator<? super E> comparator, @InterfaceC12518f2 E e10, int i10, int[] iArr) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f66440f;
                if (fVar == null) {
                    iArr[0] = 0;
                    return p(e10, i10);
                }
                int i11 = fVar.f66439e;
                f<E> o10 = fVar.o(comparator, e10, i10, iArr);
                this.f66440f = o10;
                if (iArr[0] == 0) {
                    this.f66437c++;
                }
                this.f66438d += i10;
                return o10.f66439e == i11 ? this : A();
            }
            if (compare <= 0) {
                int i12 = this.f66436b;
                iArr[0] = i12;
                long j10 = i10;
                w2.H.d(((long) i12) + j10 <= 2147483647L);
                this.f66436b += i10;
                this.f66438d += j10;
                return this;
            }
            f<E> fVar2 = this.f66441g;
            if (fVar2 == null) {
                iArr[0] = 0;
                return q(e10, i10);
            }
            int i13 = fVar2.f66439e;
            f<E> o11 = fVar2.o(comparator, e10, i10, iArr);
            this.f66441g = o11;
            if (iArr[0] == 0) {
                this.f66437c++;
            }
            this.f66438d += i10;
            return o11.f66439e == i13 ? this : A();
        }

        public final f<E> p(@InterfaceC12518f2 E e10, int i10) {
            this.f66440f = new f<>(e10, i10);
            a3.F(z(), this.f66440f, this);
            this.f66439e = Math.max(2, this.f66439e);
            this.f66437c++;
            this.f66438d += i10;
            return this;
        }

        public final f<E> q(@InterfaceC12518f2 E e10, int i10) {
            f<E> fVar = new f<>(e10, i10);
            this.f66441g = fVar;
            a3.F(this, fVar, L());
            this.f66439e = Math.max(2, this.f66439e);
            this.f66437c++;
            this.f66438d += i10;
            return this;
        }

        public final int r() {
            return y(this.f66440f) - y(this.f66441g);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        public final f<E> s(Comparator<? super E> comparator, @InterfaceC12518f2 E e10) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f66440f;
                return fVar == null ? this : (f) w2.z.a(fVar.s(comparator, e10), this);
            }
            if (compare == 0) {
                return this;
            }
            f<E> fVar2 = this.f66441g;
            if (fVar2 == null) {
                return null;
            }
            return fVar2.s(comparator, e10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int t(Comparator<? super E> comparator, @InterfaceC12518f2 E e10) {
            int compare = comparator.compare(e10, x());
            if (compare < 0) {
                f<E> fVar = this.f66440f;
                if (fVar == null) {
                    return 0;
                }
                return fVar.t(comparator, e10);
            }
            if (compare <= 0) {
                return this.f66436b;
            }
            f<E> fVar2 = this.f66441g;
            if (fVar2 == null) {
                return 0;
            }
            return fVar2.t(comparator, e10);
        }

        public String toString() {
            return W1.k(x(), w()).toString();
        }

        @CheckForNull
        public final f<E> u() {
            int i10 = this.f66436b;
            this.f66436b = 0;
            a3.E(z(), L());
            f<E> fVar = this.f66440f;
            if (fVar == null) {
                return this.f66441g;
            }
            f<E> fVar2 = this.f66441g;
            if (fVar2 == null) {
                return fVar;
            }
            if (fVar.f66439e >= fVar2.f66439e) {
                f<E> z10 = z();
                z10.f66440f = this.f66440f.F(z10);
                z10.f66441g = this.f66441g;
                z10.f66437c = this.f66437c - 1;
                z10.f66438d = this.f66438d - i10;
                return z10.A();
            }
            f<E> L10 = L();
            L10.f66441g = this.f66441g.G(L10);
            L10.f66440f = this.f66440f;
            L10.f66437c = this.f66437c - 1;
            L10.f66438d = this.f66438d - i10;
            return L10.A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        public final f<E> v(Comparator<? super E> comparator, @InterfaceC12518f2 E e10) {
            int compare = comparator.compare(e10, x());
            if (compare > 0) {
                f<E> fVar = this.f66441g;
                return fVar == null ? this : (f) w2.z.a(fVar.v(comparator, e10), this);
            }
            if (compare == 0) {
                return this;
            }
            f<E> fVar2 = this.f66440f;
            if (fVar2 == null) {
                return null;
            }
            return fVar2.v(comparator, e10);
        }

        public int w() {
            return this.f66436b;
        }

        @InterfaceC12518f2
        public E x() {
            return (E) Z1.a(this.f66435a);
        }

        public final f<E> z() {
            f<E> fVar = this.f66442h;
            Objects.requireNonNull(fVar);
            return fVar;
        }

        public f() {
            this.f66435a = null;
            this.f66436b = 1;
        }
    }
}
