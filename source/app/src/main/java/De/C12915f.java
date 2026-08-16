package de;

import be.InterfaceC3873f;
import he.k0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Array;
import java.util.AbstractSequentialList;
import java.util.ListIterator;
import java.util.NoSuchElementException;

public class C12915f<T extends InterfaceC3873f<T>> extends AbstractSequentialList<T> implements Externalizable {

    public static final long f84603e = 1;

    public T f84604b;

    public T f84605c;

    public int f84606d = 0;

    public final class a implements ListIterator<T> {

        public int f84607b;

        public T f84608c;

        public T f84609d;

        public a(int i10) {
            int i11;
            this.f84607b = 0;
            if (i10 < 0 || i10 > (i11 = C12915f.this.f84606d)) {
                throw new IndexOutOfBoundsException();
            }
            this.f84607b = i10;
            if (i10 == 0) {
                this.f84608c = C12915f.this.f84604b;
                return;
            }
            if (i10 == i11) {
                this.f84608c = null;
                return;
            }
            if (i10 < (i11 >> 1)) {
                this.f84608c = C12915f.this.f84604b;
                for (int i12 = 0; i12 < i10; i12++) {
                    this.f84608c = (T) this.f84608c.getNext();
                }
                return;
            }
            this.f84608c = C12915f.this.f84605c;
            for (int i13 = i11 - 1; i13 > i10; i13--) {
                this.f84608c = (T) this.f84608c.o7();
            }
        }

        @Override
        public final void add(T t10) {
            this.f84609d = null;
            this.f84607b++;
            C12915f c12915f = C12915f.this;
            if (c12915f.f84606d == 0) {
                c12915f.add(t10);
            } else {
                c12915f.d(this.f84608c, t10);
            }
        }

        @Override
        public final T next() {
            if (this.f84607b == C12915f.this.f84606d) {
                throw new NoSuchElementException();
            }
            T t10 = this.f84608c;
            this.f84609d = t10;
            this.f84608c = (T) t10.getNext();
            this.f84607b++;
            return this.f84609d;
        }

        @Override
        public final T previous() {
            int i10 = this.f84607b;
            if (i10 == 0) {
                throw new NoSuchElementException();
            }
            C12915f c12915f = C12915f.this;
            if (i10 == c12915f.f84606d) {
                T t10 = c12915f.f84605c;
                this.f84608c = t10;
                this.f84609d = t10;
            } else {
                T t11 = (T) this.f84608c.o7();
                this.f84608c = t11;
                this.f84609d = t11;
            }
            this.f84607b--;
            return this.f84609d;
        }

        @Override
        public final void set(T t10) {
            T t11 = this.f84609d;
            if (t11 == null) {
                throw new IllegalStateException();
            }
            f(t11, t10);
            this.f84609d = t10;
        }

        public final void f(T t10, T t11) {
            InterfaceC3873f o72 = t10.o7();
            InterfaceC3873f next = t10.getNext();
            InterfaceC3873f o73 = t11.o7();
            InterfaceC3873f next2 = t11.getNext();
            if (next == t11) {
                if (o72 != null) {
                    o72.ec(t11);
                }
                t11.a5(o72);
                t11.ec(t10);
                t10.a5(t11);
                t10.ec(next2);
                if (next2 != null) {
                    next2.a5(t10);
                }
            } else if (next2 == t10) {
                if (o73 != null) {
                    o73.ec(t11);
                }
                t11.a5(t10);
                t11.ec(next);
                t10.a5(o73);
                t10.ec(t11);
                if (next != null) {
                    next.a5(t11);
                }
            } else {
                t10.ec(next2);
                t10.a5(o73);
                if (o73 != null) {
                    o73.ec(t10);
                }
                if (next2 != null) {
                    next2.a5(t10);
                }
                t11.ec(next);
                t11.a5(o72);
                if (o72 != null) {
                    o72.ec(t11);
                }
                if (next != null) {
                    next.a5(t11);
                }
            }
            C12915f c12915f = C12915f.this;
            T t12 = c12915f.f84604b;
            if (t12 == t10) {
                c12915f.f84604b = t11;
            } else if (t12 == t11) {
                c12915f.f84604b = t10;
            }
            T t13 = c12915f.f84605c;
            if (t13 == t10) {
                c12915f.f84605c = t11;
            } else if (t13 == t11) {
                c12915f.f84605c = t10;
            }
            T t14 = this.f84609d;
            if (t14 == t10) {
                this.f84609d = t11;
            } else if (t14 == t11) {
                this.f84609d = t10;
            }
            T t15 = this.f84608c;
            if (t15 == t10) {
                this.f84608c = t11;
            } else if (t15 == t11) {
                this.f84608c = t10;
            }
        }

        @Override
        public final boolean hasNext() {
            return this.f84607b != C12915f.this.f84606d;
        }

        @Override
        public final boolean hasPrevious() {
            return this.f84607b != 0;
        }

        @Override
        public final int nextIndex() {
            return this.f84607b;
        }

        @Override
        public final int previousIndex() {
            return this.f84607b - 1;
        }

        @Override
        public final void remove() {
            T t10 = this.f84609d;
            if (t10 == null) {
                throw new IllegalStateException("must invoke next or previous before invoking remove");
            }
            if (t10 != this.f84608c) {
                this.f84607b--;
            }
            this.f84608c = (T) t10.getNext();
            C12915f.this.remove(this.f84609d);
            this.f84609d = null;
        }
    }

    @Override
    public void add(int i10, T t10) {
        if (i10 >= 0 && i10 <= size()) {
            o(i10, t10);
            return;
        }
        throw new IndexOutOfBoundsException("index:" + i10);
    }

    @Override
    public boolean add(T t10) {
        o(this.f84606d, t10);
        return true;
    }

    public void c(T t10, T t11) {
        if (t10 == this.f84605c) {
            f(t11);
            return;
        }
        if (t10 == null) {
            e(t11);
            return;
        }
        InterfaceC3873f next = t10.getNext();
        t11.a5(t10);
        t11.ec(next);
        t10.ec(t11);
        next.a5(t11);
        this.f84606d++;
    }

    @Override
    public void clear() {
        T t10 = this.f84604b;
        if (t10 != null) {
            for (InterfaceC3873f next = t10.getNext(); next != null; next = next.getNext()) {
                next.o7().ec(null);
                next.a5(null);
            }
            this.f84605c = null;
            this.f84604b = null;
        }
        this.f84606d = 0;
    }

    @Override
    public boolean contains(Object obj) {
        for (InterfaceC3873f interfaceC3873f = this.f84604b; interfaceC3873f != null; interfaceC3873f = interfaceC3873f.getNext()) {
            if (obj.equals(interfaceC3873f)) {
                return true;
            }
        }
        return false;
    }

    public void d(T t10, T t11) {
        if (t10 == this.f84604b) {
            e(t11);
            return;
        }
        if (t10 == null) {
            f(t11);
            return;
        }
        InterfaceC3873f o72 = t10.o7();
        t11.ec(t10);
        o72.ec(t11);
        t11.a5(o72);
        t10.a5(t11);
        this.f84606d++;
    }

    public void e(T t10) {
        o(0, t10);
    }

    public void f(T t10) {
        o(size(), t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean g(k0<T> k0Var) {
        for (InterfaceC3873f interfaceC3873f = this.f84604b; interfaceC3873f != null; interfaceC3873f = interfaceC3873f.getNext()) {
            if (!k0Var.a(interfaceC3873f)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public T get(int i10) {
        int i11;
        if (i10 < 0 || i10 >= (i11 = this.f84606d)) {
            throw new IndexOutOfBoundsException("Index: " + i10 + ", Size: " + this.f84606d);
        }
        if (i10 > (i11 >> 1)) {
            T t10 = this.f84605c;
            for (int i12 = i11 - 1; i12 > i10; i12--) {
                t10 = (T) t10.o7();
            }
            return t10;
        }
        T t11 = this.f84604b;
        for (int i13 = 0; i13 < i10; i13++) {
            t11 = (T) t11.getNext();
        }
        return t11;
    }

    public T k() {
        return this.f84604b;
    }

    public T l() {
        return this.f84605c;
    }

    @Override
    public ListIterator<T> listIterator(int i10) {
        return new a(i10);
    }

    public T m(T t10) {
        return (T) t10.getNext();
    }

    public T n(T t10) {
        return (T) t10.o7();
    }

    public void o(int i10, T t10) {
        int i11 = this.f84606d;
        if (i11 == 0) {
            this.f84605c = t10;
            this.f84604b = t10;
        } else if (i10 == 0) {
            t10.ec(this.f84604b);
            this.f84604b.a5(t10);
            this.f84604b = t10;
        } else if (i10 == i11) {
            this.f84605c.ec(t10);
            t10.a5(this.f84605c);
            this.f84605c = t10;
        } else {
            T t11 = get(i10);
            InterfaceC3873f o72 = t11.o7();
            if (o72 != null) {
                o72.ec(t10);
            }
            t10.a5(o72);
            t10.ec(t11);
            t11.a5(t10);
        }
        this.f84606d++;
    }

    public T r() {
        T t10 = this.f84604b;
        if (t10 == null) {
            return null;
        }
        T t11 = (T) t10.getNext();
        t10.ec(null);
        if (t11 != null) {
            t11.a5(null);
        }
        this.f84604b = t11;
        int i10 = this.f84606d - 1;
        this.f84606d = i10;
        if (i10 == 0) {
            this.f84605c = null;
        }
        return t10;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f84606d = objectInput.readInt();
        this.f84604b = (T) objectInput.readObject();
        this.f84605c = (T) objectInput.readObject();
    }

    @Override
    public boolean remove(Object obj) {
        if (!(obj instanceof InterfaceC3873f)) {
            return false;
        }
        InterfaceC3873f interfaceC3873f = (InterfaceC3873f) obj;
        T t10 = (T) interfaceC3873f.o7();
        T t11 = (T) interfaceC3873f.getNext();
        if (t11 == null && t10 == null) {
            if (obj != this.f84604b) {
                return false;
            }
            this.f84605c = null;
            this.f84604b = null;
        } else if (t11 == null) {
            interfaceC3873f.a5(null);
            t10.ec(null);
            this.f84605c = t10;
        } else if (t10 == null) {
            interfaceC3873f.ec(null);
            t11.a5(null);
            this.f84604b = t11;
        } else {
            t10.ec(t11);
            t11.a5(t10);
            interfaceC3873f.ec(null);
            interfaceC3873f.a5(null);
        }
        this.f84606d--;
        return true;
    }

    public T s() {
        T t10 = this.f84605c;
        if (t10 == null) {
            return null;
        }
        T t11 = (T) t10.o7();
        t10.a5(null);
        if (t11 != null) {
            t11.ec(null);
        }
        this.f84605c = t11;
        int i10 = this.f84606d - 1;
        this.f84606d = i10;
        if (i10 == 0) {
            this.f84604b = null;
        }
        return t10;
    }

    @Override
    public int size() {
        return this.f84606d;
    }

    @Override
    public Object[] toArray() {
        Object[] objArr = new Object[this.f84606d];
        InterfaceC3873f interfaceC3873f = this.f84604b;
        int i10 = 0;
        while (interfaceC3873f != null) {
            objArr[i10] = interfaceC3873f;
            interfaceC3873f = interfaceC3873f.getNext();
            i10++;
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [be.f] */
    /* JADX WARN: Type inference failed for: r6v8 */
    public T[] u(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((InterfaceC3873f[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        T t10 = this.f84604b;
        int i10 = 0;
        while (t10 != null) {
            tArr[i10] = t10;
            ?? next = t10.getNext();
            t10.ec(null);
            t10.a5(null);
            i10++;
            t10 = next;
        }
        this.f84606d = 0;
        this.f84605c = null;
        this.f84604b = null;
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [be.f] */
    public Object[] v() {
        Object[] objArr = new Object[this.f84606d];
        T t10 = this.f84604b;
        int i10 = 0;
        while (t10 != null) {
            objArr[i10] = t10;
            ?? next = t10.getNext();
            t10.ec(null);
            t10.a5(null);
            i10++;
            t10 = next;
        }
        this.f84606d = 0;
        this.f84605c = null;
        this.f84604b = null;
        return objArr;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f84606d);
        objectOutput.writeObject(this.f84604b);
        objectOutput.writeObject(this.f84605c);
    }
}
