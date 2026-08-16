package le;

import Wd.b0;
import ae.C3602a;
import he.k0;
import ie.C13697a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14109f<E> extends b0<E> implements Set<E>, Iterable<E>, Externalizable {

    public static final long f96337q = 1;

    public class a implements k0<E> {

        public boolean f96338a = true;

        public final StringBuilder f96339b;

        public a(StringBuilder sb2) {
            this.f96339b = sb2;
        }

        @Override
        public boolean a(Object obj) {
            if (this.f96338a) {
                this.f96338a = false;
            } else {
                this.f96339b.append(", ");
            }
            this.f96339b.append(obj);
            return true;
        }
    }

    public C14109f() {
    }

    @Override
    public C3602a<E> iterator() {
        return new C3602a<>(this);
    }

    public void Gf(ObjectOutput objectOutput) throws IOException {
        int length = this.f27557l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = this.f27557l[i10];
            if (obj != b0.f27555o && obj != b0.f27556p) {
                objectOutput.writeObject(obj);
            }
            length = i10;
        }
    }

    @Override
    public boolean add(E e10) {
        if (wf(e10) < 0) {
            return false;
        }
        ef(this.f27558m);
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        cf(size);
        Iterator<? extends E> it = collection.iterator();
        boolean z10 = false;
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return z10;
            }
            if (add(it.next())) {
                z10 = true;
            }
            size = i10;
        }
    }

    @Override
    public void clear() {
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, b0.f27556p);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != size()) {
            return false;
        }
        return containsAll(set);
    }

    @Override
    public void gf(int i10) {
        int wf2;
        int length = this.f27557l.length;
        int size = size();
        Object[] objArr = this.f27557l;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, b0.f27556p);
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                b0.Cf(size(), size);
                return;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o && (wf2 = wf(obj)) < 0) {
                Ef(this.f27557l[(-wf2) - 1], obj, size(), size, objArr);
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        b bVar = new b(this, null);
        rf(bVar);
        return bVar.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        if (objectInput.readByte() != 0) {
            super.readExternal(objectInput);
        }
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            add(objectInput.readObject());
            readInt = i10;
        }
    }

    @Override
    public boolean remove(Object obj) {
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return false;
        }
        hf(tf2);
        return true;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        int size = collection.size();
        Iterator<?> it = collection.iterator();
        boolean z10 = false;
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return z10;
            }
            if (remove(it.next())) {
                z10 = true;
            }
            size = i10;
        }
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        int size = size();
        C3602a<E> it = iterator();
        boolean z10 = false;
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return z10;
            }
            if (!collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
            size = i10;
        }
    }

    @Override
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        rf(new C13697a(objArr));
        return objArr;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        rf(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(1);
        super.writeExternal(objectOutput);
        objectOutput.writeInt(this.f27452b);
        Gf(objectOutput);
    }

    public final class b implements k0<E> {

        public int f96341a;

        public b() {
            this.f96341a = 0;
        }

        @Override
        public final boolean a(E e10) {
            this.f96341a += Vd.b.f(e10);
            return true;
        }

        public int b() {
            return this.f96341a;
        }

        public b(C14109f c14109f, a aVar) {
            this();
        }
    }

    public C14109f(int i10) {
        super(i10);
    }

    public C14109f(int i10, float f10) {
        super(i10, f10);
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        rf(new C13697a(tArr));
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    public C14109f(Collection<? extends E> collection) {
        this(collection.size());
        addAll(collection);
    }
}
