package pf;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n204#1:208\n204#1:209\n204#1:210\n1#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n106#1:208\n175#1:209\n188#1:210\n*E\n"})
public final class w0<T> extends AbstractC14967d<T> implements RandomAccess {

    @NotNull
    public final Object[] f103899d;

    public final int f103900e;

    public int f103901f;

    public int f103902g;

    @kotlin.jvm.internal.t0({"SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,206:1\n204#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:207\n*E\n"})
    public static final class a extends AbstractC14965c<T> {

        public int f103903d;

        public int f103904e;

        public final w0<T> f103905f;

        public a(w0<T> w0Var) {
            this.f103905f = w0Var;
            this.f103903d = w0Var.size();
            this.f103904e = w0Var.f103901f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a() {
            if (this.f103903d == 0) {
                b();
                return;
            }
            c(this.f103905f.f103899d[this.f103904e]);
            this.f103904e = (this.f103904e + 1) % this.f103905f.f103900e;
            this.f103903d--;
        }
    }

    public w0(@NotNull Object[] buffer, int i10) {
        kotlin.jvm.internal.M.p(buffer, "buffer");
        this.f103899d = buffer;
        if (i10 >= 0) {
            if (i10 <= buffer.length) {
                this.f103900e = buffer.length;
                this.f103902g = i10;
                return;
            }
            throw new IllegalArgumentException(("ring buffer filled size: " + i10 + " cannot be larger than the buffer size: " + buffer.length).toString());
        }
        throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i10).toString());
    }

    @Override
    public int b() {
        return this.f103902g;
    }

    public final void g(T t10) {
        if (l()) {
            throw new IllegalStateException("ring buffer is full");
        }
        this.f103899d[(this.f103901f + size()) % this.f103900e] = t10;
        this.f103902g = size() + 1;
    }

    @Override
    public T get(int i10) {
        AbstractC14967d.f103841b.b(i10, size());
        return (T) this.f103899d[(this.f103901f + i10) % this.f103900e];
    }

    @Override
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final w0<T> j(int i10) {
        Object[] array;
        int i11 = this.f103900e;
        int D10 = Vf.u.D(i11 + (i11 >> 1) + 1, i10);
        if (this.f103901f == 0) {
            array = Arrays.copyOf(this.f103899d, D10);
            kotlin.jvm.internal.M.o(array, "copyOf(...)");
        } else {
            array = toArray(new Object[D10]);
        }
        return new w0<>(array, size());
    }

    public final int k(int i10, int i11) {
        return (i10 + i11) % this.f103900e;
    }

    public final boolean l() {
        return size() == this.f103900e;
    }

    public final void m(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i10).toString());
        }
        if (i10 > size()) {
            throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i10 + ", size = " + size()).toString());
        }
        if (i10 > 0) {
            int i11 = this.f103901f;
            int i12 = (i11 + i10) % this.f103900e;
            if (i11 > i12) {
                C14985q.M1(this.f103899d, null, i11, this.f103900e);
                C14985q.M1(this.f103899d, null, 0, i12);
            } else {
                C14985q.M1(this.f103899d, null, i11, i12);
            }
            this.f103901f = i12;
            this.f103902g = size() - i10;
        }
    }

    @Override
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        int length = array.length;
        Object[] objArr = array;
        if (length < size()) {
            Object[] objArr2 = (T[]) Arrays.copyOf(array, size());
            kotlin.jvm.internal.M.o(objArr2, "copyOf(...)");
            objArr = objArr2;
        }
        int size = size();
        int i10 = 0;
        int i11 = 0;
        for (int i12 = this.f103901f; i11 < size && i12 < this.f103900e; i12++) {
            objArr[i11] = this.f103899d[i12];
            i11++;
        }
        while (i11 < size) {
            objArr[i11] = this.f103899d[i10];
            i11++;
            i10++;
        }
        return (T[]) G.o(size, objArr);
    }

    public w0(int i10) {
        this(new Object[i10], 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
