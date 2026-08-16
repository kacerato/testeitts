package cb;

import cb.o;
import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.eclipse.jdt.internal.core.JavaElement;

public class b<T> implements Iterable<T> {

    public T[] f34501b;

    public int f34502c;

    public boolean f34503d;

    public a f34504e;

    public o.a<T> f34505f;

    public static class a<T> implements Iterable<T> {

        public final b<T> f34506b;

        public final boolean f34507c;

        public C0906b f34508d;

        public C0906b f34509e;

        public a(b<T> array) {
            this(array, true);
        }

        @Override
        public C0906b<T> iterator() {
            if (e.f34523a) {
                return new C0906b<>(this.f34506b, this.f34507c);
            }
            if (this.f34508d == null) {
                this.f34508d = new C0906b(this.f34506b, this.f34507c);
                this.f34509e = new C0906b(this.f34506b, this.f34507c);
            }
            C0906b<T> c0906b = this.f34508d;
            if (!c0906b.f34513e) {
                c0906b.f34512d = 0;
                c0906b.f34513e = true;
                this.f34509e.f34513e = false;
                return c0906b;
            }
            C0906b<T> c0906b2 = this.f34509e;
            c0906b2.f34512d = 0;
            c0906b2.f34513e = true;
            c0906b.f34513e = false;
            return c0906b2;
        }

        public a(b<T> array, boolean allowRemove) {
            this.f34506b = array;
            this.f34507c = allowRemove;
        }
    }

    public static class C0906b<T> implements Iterator<T>, Iterable<T> {

        public final b<T> f34510b;

        public final boolean f34511c;

        public int f34512d;

        public boolean f34513e;

        public C0906b(b<T> array) {
            this(array, true);
        }

        @Override
        public C0906b<T> iterator() {
            return this;
        }

        public void b() {
            this.f34512d = 0;
        }

        @Override
        public boolean hasNext() {
            if (this.f34513e) {
                return this.f34512d < this.f34510b.f34502c;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override
        public T next() {
            int i10 = this.f34512d;
            b<T> bVar = this.f34510b;
            if (i10 >= bVar.f34502c) {
                throw new NoSuchElementException(String.valueOf(this.f34512d));
            }
            if (!this.f34513e) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            T[] tArr = bVar.f34501b;
            this.f34512d = i10 + 1;
            return tArr[i10];
        }

        @Override
        public void remove() {
            if (!this.f34511c) {
                throw new GdxRuntimeException("Remove not allowed.");
            }
            int i10 = this.f34512d - 1;
            this.f34512d = i10;
            this.f34510b.A(i10);
        }

        public C0906b(b<T> array, boolean allowRemove) {
            this.f34513e = true;
            this.f34510b = array;
            this.f34511c = allowRemove;
        }
    }

    public b() {
        this(true, 16);
    }

    public static <T> b<T> S(T... array) {
        return new b<>(array);
    }

    public static <T> b<T> w(Class<T> arrayType) {
        return new b<>(arrayType);
    }

    public static <T> b<T> x(boolean ordered, int capacity, Class<T> arrayType) {
        return new b<>(ordered, capacity, arrayType);
    }

    public T A(int index) {
        int i10 = this.f34502c;
        if (index >= i10) {
            throw new IndexOutOfBoundsException("index can't be >= size: " + index + " >= " + this.f34502c);
        }
        T[] tArr = this.f34501b;
        T t10 = tArr[index];
        int i11 = i10 - 1;
        this.f34502c = i11;
        if (this.f34503d) {
            System.arraycopy(tArr, index + 1, tArr, index, i11 - index);
        } else {
            tArr[index] = tArr[i11];
        }
        tArr[this.f34502c] = null;
        return t10;
    }

    public void B(int start, int end) {
        int i10 = this.f34502c;
        if (end >= i10) {
            throw new IndexOutOfBoundsException("end can't be >= size: " + end + " >= " + this.f34502c);
        }
        if (start > end) {
            throw new IndexOutOfBoundsException("start can't be > end: " + start + " > " + end);
        }
        T[] tArr = this.f34501b;
        int i11 = (end - start) + 1;
        int i12 = i10 - i11;
        if (this.f34503d) {
            int i13 = i11 + start;
            System.arraycopy(tArr, i13, tArr, start, i10 - i13);
        } else {
            int max = Math.max(i12, end + 1);
            System.arraycopy(tArr, max, tArr, start, i10 - max);
        }
        for (int i14 = i12; i14 < i10; i14++) {
            tArr[i14] = null;
        }
        this.f34502c = i12;
    }

    public boolean C(@j T value, boolean identity) {
        T[] tArr = this.f34501b;
        if (identity || value == null) {
            int i10 = this.f34502c;
            for (int i11 = 0; i11 < i10; i11++) {
                if (tArr[i11] == value) {
                    A(i11);
                    return true;
                }
            }
        } else {
            int i12 = this.f34502c;
            for (int i13 = 0; i13 < i12; i13++) {
                if (value.equals(tArr[i13])) {
                    A(i13);
                    return true;
                }
            }
        }
        return false;
    }

    public T[] D(int i10) {
        T[] tArr = this.f34501b;
        T[] tArr2 = (T[]) ((Object[]) c.c(tArr.getClass().getComponentType(), i10));
        System.arraycopy(tArr, 0, tArr2, 0, Math.min(this.f34502c, tArr2.length));
        this.f34501b = tArr2;
        return tArr2;
    }

    public void E() {
        T[] tArr = this.f34501b;
        int i10 = this.f34502c;
        int i11 = i10 - 1;
        int i12 = i10 / 2;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i11 - i13;
            T t10 = tArr[i13];
            tArr[i13] = tArr[i14];
            tArr[i14] = t10;
        }
    }

    public Iterable<T> F(o<T> predicate) {
        if (e.f34523a) {
            return new o.a(this, predicate);
        }
        o.a<T> aVar = this.f34505f;
        if (aVar == null) {
            this.f34505f = new o.a<>(this, predicate);
        } else {
            aVar.a(this, predicate);
        }
        return this.f34505f;
    }

    public T G(Comparator<T> comparator, int i10) {
        if (i10 >= 1) {
            return (T) s.c().d(this.f34501b, comparator, i10, this.f34502c);
        }
        throw new GdxRuntimeException("nth_lowest must be greater than 0, 1 = first, 2 = second...");
    }

    public int H(Comparator<T> comparator, int kthLowest) {
        if (kthLowest >= 1) {
            return s.c().e(this.f34501b, comparator, kthLowest, this.f34502c);
        }
        throw new GdxRuntimeException("nth_lowest must be greater than 0, 1 = first, 2 = second...");
    }

    public void I(int index, T value) {
        if (index < this.f34502c) {
            this.f34501b[index] = value;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + index + " >= " + this.f34502c);
    }

    public T[] J(int newSize) {
        R(newSize);
        if (newSize > this.f34501b.length) {
            D(Math.max(8, newSize));
        }
        this.f34502c = newSize;
        return this.f34501b;
    }

    public T[] L() {
        int length = this.f34501b.length;
        int i10 = this.f34502c;
        if (length != i10) {
            D(i10);
        }
        return this.f34501b;
    }

    public void M() {
        T[] tArr = this.f34501b;
        for (int i10 = this.f34502c - 1; i10 >= 0; i10--) {
            int G10 = h.G(i10);
            T t10 = tArr[i10];
            tArr[i10] = tArr[G10];
            tArr[G10] = t10;
        }
    }

    public void N() {
        t.a().e(this.f34501b, 0, this.f34502c);
    }

    public void O(int first, int second) {
        int i10 = this.f34502c;
        if (first >= i10) {
            throw new IndexOutOfBoundsException("first can't be >= size: " + first + " >= " + this.f34502c);
        }
        if (second < i10) {
            T[] tArr = this.f34501b;
            T t10 = tArr[first];
            tArr[first] = tArr[second];
            tArr[second] = t10;
            return;
        }
        throw new IndexOutOfBoundsException("second can't be >= size: " + second + " >= " + this.f34502c);
    }

    public <V> V[] P(Class<V> cls) {
        V[] vArr = (V[]) ((Object[]) c.c(cls, this.f34502c));
        System.arraycopy(this.f34501b, 0, vArr, 0, this.f34502c);
        return vArr;
    }

    public String Q(String separator) {
        if (this.f34502c == 0) {
            return "";
        }
        T[] tArr = this.f34501b;
        u uVar = new u(32);
        uVar.n(tArr[0]);
        for (int i10 = 1; i10 < this.f34502c; i10++) {
            uVar.o(separator);
            uVar.n(tArr[i10]);
        }
        return uVar.toString();
    }

    public void R(int newSize) {
        if (newSize < 0) {
            throw new IllegalArgumentException("newSize must be >= 0: " + newSize);
        }
        if (this.f34502c <= newSize) {
            return;
        }
        for (int i10 = newSize; i10 < this.f34502c; i10++) {
            this.f34501b[i10] = null;
        }
        this.f34502c = newSize;
    }

    public void c(T value) {
        T[] tArr = this.f34501b;
        int i10 = this.f34502c;
        if (i10 == tArr.length) {
            tArr = D(Math.max(8, (int) (i10 * 1.75f)));
        }
        int i11 = this.f34502c;
        this.f34502c = i11 + 1;
        tArr[i11] = value;
    }

    public void clear() {
        Arrays.fill(this.f34501b, 0, this.f34502c, (Object) null);
        this.f34502c = 0;
    }

    public void d(T value1, T value2) {
        T[] tArr = this.f34501b;
        int i10 = this.f34502c;
        if (i10 + 1 >= tArr.length) {
            tArr = D(Math.max(8, (int) (i10 * 1.75f)));
        }
        int i11 = this.f34502c;
        tArr[i11] = value1;
        tArr[i11 + 1] = value2;
        this.f34502c = i11 + 2;
    }

    public void e(T value1, T value2, T value3) {
        T[] tArr = this.f34501b;
        int i10 = this.f34502c;
        if (i10 + 2 >= tArr.length) {
            tArr = D(Math.max(8, (int) (i10 * 1.75f)));
        }
        int i11 = this.f34502c;
        tArr[i11] = value1;
        tArr[i11 + 1] = value2;
        tArr[i11 + 2] = value3;
        this.f34502c = i11 + 3;
    }

    public boolean equals(Object object) {
        int i10;
        if (object == this) {
            return true;
        }
        if (!this.f34503d || !(object instanceof b)) {
            return false;
        }
        b bVar = (b) object;
        if (!bVar.f34503d || (i10 = this.f34502c) != bVar.f34502c) {
            return false;
        }
        T[] tArr = this.f34501b;
        T[] tArr2 = bVar.f34501b;
        for (int i11 = 0; i11 < i10; i11++) {
            T t10 = tArr[i11];
            T t11 = tArr2[i11];
            if (t10 == null) {
                if (t11 != null) {
                    return false;
                }
            } else {
                if (!t10.equals(t11)) {
                    return false;
                }
            }
        }
        return true;
    }

    public void f(T value1, T value2, T value3, T value4) {
        T[] tArr = this.f34501b;
        int i10 = this.f34502c;
        if (i10 + 3 >= tArr.length) {
            tArr = D(Math.max(8, (int) (i10 * 1.8f)));
        }
        int i11 = this.f34502c;
        tArr[i11] = value1;
        tArr[i11 + 1] = value2;
        tArr[i11 + 2] = value3;
        tArr[i11 + 3] = value4;
        this.f34502c = i11 + 4;
    }

    public T first() {
        if (this.f34502c != 0) {
            return this.f34501b[0];
        }
        throw new IllegalStateException("Array is empty.");
    }

    public void g(b<? extends T> array) {
        j(array.f34501b, 0, array.f34502c);
    }

    public T get(int index) {
        if (index < this.f34502c) {
            return this.f34501b[index];
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + index + " >= " + this.f34502c);
    }

    public void h(b<? extends T> array, int start, int count) {
        if (start + count <= array.f34502c) {
            j(array.f34501b, start, count);
            return;
        }
        throw new IllegalArgumentException("start + count must be <= size: " + start + " + " + count + " <= " + array.f34502c);
    }

    public int hashCode() {
        if (!this.f34503d) {
            return super.hashCode();
        }
        T[] tArr = this.f34501b;
        int i10 = this.f34502c;
        int i11 = 1;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 *= 31;
            T t10 = tArr[i12];
            if (t10 != null) {
                i11 += t10.hashCode();
            }
        }
        return i11;
    }

    public void i(T... array) {
        j(array, 0, array.length);
    }

    public boolean isEmpty() {
        return this.f34502c == 0;
    }

    public void j(T[] array, int start, int count) {
        T[] tArr = this.f34501b;
        int i10 = this.f34502c + count;
        if (i10 > tArr.length) {
            tArr = D(Math.max(Math.max(8, i10), (int) (this.f34502c * 1.75f)));
        }
        System.arraycopy(array, start, tArr, this.f34502c, count);
        this.f34502c = i10;
    }

    public boolean k(@j T value, boolean identity) {
        T[] tArr = this.f34501b;
        int i10 = this.f34502c - 1;
        if (identity || value == null) {
            while (i10 >= 0) {
                int i11 = i10 - 1;
                if (tArr[i10] == value) {
                    return true;
                }
                i10 = i11;
            }
            return false;
        }
        while (i10 >= 0) {
            int i12 = i10 - 1;
            if (value.equals(tArr[i10])) {
                return true;
            }
            i10 = i12;
        }
        return false;
    }

    public boolean l(b<? extends T> values, boolean identity) {
        T[] tArr = values.f34501b;
        int i10 = values.f34502c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (!k(tArr[i11], identity)) {
                return false;
            }
        }
        return true;
    }

    public boolean m(b<? extends T> values, boolean identity) {
        T[] tArr = values.f34501b;
        int i10 = values.f34502c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (k(tArr[i11], identity)) {
                return true;
            }
        }
        return false;
    }

    public T[] n(int additionalCapacity) {
        if (additionalCapacity >= 0) {
            int i10 = this.f34502c + additionalCapacity;
            if (i10 > this.f34501b.length) {
                D(Math.max(Math.max(8, i10), (int) (this.f34502c * 1.75f)));
            }
            return this.f34501b;
        }
        throw new IllegalArgumentException("additionalCapacity must be >= 0: " + additionalCapacity);
    }

    public boolean o(Object object) {
        int i10;
        if (object == this) {
            return true;
        }
        if (!this.f34503d || !(object instanceof b)) {
            return false;
        }
        b bVar = (b) object;
        if (!bVar.f34503d || (i10 = this.f34502c) != bVar.f34502c) {
            return false;
        }
        T[] tArr = this.f34501b;
        T[] tArr2 = bVar.f34501b;
        for (int i11 = 0; i11 < i10; i11++) {
            if (tArr[i11] != tArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    public int p(@j T value, boolean identity) {
        T[] tArr = this.f34501b;
        int i10 = 0;
        if (identity || value == null) {
            int i11 = this.f34502c;
            while (i10 < i11) {
                if (tArr[i10] == value) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int i12 = this.f34502c;
        while (i10 < i12) {
            if (value.equals(tArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public T peek() {
        int i10 = this.f34502c;
        if (i10 != 0) {
            return this.f34501b[i10 - 1];
        }
        throw new IllegalStateException("Array is empty.");
    }

    public T pop() {
        int i10 = this.f34502c;
        if (i10 == 0) {
            throw new IllegalStateException("Array is empty.");
        }
        int i11 = i10 - 1;
        this.f34502c = i11;
        T[] tArr = this.f34501b;
        T t10 = tArr[i11];
        tArr[i11] = null;
        return t10;
    }

    public void r(int index, T value) {
        int i10 = this.f34502c;
        if (index > i10) {
            throw new IndexOutOfBoundsException("index can't be > size: " + index + " > " + this.f34502c);
        }
        T[] tArr = this.f34501b;
        if (i10 == tArr.length) {
            tArr = D(Math.max(8, (int) (i10 * 1.75f)));
        }
        if (this.f34503d) {
            System.arraycopy(tArr, index, tArr, index + 1, this.f34502c - index);
        } else {
            tArr[this.f34502c] = tArr[index];
        }
        this.f34502c++;
        tArr[index] = value;
    }

    public void s(int index, int count) {
        int i10 = this.f34502c;
        if (index > i10) {
            throw new IndexOutOfBoundsException("index can't be > size: " + index + " > " + this.f34502c);
        }
        int i11 = i10 + count;
        if (i11 > this.f34501b.length) {
            this.f34501b = D(Math.max(Math.max(8, i11), (int) (this.f34502c * 1.75f)));
        }
        T[] tArr = this.f34501b;
        System.arraycopy(tArr, index, tArr, count + index, this.f34502c - index);
        this.f34502c = i11;
    }

    public void sort(Comparator<? super T> comparator) {
        t.a().g(this.f34501b, comparator, 0, this.f34502c);
    }

    @Override
    public C0906b<T> iterator() {
        if (e.f34523a) {
            return new C0906b<>(this, true);
        }
        if (this.f34504e == null) {
            this.f34504e = new a(this);
        }
        return this.f34504e.iterator();
    }

    public T[] toArray() {
        return (T[]) P(this.f34501b.getClass().getComponentType());
    }

    public String toString() {
        if (this.f34502c == 0) {
            return okhttp3.v.f99450n;
        }
        T[] tArr = this.f34501b;
        u uVar = new u(32);
        uVar.append('[');
        uVar.n(tArr[0]);
        for (int i10 = 1; i10 < this.f34502c; i10++) {
            uVar.o(", ");
            uVar.n(tArr[i10]);
        }
        uVar.append(JavaElement.JEM_TYPE_PARAMETER);
        return uVar.toString();
    }

    public int u(@j T value, boolean identity) {
        T[] tArr = this.f34501b;
        if (identity || value == null) {
            for (int i10 = this.f34502c - 1; i10 >= 0; i10--) {
                if (tArr[i10] == value) {
                    return i10;
                }
            }
            return -1;
        }
        for (int i11 = this.f34502c - 1; i11 >= 0; i11--) {
            if (value.equals(tArr[i11])) {
                return i11;
            }
        }
        return -1;
    }

    public boolean v() {
        return this.f34502c > 0;
    }

    @j
    public T y() {
        int i10 = this.f34502c;
        if (i10 == 0) {
            return null;
        }
        return this.f34501b[h.H(0, i10 - 1)];
    }

    public boolean z(b<? extends T> array, boolean identity) {
        int i10;
        int i11 = this.f34502c;
        T[] tArr = this.f34501b;
        if (identity) {
            int i12 = array.f34502c;
            i10 = i11;
            for (int i13 = 0; i13 < i12; i13++) {
                T t10 = array.get(i13);
                int i14 = 0;
                while (true) {
                    if (i14 >= i10) {
                        break;
                    }
                    if (t10 == tArr[i14]) {
                        A(i14);
                        i10--;
                        break;
                    }
                    i14++;
                }
            }
        } else {
            int i15 = array.f34502c;
            i10 = i11;
            for (int i16 = 0; i16 < i15; i16++) {
                T t11 = array.get(i16);
                int i17 = 0;
                while (true) {
                    if (i17 >= i10) {
                        break;
                    }
                    if (t11.equals(tArr[i17])) {
                        A(i17);
                        i10--;
                        break;
                    }
                    i17++;
                }
            }
        }
        return i10 != i11;
    }

    public b(int capacity) {
        this(true, capacity);
    }

    public b(boolean z10, int i10) {
        this.f34503d = z10;
        this.f34501b = (T[]) new Object[i10];
    }

    public b(boolean z10, int i10, Class cls) {
        this.f34503d = z10;
        this.f34501b = (T[]) ((Object[]) c.c(cls, i10));
    }

    public b(Class arrayType) {
        this(true, 16, arrayType);
    }

    public b(b<? extends T> array) {
        this(array.f34503d, array.f34502c, array.f34501b.getClass().getComponentType());
        int i10 = array.f34502c;
        this.f34502c = i10;
        System.arraycopy(array.f34501b, 0, this.f34501b, 0, i10);
    }

    public b(T[] array) {
        this(true, array, 0, array.length);
    }

    public b(boolean ordered, T[] array, int start, int count) {
        this(ordered, count, array.getClass().getComponentType());
        this.f34502c = count;
        System.arraycopy(array, start, this.f34501b, 0, count);
    }
}
