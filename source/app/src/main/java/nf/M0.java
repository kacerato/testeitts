package nf;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14025w;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;

@kotlin.jvm.internal.t0({"SMAP\nUShortArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UShortArray.kt\nkotlin/UShortArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1786#2,3:83\n*S KotlinDebug\n*F\n+ 1 UShortArray.kt\nkotlin/UShortArray\n*L\n58#1:83,3\n*E\n"})
@InterfaceC14443y
@Lf.h
@InterfaceC14422l0(version = "1.3")
public final class M0 implements Collection<L0>, Nf.a {

    @NotNull
    public final short[] f98191b;

    public static final class a implements Iterator<L0>, Nf.a {

        @NotNull
        public final short[] f98192b;

        public int f98193c;

        public a(@NotNull short[] array) {
            kotlin.jvm.internal.M.p(array, "array");
            this.f98192b = array;
        }

        public short a() {
            int i10 = this.f98193c;
            short[] sArr = this.f98192b;
            if (i10 >= sArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f98193c));
            }
            this.f98193c = i10 + 1;
            return L0.i(sArr[i10]);
        }

        @Override
        public boolean hasNext() {
            return this.f98193c < this.f98192b.length;
        }

        @Override
        public L0 next() {
            return L0.b(a());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @InterfaceC14410f0
    public M0(short[] sArr) {
        this.f98191b = sArr;
    }

    public static final M0 b(short[] sArr) {
        return new M0(sArr);
    }

    @NotNull
    public static short[] j(int i10) {
        return k(new short[i10]);
    }

    @InterfaceC14410f0
    @NotNull
    public static short[] k(@NotNull short[] storage) {
        kotlin.jvm.internal.M.p(storage, "storage");
        return storage;
    }

    public static boolean m(short[] sArr, short s10) {
        return C14960A.C8(sArr, s10);
    }

    public static boolean n(short[] sArr, @NotNull Collection<L0> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        Collection<L0> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (L0 l02 : collection) {
            if (!(l02 instanceof L0) || !C14960A.C8(sArr, l02.j0())) {
                return false;
            }
        }
        return true;
    }

    public static boolean o(short[] sArr, Object obj) {
        return (obj instanceof M0) && kotlin.jvm.internal.M.g(sArr, ((M0) obj).A());
    }

    public static final boolean p(short[] sArr, short[] sArr2) {
        return kotlin.jvm.internal.M.g(sArr, sArr2);
    }

    public static final short r(short[] sArr, int i10) {
        return L0.i(sArr[i10]);
    }

    public static int t(short[] sArr) {
        return sArr.length;
    }

    @InterfaceC14410f0
    public static void u() {
    }

    public static int v(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    public static boolean w(short[] sArr) {
        return sArr.length == 0;
    }

    @NotNull
    public static Iterator<L0> x(short[] sArr) {
        return new a(sArr);
    }

    public static final void y(short[] sArr, int i10, short s10) {
        sArr[i10] = s10;
    }

    public static String z(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ')';
    }

    public final short[] A() {
        return this.f98191b;
    }

    public boolean a(short s10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean add(L0 l02) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection<? extends L0> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof L0) {
            return l(((L0) obj).j0());
        }
        return false;
    }

    @Override
    public boolean containsAll(@NotNull Collection<?> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return n(this.f98191b, elements);
    }

    @Override
    public boolean equals(Object obj) {
        return o(this.f98191b, obj);
    }

    @Override
    public int hashCode() {
        return v(this.f98191b);
    }

    @Override
    public boolean isEmpty() {
        return w(this.f98191b);
    }

    @Override
    @NotNull
    public Iterator<L0> iterator() {
        return x(this.f98191b);
    }

    public boolean l(short s10) {
        return m(this.f98191b, s10);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public int size() {
        return t(this.f98191b);
    }

    @Override
    public Object[] toArray() {
        return C14025w.a(this);
    }

    public String toString() {
        return z(this.f98191b);
    }

    @Override
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(this, array);
    }
}
