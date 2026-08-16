package nf;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14025w;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;

@kotlin.jvm.internal.t0({"SMAP\nUByteArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1786#2,3:83\n*S KotlinDebug\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray\n*L\n58#1:83,3\n*E\n"})
@InterfaceC14443y
@Lf.h
@InterfaceC14422l0(version = "1.3")
public final class y0 implements Collection<x0>, Nf.a {

    @NotNull
    public final byte[] f98231b;

    public static final class a implements Iterator<x0>, Nf.a {

        @NotNull
        public final byte[] f98232b;

        public int f98233c;

        public a(@NotNull byte[] array) {
            kotlin.jvm.internal.M.p(array, "array");
            this.f98232b = array;
        }

        public byte a() {
            int i10 = this.f98233c;
            byte[] bArr = this.f98232b;
            if (i10 >= bArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f98233c));
            }
            this.f98233c = i10 + 1;
            return x0.i(bArr[i10]);
        }

        @Override
        public boolean hasNext() {
            return this.f98233c < this.f98232b.length;
        }

        @Override
        public x0 next() {
            return x0.b(a());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @InterfaceC14410f0
    public y0(byte[] bArr) {
        this.f98231b = bArr;
    }

    public static final y0 b(byte[] bArr) {
        return new y0(bArr);
    }

    @NotNull
    public static byte[] j(int i10) {
        return k(new byte[i10]);
    }

    @InterfaceC14410f0
    @NotNull
    public static byte[] k(@NotNull byte[] storage) {
        kotlin.jvm.internal.M.p(storage, "storage");
        return storage;
    }

    public static boolean m(byte[] bArr, byte b10) {
        return C14960A.v8(bArr, b10);
    }

    public static boolean n(byte[] bArr, @NotNull Collection<x0> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        Collection<x0> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (x0 x0Var : collection) {
            if (!(x0Var instanceof x0) || !C14960A.v8(bArr, x0Var.j0())) {
                return false;
            }
        }
        return true;
    }

    public static boolean o(byte[] bArr, Object obj) {
        return (obj instanceof y0) && kotlin.jvm.internal.M.g(bArr, ((y0) obj).A());
    }

    public static final boolean p(byte[] bArr, byte[] bArr2) {
        return kotlin.jvm.internal.M.g(bArr, bArr2);
    }

    public static final byte r(byte[] bArr, int i10) {
        return x0.i(bArr[i10]);
    }

    public static int t(byte[] bArr) {
        return bArr.length;
    }

    @InterfaceC14410f0
    public static void u() {
    }

    public static int v(byte[] bArr) {
        return Arrays.hashCode(bArr);
    }

    public static boolean w(byte[] bArr) {
        return bArr.length == 0;
    }

    @NotNull
    public static Iterator<x0> x(byte[] bArr) {
        return new a(bArr);
    }

    public static final void y(byte[] bArr, int i10, byte b10) {
        bArr[i10] = b10;
    }

    public static String z(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ')';
    }

    public final byte[] A() {
        return this.f98231b;
    }

    public boolean a(byte b10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean add(x0 x0Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection<? extends x0> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof x0) {
            return l(((x0) obj).j0());
        }
        return false;
    }

    @Override
    public boolean containsAll(@NotNull Collection<?> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return n(this.f98231b, elements);
    }

    @Override
    public boolean equals(Object obj) {
        return o(this.f98231b, obj);
    }

    @Override
    public int hashCode() {
        return v(this.f98231b);
    }

    @Override
    public boolean isEmpty() {
        return w(this.f98231b);
    }

    @Override
    @NotNull
    public Iterator<x0> iterator() {
        return x(this.f98231b);
    }

    public boolean l(byte b10) {
        return m(this.f98231b, b10);
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
        return t(this.f98231b);
    }

    @Override
    public Object[] toArray() {
        return C14025w.a(this);
    }

    public String toString() {
        return z(this.f98231b);
    }

    @Override
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(this, array);
    }
}
