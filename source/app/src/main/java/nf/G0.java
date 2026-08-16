package nf;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14025w;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;

@kotlin.jvm.internal.t0({"SMAP\nULongArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ULongArray.kt\nkotlin/ULongArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1786#2,3:83\n*S KotlinDebug\n*F\n+ 1 ULongArray.kt\nkotlin/ULongArray\n*L\n58#1:83,3\n*E\n"})
@InterfaceC14443y
@Lf.h
@InterfaceC14422l0(version = "1.3")
public final class G0 implements Collection<F0>, Nf.a {

    @NotNull
    public final long[] f98180b;

    public static final class a implements Iterator<F0>, Nf.a {

        @NotNull
        public final long[] f98181b;

        public int f98182c;

        public a(@NotNull long[] array) {
            kotlin.jvm.internal.M.p(array, "array");
            this.f98181b = array;
        }

        public long a() {
            int i10 = this.f98182c;
            long[] jArr = this.f98181b;
            if (i10 >= jArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f98182c));
            }
            this.f98182c = i10 + 1;
            return F0.i(jArr[i10]);
        }

        @Override
        public boolean hasNext() {
            return this.f98182c < this.f98181b.length;
        }

        @Override
        public F0 next() {
            return F0.b(a());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @InterfaceC14410f0
    public G0(long[] jArr) {
        this.f98180b = jArr;
    }

    public static final G0 b(long[] jArr) {
        return new G0(jArr);
    }

    @NotNull
    public static long[] j(int i10) {
        return k(new long[i10]);
    }

    @InterfaceC14410f0
    @NotNull
    public static long[] k(@NotNull long[] storage) {
        kotlin.jvm.internal.M.p(storage, "storage");
        return storage;
    }

    public static boolean m(long[] jArr, long j10) {
        return C14960A.A8(jArr, j10);
    }

    public static boolean n(long[] jArr, @NotNull Collection<F0> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        Collection<F0> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (F0 f02 : collection) {
            if (!(f02 instanceof F0) || !C14960A.A8(jArr, f02.l0())) {
                return false;
            }
        }
        return true;
    }

    public static boolean o(long[] jArr, Object obj) {
        return (obj instanceof G0) && kotlin.jvm.internal.M.g(jArr, ((G0) obj).A());
    }

    public static final boolean p(long[] jArr, long[] jArr2) {
        return kotlin.jvm.internal.M.g(jArr, jArr2);
    }

    public static final long r(long[] jArr, int i10) {
        return F0.i(jArr[i10]);
    }

    public static int t(long[] jArr) {
        return jArr.length;
    }

    @InterfaceC14410f0
    public static void u() {
    }

    public static int v(long[] jArr) {
        return Arrays.hashCode(jArr);
    }

    public static boolean w(long[] jArr) {
        return jArr.length == 0;
    }

    @NotNull
    public static Iterator<F0> x(long[] jArr) {
        return new a(jArr);
    }

    public static final void y(long[] jArr, int i10, long j10) {
        jArr[i10] = j10;
    }

    public static String z(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ')';
    }

    public final long[] A() {
        return this.f98180b;
    }

    public boolean a(long j10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean add(F0 f02) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection<? extends F0> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof F0) {
            return l(((F0) obj).l0());
        }
        return false;
    }

    @Override
    public boolean containsAll(@NotNull Collection<?> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return n(this.f98180b, elements);
    }

    @Override
    public boolean equals(Object obj) {
        return o(this.f98180b, obj);
    }

    @Override
    public int hashCode() {
        return v(this.f98180b);
    }

    @Override
    public boolean isEmpty() {
        return w(this.f98180b);
    }

    @Override
    @NotNull
    public Iterator<F0> iterator() {
        return x(this.f98180b);
    }

    public boolean l(long j10) {
        return m(this.f98180b, j10);
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
        return t(this.f98180b);
    }

    @Override
    public Object[] toArray() {
        return C14025w.a(this);
    }

    public String toString() {
        return z(this.f98180b);
    }

    @Override
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(this, array);
    }
}
