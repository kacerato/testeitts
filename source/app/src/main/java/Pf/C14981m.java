package pf;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.C14026x;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,673:1\n488#1,53:676\n488#1,53:729\n37#2,2:674\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n482#1:676,53\n485#1:729,53\n46#1:674,2\n*E\n"})
@InterfaceC14422l0(version = "1.4")
public final class C14981m<E> extends AbstractC14975h<E> {

    @NotNull
    public static final a f103867e = new a(null);

    @NotNull
    public static final Object[] f103868f = new Object[0];

    public static final int f103869g = 10;

    public int f103870b;

    @NotNull
    public Object[] f103871c;

    public int f103872d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public C14981m(int i10) {
        Object[] objArr;
        if (i10 == 0) {
            objArr = f103868f;
        } else if (i10 > 0) {
            objArr = new Object[i10];
        } else {
            throw new IllegalArgumentException("Illegal Capacity: " + i10);
        }
        this.f103871c = objArr;
    }

    public final int A(int i10) {
        Object[] objArr = this.f103871c;
        return i10 >= objArr.length ? i10 - objArr.length : i10;
    }

    public final void B() {
        this.modCount++;
    }

    @InterfaceC14394D
    @Nullable
    public final E C() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    @InterfaceC14394D
    @Nullable
    public final E D() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    public final void E(int i10, int i11) {
        int A10 = A(this.f103870b + (i10 - 1));
        int A11 = A(this.f103870b + (i11 - 1));
        while (i10 > 0) {
            int i12 = A10 + 1;
            int min = Math.min(i10, Math.min(i12, A11 + 1));
            Object[] objArr = this.f103871c;
            int i13 = A11 - min;
            int i14 = A10 - min;
            C14985q.B0(objArr, objArr, i13 + 1, i14 + 1, i12);
            A10 = y(i14);
            A11 = y(i13);
            i10 -= min;
        }
    }

    public final void F(int i10, int i11) {
        int A10 = A(this.f103870b + i11);
        int A11 = A(this.f103870b + i10);
        int size = size();
        while (true) {
            size -= i11;
            if (size <= 0) {
                return;
            }
            Object[] objArr = this.f103871c;
            i11 = Math.min(size, Math.min(objArr.length - A10, objArr.length - A11));
            Object[] objArr2 = this.f103871c;
            int i12 = A10 + i11;
            C14985q.B0(objArr2, objArr2, A11, A10, i12);
            A10 = A(i12);
            A11 = A(A11 + i11);
        }
    }

    public final void G(int i10, int i11) {
        removeRange(i10, i11);
    }

    @NotNull
    public final Object[] H() {
        return toArray();
    }

    @NotNull
    public final <T> T[] I(@NotNull T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) toArray(array);
    }

    @Override
    public int a() {
        return this.f103872d;
    }

    @Override
    @InterfaceC14394D
    public boolean add(E e10) {
        addLast(e10);
        return true;
    }

    @Override
    @InterfaceC14394D
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        B();
        n(size() + elements.size());
        k(A(this.f103870b + size()), elements);
        return true;
    }

    public final void addFirst(E e10) {
        B();
        n(size() + 1);
        int m10 = m(this.f103870b);
        this.f103870b = m10;
        this.f103871c[m10] = e10;
        this.f103872d = size() + 1;
    }

    public final void addLast(E e10) {
        B();
        n(size() + 1);
        this.f103871c[A(this.f103870b + size())] = e10;
        this.f103872d = size() + 1;
    }

    @Override
    public void clear() {
        if (!isEmpty()) {
            B();
            z(this.f103870b, A(this.f103870b + size()));
        }
        this.f103870b = 0;
        this.f103872d = 0;
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final E first() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.f103871c[this.f103870b];
    }

    @Override
    public E get(int i10) {
        AbstractC14967d.f103841b.b(i10, size());
        return (E) this.f103871c[A(this.f103870b + i10)];
    }

    @Override
    public int indexOf(Object obj) {
        int i10;
        int A10 = A(this.f103870b + size());
        int i11 = this.f103870b;
        if (i11 < A10) {
            while (i11 < A10) {
                if (kotlin.jvm.internal.M.g(obj, this.f103871c[i11])) {
                    i10 = this.f103870b;
                } else {
                    i11++;
                }
            }
            return -1;
        }
        if (isEmpty() || (i11 = this.f103870b) < A10) {
            return -1;
        }
        int length = this.f103871c.length;
        while (true) {
            if (i11 >= length) {
                for (int i12 = 0; i12 < A10; i12++) {
                    if (kotlin.jvm.internal.M.g(obj, this.f103871c[i12])) {
                        i11 = i12 + this.f103871c.length;
                        i10 = this.f103870b;
                    }
                }
                return -1;
            }
            if (kotlin.jvm.internal.M.g(obj, this.f103871c[i11])) {
                i10 = this.f103870b;
                break;
            }
            i11++;
        }
        return i11 - i10;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    @InterfaceC14394D
    public E j(int i10) {
        AbstractC14967d.f103841b.b(i10, size());
        if (i10 == H.L(this)) {
            return removeLast();
        }
        if (i10 == 0) {
            return removeFirst();
        }
        B();
        int A10 = A(this.f103870b + i10);
        E e10 = (E) this.f103871c[A10];
        if (i10 < (size() >> 1)) {
            int i11 = this.f103870b;
            if (A10 >= i11) {
                Object[] objArr = this.f103871c;
                C14985q.B0(objArr, objArr, i11 + 1, i11, A10);
            } else {
                Object[] objArr2 = this.f103871c;
                C14985q.B0(objArr2, objArr2, 1, 0, A10);
                Object[] objArr3 = this.f103871c;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i12 = this.f103870b;
                C14985q.B0(objArr3, objArr3, i12 + 1, i12, objArr3.length - 1);
            }
            Object[] objArr4 = this.f103871c;
            int i13 = this.f103870b;
            objArr4[i13] = null;
            this.f103870b = s(i13);
        } else {
            int A11 = A(this.f103870b + H.L(this));
            if (A10 <= A11) {
                Object[] objArr5 = this.f103871c;
                C14985q.B0(objArr5, objArr5, A10, A10 + 1, A11 + 1);
            } else {
                Object[] objArr6 = this.f103871c;
                C14985q.B0(objArr6, objArr6, A10, A10 + 1, objArr6.length);
                Object[] objArr7 = this.f103871c;
                objArr7[objArr7.length - 1] = objArr7[0];
                C14985q.B0(objArr7, objArr7, 0, 1, A11 + 1);
            }
            this.f103871c[A11] = null;
        }
        this.f103872d = size() - 1;
        return e10;
    }

    public final void k(int i10, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.f103871c.length;
        while (i10 < length && it.hasNext()) {
            this.f103871c[i10] = it.next();
            i10++;
        }
        int i11 = this.f103870b;
        for (int i12 = 0; i12 < i11 && it.hasNext(); i12++) {
            this.f103871c[i12] = it.next();
        }
        this.f103872d = size() + collection.size();
    }

    public final void l(int i10) {
        Object[] objArr = new Object[i10];
        Object[] objArr2 = this.f103871c;
        C14985q.B0(objArr2, objArr, 0, this.f103870b, objArr2.length);
        Object[] objArr3 = this.f103871c;
        int length = objArr3.length;
        int i11 = this.f103870b;
        C14985q.B0(objArr3, objArr, length - i11, 0, i11);
        this.f103870b = 0;
        this.f103871c = objArr;
    }

    public final E last() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.f103871c[A(this.f103870b + H.L(this))];
    }

    @Override
    public int lastIndexOf(Object obj) {
        int Oe2;
        int i10;
        int A10 = A(this.f103870b + size());
        int i11 = this.f103870b;
        if (i11 < A10) {
            Oe2 = A10 - 1;
            if (i11 <= Oe2) {
                while (!kotlin.jvm.internal.M.g(obj, this.f103871c[Oe2])) {
                    if (Oe2 != i11) {
                        Oe2--;
                    }
                }
                i10 = this.f103870b;
                return Oe2 - i10;
            }
            return -1;
        }
        if (!isEmpty() && this.f103870b >= A10) {
            int i12 = A10 - 1;
            while (true) {
                if (-1 >= i12) {
                    Oe2 = C14960A.Oe(this.f103871c);
                    int i13 = this.f103870b;
                    if (i13 <= Oe2) {
                        while (!kotlin.jvm.internal.M.g(obj, this.f103871c[Oe2])) {
                            if (Oe2 != i13) {
                                Oe2--;
                            }
                        }
                        i10 = this.f103870b;
                    }
                } else {
                    if (kotlin.jvm.internal.M.g(obj, this.f103871c[i12])) {
                        Oe2 = i12 + this.f103871c.length;
                        i10 = this.f103870b;
                        break;
                    }
                    i12--;
                }
            }
            return Oe2 - i10;
        }
        return -1;
    }

    public final int m(int i10) {
        return i10 == 0 ? C14960A.Oe(this.f103871c) : i10 - 1;
    }

    public final void n(int i10) {
        if (i10 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f103871c;
        if (i10 <= objArr.length) {
            return;
        }
        if (objArr == f103868f) {
            this.f103871c = new Object[Vf.u.w(i10, 10)];
        } else {
            l(AbstractC14967d.f103841b.e(objArr.length, i10));
        }
    }

    public final boolean o(Mf.l<? super E, Boolean> lVar) {
        int A10;
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.f103871c.length != 0) {
            int A11 = A(this.f103870b + size());
            int i10 = this.f103870b;
            if (i10 < A11) {
                A10 = i10;
                while (i10 < A11) {
                    Object obj = this.f103871c[i10];
                    if (lVar.invoke(obj).booleanValue()) {
                        this.f103871c[A10] = obj;
                        A10++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                C14985q.M1(this.f103871c, null, A10, A11);
            } else {
                int length = this.f103871c.length;
                boolean z11 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.f103871c;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (lVar.invoke(obj2).booleanValue()) {
                        this.f103871c[i11] = obj2;
                        i11++;
                    } else {
                        z11 = true;
                    }
                    i10++;
                }
                A10 = A(i11);
                for (int i12 = 0; i12 < A11; i12++) {
                    Object[] objArr2 = this.f103871c;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (lVar.invoke(obj3).booleanValue()) {
                        this.f103871c[A10] = obj3;
                        A10 = s(A10);
                    } else {
                        z11 = true;
                    }
                }
                z10 = z11;
            }
            if (z10) {
                B();
                this.f103872d = y(A10 - this.f103870b);
            }
        }
        return z10;
    }

    @Nullable
    public final E r() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f103871c[this.f103870b];
    }

    @Override
    @InterfaceC14394D
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        j(indexOf);
        return true;
    }

    @Override
    @InterfaceC14394D
    public boolean removeAll(@NotNull Collection<?> elements) {
        int A10;
        kotlin.jvm.internal.M.p(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.f103871c.length != 0) {
            int A11 = A(this.f103870b + size());
            int i10 = this.f103870b;
            if (i10 < A11) {
                A10 = i10;
                while (i10 < A11) {
                    Object obj = this.f103871c[i10];
                    if (elements.contains(obj)) {
                        z10 = true;
                    } else {
                        this.f103871c[A10] = obj;
                        A10++;
                    }
                    i10++;
                }
                C14985q.M1(this.f103871c, null, A10, A11);
            } else {
                int length = this.f103871c.length;
                boolean z11 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.f103871c;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (elements.contains(obj2)) {
                        z11 = true;
                    } else {
                        this.f103871c[i11] = obj2;
                        i11++;
                    }
                    i10++;
                }
                A10 = A(i11);
                for (int i12 = 0; i12 < A11; i12++) {
                    Object[] objArr2 = this.f103871c;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (elements.contains(obj3)) {
                        z11 = true;
                    } else {
                        this.f103871c[A10] = obj3;
                        A10 = s(A10);
                    }
                }
                z10 = z11;
            }
            if (z10) {
                B();
                this.f103872d = y(A10 - this.f103870b);
            }
        }
        return z10;
    }

    @InterfaceC14394D
    public final E removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        B();
        Object[] objArr = this.f103871c;
        int i10 = this.f103870b;
        E e10 = (E) objArr[i10];
        objArr[i10] = null;
        this.f103870b = s(i10);
        this.f103872d = size() - 1;
        return e10;
    }

    @InterfaceC14394D
    public final E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        B();
        int A10 = A(this.f103870b + H.L(this));
        Object[] objArr = this.f103871c;
        E e10 = (E) objArr[A10];
        objArr[A10] = null;
        this.f103872d = size() - 1;
        return e10;
    }

    @Override
    public void removeRange(int i10, int i11) {
        AbstractC14967d.f103841b.d(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == 0) {
            return;
        }
        if (i12 == size()) {
            clear();
            return;
        }
        if (i12 == 1) {
            j(i10);
            return;
        }
        B();
        if (i10 < size() - i11) {
            E(i10, i11);
            int A10 = A(this.f103870b + i12);
            z(this.f103870b, A10);
            this.f103870b = A10;
        } else {
            F(i10, i11);
            int A11 = A(this.f103870b + size());
            z(y(A11 - i12), A11);
        }
        this.f103872d = size() - i12;
    }

    @Override
    @InterfaceC14394D
    public boolean retainAll(@NotNull Collection<?> elements) {
        int A10;
        kotlin.jvm.internal.M.p(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.f103871c.length != 0) {
            int A11 = A(this.f103870b + size());
            int i10 = this.f103870b;
            if (i10 < A11) {
                A10 = i10;
                while (i10 < A11) {
                    Object obj = this.f103871c[i10];
                    if (elements.contains(obj)) {
                        this.f103871c[A10] = obj;
                        A10++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                C14985q.M1(this.f103871c, null, A10, A11);
            } else {
                int length = this.f103871c.length;
                boolean z11 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.f103871c;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (elements.contains(obj2)) {
                        this.f103871c[i11] = obj2;
                        i11++;
                    } else {
                        z11 = true;
                    }
                    i10++;
                }
                A10 = A(i11);
                for (int i12 = 0; i12 < A11; i12++) {
                    Object[] objArr2 = this.f103871c;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (elements.contains(obj3)) {
                        this.f103871c[A10] = obj3;
                        A10 = s(A10);
                    } else {
                        z11 = true;
                    }
                }
                z10 = z11;
            }
            if (z10) {
                B();
                this.f103872d = y(A10 - this.f103870b);
            }
        }
        return z10;
    }

    public final int s(int i10) {
        if (i10 == C14960A.Oe(this.f103871c)) {
            return 0;
        }
        return i10 + 1;
    }

    @Override
    @InterfaceC14394D
    public E set(int i10, E e10) {
        AbstractC14967d.f103841b.b(i10, size());
        int A10 = A(this.f103870b + i10);
        Object[] objArr = this.f103871c;
        E e11 = (E) objArr[A10];
        objArr[A10] = e10;
        return e11;
    }

    @Override
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        if (array.length < size()) {
            array = (T[]) C14983o.a(array, size());
        }
        int A10 = A(this.f103870b + size());
        int i10 = this.f103870b;
        if (i10 < A10) {
            C14985q.K0(this.f103871c, array, 0, i10, A10, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f103871c;
            C14985q.B0(objArr, array, 0, this.f103870b, objArr.length);
            Object[] objArr2 = this.f103871c;
            C14985q.B0(objArr2, array, objArr2.length - this.f103870b, 0, A10);
        }
        return (T[]) G.o(size(), array);
    }

    @Ef.f
    public final E u(int i10) {
        return (E) this.f103871c[i10];
    }

    @Ef.f
    public final int v(int i10) {
        return A(this.f103870b + i10);
    }

    public final void w(@NotNull Mf.p<? super Integer, ? super Object[], P0> structure) {
        int i10;
        kotlin.jvm.internal.M.p(structure, "structure");
        structure.invoke(Integer.valueOf((isEmpty() || (i10 = this.f103870b) < A(this.f103870b + size())) ? this.f103870b : i10 - this.f103871c.length), toArray());
    }

    @Nullable
    public final E x() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f103871c[A(this.f103870b + H.L(this))];
    }

    public final int y(int i10) {
        return i10 < 0 ? i10 + this.f103871c.length : i10;
    }

    public final void z(int i10, int i11) {
        if (i10 < i11) {
            C14985q.M1(this.f103871c, null, i10, i11);
            return;
        }
        Object[] objArr = this.f103871c;
        C14985q.M1(objArr, null, i10, objArr.length);
        C14985q.M1(this.f103871c, null, 0, i11);
    }

    @Override
    public void add(int i10, E e10) {
        AbstractC14967d.f103841b.c(i10, size());
        if (i10 == size()) {
            addLast(e10);
            return;
        }
        if (i10 == 0) {
            addFirst(e10);
            return;
        }
        B();
        n(size() + 1);
        int A10 = A(this.f103870b + i10);
        if (i10 < ((size() + 1) >> 1)) {
            int m10 = m(A10);
            int m11 = m(this.f103870b);
            int i11 = this.f103870b;
            if (m10 >= i11) {
                Object[] objArr = this.f103871c;
                objArr[m11] = objArr[i11];
                C14985q.B0(objArr, objArr, i11, i11 + 1, m10 + 1);
            } else {
                Object[] objArr2 = this.f103871c;
                C14985q.B0(objArr2, objArr2, i11 - 1, i11, objArr2.length);
                Object[] objArr3 = this.f103871c;
                objArr3[objArr3.length - 1] = objArr3[0];
                C14985q.B0(objArr3, objArr3, 0, 1, m10 + 1);
            }
            this.f103871c[m10] = e10;
            this.f103870b = m11;
        } else {
            int A11 = A(this.f103870b + size());
            if (A10 < A11) {
                Object[] objArr4 = this.f103871c;
                C14985q.B0(objArr4, objArr4, A10 + 1, A10, A11);
            } else {
                Object[] objArr5 = this.f103871c;
                C14985q.B0(objArr5, objArr5, 1, 0, A11);
                Object[] objArr6 = this.f103871c;
                objArr6[0] = objArr6[objArr6.length - 1];
                C14985q.B0(objArr6, objArr6, A10 + 1, A10, objArr6.length - 1);
            }
            this.f103871c[A10] = e10;
        }
        this.f103872d = size() + 1;
    }

    @Override
    @InterfaceC14394D
    public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        AbstractC14967d.f103841b.c(i10, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i10 == size()) {
            return addAll(elements);
        }
        B();
        n(size() + elements.size());
        int A10 = A(this.f103870b + size());
        int A11 = A(this.f103870b + i10);
        int size = elements.size();
        if (i10 < ((size() + 1) >> 1)) {
            int i11 = this.f103870b;
            int i12 = i11 - size;
            if (A11 < i11) {
                Object[] objArr = this.f103871c;
                C14985q.B0(objArr, objArr, i12, i11, objArr.length);
                if (size >= A11) {
                    Object[] objArr2 = this.f103871c;
                    C14985q.B0(objArr2, objArr2, objArr2.length - size, 0, A11);
                } else {
                    Object[] objArr3 = this.f103871c;
                    C14985q.B0(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f103871c;
                    C14985q.B0(objArr4, objArr4, 0, size, A11);
                }
            } else if (i12 >= 0) {
                Object[] objArr5 = this.f103871c;
                C14985q.B0(objArr5, objArr5, i12, i11, A11);
            } else {
                Object[] objArr6 = this.f103871c;
                i12 += objArr6.length;
                int i13 = A11 - i11;
                int length = objArr6.length - i12;
                if (length >= i13) {
                    C14985q.B0(objArr6, objArr6, i12, i11, A11);
                } else {
                    C14985q.B0(objArr6, objArr6, i12, i11, i11 + length);
                    Object[] objArr7 = this.f103871c;
                    C14985q.B0(objArr7, objArr7, 0, this.f103870b + length, A11);
                }
            }
            this.f103870b = i12;
            k(y(A11 - size), elements);
        } else {
            int i14 = A11 + size;
            if (A11 < A10) {
                int i15 = size + A10;
                Object[] objArr8 = this.f103871c;
                if (i15 <= objArr8.length) {
                    C14985q.B0(objArr8, objArr8, i14, A11, A10);
                } else if (i14 >= objArr8.length) {
                    C14985q.B0(objArr8, objArr8, i14 - objArr8.length, A11, A10);
                } else {
                    int length2 = A10 - (i15 - objArr8.length);
                    C14985q.B0(objArr8, objArr8, 0, length2, A10);
                    Object[] objArr9 = this.f103871c;
                    C14985q.B0(objArr9, objArr9, i14, A11, length2);
                }
            } else {
                Object[] objArr10 = this.f103871c;
                C14985q.B0(objArr10, objArr10, size, 0, A10);
                Object[] objArr11 = this.f103871c;
                if (i14 >= objArr11.length) {
                    C14985q.B0(objArr11, objArr11, i14 - objArr11.length, A11, objArr11.length);
                } else {
                    C14985q.B0(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f103871c;
                    C14985q.B0(objArr12, objArr12, i14, A11, objArr12.length - size);
                }
            }
            k(A11, elements);
        }
        return true;
    }

    public C14981m() {
        this.f103871c = f103868f;
    }

    public C14981m(@NotNull Collection<? extends E> elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        Object[] array = elements.toArray(new Object[0]);
        this.f103871c = array;
        this.f103872d = array.length;
        if (array.length == 0) {
            this.f103871c = f103868f;
        }
    }

    @Override
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
