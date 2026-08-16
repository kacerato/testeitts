package nf;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14025w;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;

@kotlin.jvm.internal.t0({"SMAP\nUIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1786#2,3:83\n*S KotlinDebug\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArray\n*L\n58#1:83,3\n*E\n"})
@InterfaceC14443y
@Lf.h
@InterfaceC14422l0(version = "1.3")
public final class C0 implements Collection<B0>, Nf.a {

    @NotNull
    public final int[] f98162b;

    public static final class a implements Iterator<B0>, Nf.a {

        @NotNull
        public final int[] f98163b;

        public int f98164c;

        public a(@NotNull int[] array) {
            kotlin.jvm.internal.M.p(array, "array");
            this.f98163b = array;
        }

        public int a() {
            int i10 = this.f98164c;
            int[] iArr = this.f98163b;
            if (i10 >= iArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f98164c));
            }
            this.f98164c = i10 + 1;
            return B0.o(iArr[i10]);
        }

        @Override
        public boolean hasNext() {
            return this.f98164c < this.f98163b.length;
        }

        @Override
        public B0 next() {
            return B0.e(a());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @InterfaceC14410f0
    public C0(int[] iArr) {
        this.f98162b = iArr;
    }

    @NotNull
    public static Iterator<B0> A(int[] iArr) {
        return new a(iArr);
    }

    public static final void B(int[] iArr, int i10, int i11) {
        iArr[i10] = i11;
    }

    public static String C(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ')';
    }

    public static final C0 k(int[] iArr) {
        return new C0(iArr);
    }

    @NotNull
    public static int[] l(int i10) {
        return m(new int[i10]);
    }

    @InterfaceC14410f0
    @NotNull
    public static int[] m(@NotNull int[] storage) {
        kotlin.jvm.internal.M.p(storage, "storage");
        return storage;
    }

    public static boolean o(int[] iArr, int i10) {
        return C14960A.z8(iArr, i10);
    }

    public static boolean p(int[] iArr, @NotNull Collection<B0> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        Collection<B0> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (B0 b02 : collection) {
            if (!(b02 instanceof B0) || !C14960A.z8(iArr, b02.q0())) {
                return false;
            }
        }
        return true;
    }

    public static boolean r(int[] iArr, Object obj) {
        return (obj instanceof C0) && kotlin.jvm.internal.M.g(iArr, ((C0) obj).D());
    }

    public static final boolean s(int[] iArr, int[] iArr2) {
        return kotlin.jvm.internal.M.g(iArr, iArr2);
    }

    public static final int t(int[] iArr, int i10) {
        return B0.o(iArr[i10]);
    }

    public static int v(int[] iArr) {
        return iArr.length;
    }

    @InterfaceC14410f0
    public static void x() {
    }

    public static int y(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    public static boolean z(int[] iArr) {
        return iArr.length == 0;
    }

    public final int[] D() {
        return this.f98162b;
    }

    @Override
    public boolean add(B0 b02) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection<? extends B0> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof B0) {
            return n(((B0) obj).q0());
        }
        return false;
    }

    @Override
    public boolean containsAll(@NotNull Collection<?> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return p(this.f98162b, elements);
    }

    @Override
    public boolean equals(Object obj) {
        return r(this.f98162b, obj);
    }

    @Override
    public int hashCode() {
        return y(this.f98162b);
    }

    @Override
    public boolean isEmpty() {
        return z(this.f98162b);
    }

    @Override
    @NotNull
    public Iterator<B0> iterator() {
        return A(this.f98162b);
    }

    public boolean j(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean n(int i10) {
        return o(this.f98162b, i10);
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
    public Object[] toArray() {
        return C14025w.a(this);
    }

    public String toString() {
        return C(this.f98162b);
    }

    @Override
    public int size() {
        return v(this.f98162b);
    }

    @Override
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(this, array);
    }
}
