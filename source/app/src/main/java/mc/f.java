package Mc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public class f<T> extends AbstractList<T> implements RandomAccess {

    public final int f14858b;

    public final List<f<T>.a> f14859c;

    public int f14860d;

    public class a {

        public final Object[] f14861a;

        public int f14862b = 0;

        public a(int chunkSize) {
            this.f14861a = new Object[chunkSize];
        }

        public void a(Object o10) {
            Object[] objArr = this.f14861a;
            int i10 = this.f14862b;
            objArr[i10] = o10;
            this.f14862b = i10 + 1;
        }

        public void b(f<T>.a next) {
            int i10 = this.f14862b;
            Object[] objArr = this.f14861a;
            if (i10 >= objArr.length || next == null) {
                return;
            }
            int length = objArr.length - i10;
            for (int i11 = 0; i11 < length; i11++) {
                a(next.i(0));
            }
        }

        public boolean c() {
            return this.f14862b < this.f14861a.length;
        }

        public void d() {
            this.f14862b = 0;
        }

        public boolean e(Object o10) {
            for (int i10 = 0; i10 < this.f14862b; i10++) {
                if (this.f14861a[i10] == o10) {
                    return true;
                }
            }
            return false;
        }

        public Object f(int index) {
            return this.f14861a[index];
        }

        public int g(Object o10) {
            for (int i10 = 0; i10 < this.f14862b; i10++) {
                if (this.f14861a[i10] == o10) {
                    return i10;
                }
            }
            return -1;
        }

        public boolean h() {
            return this.f14862b <= 0;
        }

        public Object i(int index) {
            Object obj = this.f14861a[index];
            while (true) {
                int i10 = this.f14862b;
                if (index >= i10 - 1) {
                    this.f14862b = i10 - 1;
                    return obj;
                }
                Object[] objArr = this.f14861a;
                int i11 = index + 1;
                objArr[index] = objArr[i11];
                index = i11;
            }
        }

        public Object j(int index, Object o10) {
            this.f14861a[index] = o10;
            return o10;
        }
    }

    public f() {
        List<f<T>.a> synchronizedList = Collections.synchronizedList(new SteppedArrayList());
        this.f14859c = synchronizedList;
        this.f14860d = 0;
        this.f14858b = 100;
        synchronizedList.add(new a(100));
    }

    public int a() {
        return this.f14858b;
    }

    @Override
    public boolean add(Object o10) {
        if (o10 != null) {
            List<f<T>.a> list = this.f14859c;
            f<T>.a aVar = list.get(list.size() - 1);
            if (aVar.c()) {
                aVar.a(o10);
                this.f14860d++;
                this.modCount++;
                return true;
            }
            f<T>.a aVar2 = new a(this.f14858b);
            this.f14859c.add(aVar2);
            aVar2.a(o10);
            this.f14860d++;
            this.modCount++;
            return true;
        }
        throw new NullPointerException("Null objects are not supported!");
    }

    @Override
    public boolean addAll(Collection c10) {
        Iterator it = c10.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return true;
    }

    @Override
    public void clear() {
        f<T>.a aVar;
        if (this.f14859c.size() > 0) {
            aVar = this.f14859c.get(0);
            if (aVar != null) {
                aVar.d();
            }
        } else {
            aVar = null;
        }
        if (aVar == null) {
            aVar = new a(this.f14858b);
        }
        this.f14859c.clear();
        this.f14859c.add(aVar);
        this.f14860d = 0;
    }

    @Override
    public boolean contains(Object o10) {
        for (int i10 = 0; i10 < this.f14859c.size(); i10++) {
            if (this.f14859c.get(i10).e(o10)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public T get(int i10) {
        int i11 = this.f14858b;
        int i12 = (int) (i10 / i11);
        return (T) this.f14859c.get(i12).f(i10 - (i11 * i12));
    }

    @Override
    public int indexOf(Object o10) {
        if (o10 == null) {
            throw new NullPointerException("Null objects are not supported!");
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f14859c.size(); i11++) {
            int g10 = this.f14859c.get(i11).g(o10);
            if (g10 >= 0) {
                return i10 + g10;
            }
            i10 += this.f14858b;
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return this.f14860d == 0;
    }

    @Override
    public int lastIndexOf(Object o10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public T remove(int i10) {
        if (i10 < this.f14860d) {
            int i11 = this.f14858b;
            int i12 = (int) (i10 / i11);
            int i13 = i10 - (i11 * i12);
            f<T>.a aVar = this.f14859c.get(i12);
            T t10 = (T) aVar.i(i13);
            if (aVar.h()) {
                this.f14859c.remove(aVar);
            } else {
                if (i12 < this.f14859c.size() - 1) {
                    int i14 = i12;
                    while (i14 < this.f14859c.size() - 1) {
                        f<T>.a aVar2 = this.f14859c.get(i14);
                        i14++;
                        aVar2.b(this.f14859c.get(i14));
                    }
                }
                boolean z10 = true;
                while (z10) {
                    z10 = false;
                    for (int i15 = i12; i15 < this.f14859c.size(); i15++) {
                        f<T>.a aVar3 = this.f14859c.get(i15);
                        if (aVar3.h()) {
                            this.f14859c.remove(aVar3);
                            z10 = true;
                        }
                    }
                }
            }
            this.f14860d--;
            this.modCount--;
            return t10;
        }
        throw new IndexOutOfBoundsException("index(" + i10 + ") can't be >= count(" + this.f14860d + ")");
    }

    @Override
    public boolean removeAll(Collection<?> c10) {
        Iterator<?> it = c10.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return true;
    }

    @Override
    public T set(int i10, Object obj) {
        if (i10 < this.f14860d) {
            if (obj == null) {
                throw new NullPointerException("Null objects are not supported!");
            }
            int i11 = this.f14858b;
            int i12 = (int) (i10 / i11);
            return (T) this.f14859c.get(i12).j(i10 - (i11 * i12), obj);
        }
        throw new IndexOutOfBoundsException("index(" + i10 + ") can't be >= count(" + this.f14860d + ")");
    }

    @Override
    public int size() {
        return this.f14860d;
    }

    public f(int chunkSize) {
        List<f<T>.a> synchronizedList = Collections.synchronizedList(new SteppedArrayList());
        this.f14859c = synchronizedList;
        this.f14860d = 0;
        this.f14858b = chunkSize;
        synchronizedList.add(new a(chunkSize));
    }

    @Override
    public void add(int index, Object element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean remove(Object o10) {
        if (o10 != null) {
            int indexOf = indexOf(o10);
            if (indexOf < 0) {
                return false;
            }
            remove(indexOf);
            return true;
        }
        throw new NullPointerException("Null objects are not supported!");
    }
}
