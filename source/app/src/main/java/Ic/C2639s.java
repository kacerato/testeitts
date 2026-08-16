package Ic;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class C2639s<T> implements Iterable<a<T>>, Cloneable {

    public a[] f9199b;

    public final float f9200c;

    public int f9201d;

    public int f9202e;

    public int f9203f;

    public int f9204g;

    public static final class a<T> implements Cloneable {

        public final int f9205b;

        public T f9206c;

        public a f9207d;

        public a(int k10, T v10, a n10) {
            this.f9205b = k10;
            this.f9206c = v10;
            this.f9207d = n10;
        }

        public a<T> clone() {
            try {
                a<T> aVar = (a) super.clone();
                a aVar2 = this.f9207d;
                aVar.f9207d = aVar2 != null ? aVar2.clone() : null;
                return aVar;
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }

        public int b() {
            return this.f9205b;
        }

        public T c() {
            return this.f9206c;
        }

        public String toString() {
            return this.f9205b + " => " + ((Object) this.f9206c);
        }
    }

    public final class b implements Iterator<a<T>> {

        public a f9208b;

        public int f9209c = 0;

        public int f9210d = 0;

        public b() {
        }

        public void a() {
            this.f9208b = C2639s.this.f9199b[0];
            this.f9209c = 0;
            this.f9210d = 0;
        }

        @Override
        public a next() {
            a aVar;
            if (this.f9210d >= C2639s.this.f9201d) {
                throw new NoSuchElementException("No more elements!");
            }
            a aVar2 = this.f9208b;
            if (aVar2 != null) {
                this.f9208b = aVar2.f9207d;
                this.f9210d++;
                return aVar2;
            }
            do {
                a[] aVarArr = C2639s.this.f9199b;
                int i10 = this.f9209c + 1;
                this.f9209c = i10;
                aVar = aVarArr[i10];
                this.f9208b = aVar;
            } while (aVar == null);
            this.f9208b = aVar.f9207d;
            this.f9210d++;
            return aVar;
        }

        @Override
        public boolean hasNext() {
            return this.f9210d < C2639s.this.f9201d;
        }

        @Override
        public void remove() {
        }
    }

    public C2639s() {
        this(16, 0.75f);
    }

    public C2639s<T> clone() {
        try {
            C2639s<T> c2639s = (C2639s) super.clone();
            a[] aVarArr = this.f9199b;
            a[] aVarArr2 = new a[aVarArr.length];
            for (int length = aVarArr.length - 1; length >= 0; length--) {
                a aVar = this.f9199b[length];
                if (aVar != null) {
                    aVarArr2[length] = aVar.clone();
                }
            }
            c2639s.f9199b = aVarArr2;
            return c2639s;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public void clear() {
        a[] aVarArr = this.f9199b;
        int length = aVarArr.length;
        while (true) {
            length--;
            if (length < 0) {
                this.f9201d = 0;
                return;
            }
            aVarArr[length] = null;
        }
    }

    public T get(int key) {
        for (a aVar = this.f9199b[this.f9202e & key]; aVar != null; aVar = aVar.f9207d) {
            if (aVar.f9205b == key) {
                return aVar.f9206c;
            }
        }
        return null;
    }

    @Override
    public Iterator<a<T>> iterator() {
        b bVar = new b();
        bVar.a();
        return bVar;
    }

    public boolean j(int key) {
        for (a aVar = this.f9199b[this.f9202e & key]; aVar != null; aVar = aVar.f9207d) {
            if (aVar.f9205b == key) {
                return true;
            }
        }
        return false;
    }

    public boolean k(Object value) {
        a[] aVarArr = this.f9199b;
        int length = aVarArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            for (a aVar = aVarArr[i10]; aVar != null; aVar = aVar.f9207d) {
                if (aVar.f9206c.equals(value)) {
                    return true;
                }
            }
            length = i10;
        }
    }

    public T l(int key, T value) {
        int i10 = this.f9202e & key;
        for (a aVar = this.f9199b[i10]; aVar != null; aVar = aVar.f9207d) {
            if (aVar.f9205b == key) {
                T t10 = aVar.f9206c;
                aVar.f9206c = value;
                return t10;
            }
        }
        a[] aVarArr = this.f9199b;
        aVarArr[i10] = new a(key, value, aVarArr[i10]);
        int i11 = this.f9201d;
        this.f9201d = i11 + 1;
        if (i11 >= this.f9204g) {
            int i12 = this.f9203f * 2;
            a[] aVarArr2 = new a[i12];
            a[] aVarArr3 = this.f9199b;
            int i13 = i12 - 1;
            for (int i14 = 0; i14 < aVarArr3.length; i14++) {
                a aVar2 = aVarArr3[i14];
                if (aVar2 != null) {
                    aVarArr3[i14] = null;
                    while (true) {
                        a aVar3 = aVar2.f9207d;
                        int i15 = aVar2.f9205b & i13;
                        aVar2.f9207d = aVarArr2[i15];
                        aVarArr2[i15] = aVar2;
                        if (aVar3 == null) {
                            break;
                        }
                        aVar2 = aVar3;
                    }
                }
            }
            this.f9199b = aVarArr2;
            this.f9203f = i12;
            this.f9204g = (int) (i12 * this.f9200c);
            this.f9202e = i12 - 1;
        }
        return null;
    }

    public int m(T value) {
        int size = size();
        l(size, value);
        return size;
    }

    public T remove(int key) {
        int i10 = this.f9202e & key;
        a aVar = this.f9199b[i10];
        a aVar2 = aVar;
        while (aVar != null) {
            a aVar3 = aVar.f9207d;
            if (aVar.f9205b == key) {
                this.f9201d--;
                if (aVar2 == aVar) {
                    this.f9199b[i10] = aVar3;
                } else {
                    aVar2.f9207d = aVar3;
                }
                return aVar.f9206c;
            }
            aVar2 = aVar;
            aVar = aVar3;
        }
        return null;
    }

    public int size() {
        return this.f9201d;
    }

    public C2639s(int initialCapacity) {
        this(initialCapacity, 0.75f);
    }

    public C2639s(int initialCapacity, float loadFactor) {
        if (initialCapacity > 1073741824) {
            throw new IllegalArgumentException("initialCapacity is too large.");
        }
        if (initialCapacity <= 0) {
            throw new IllegalArgumentException("initialCapacity must be greater than zero.");
        }
        if (loadFactor > 0.0f) {
            this.f9203f = 1;
            while (true) {
                int i10 = this.f9203f;
                if (i10 < initialCapacity) {
                    this.f9203f = i10 << 1;
                } else {
                    this.f9200c = loadFactor;
                    this.f9204g = (int) (i10 * loadFactor);
                    this.f9199b = new a[i10];
                    this.f9202e = i10 - 1;
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("loadFactor must be greater than zero.");
        }
    }
}
