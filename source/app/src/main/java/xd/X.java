package Xd;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;

public class X implements Sd.g, Serializable {

    public static final long f28425d = 3053995032091335093L;

    public final Sd.g f28426b;

    public final Object f28427c;

    public X(Sd.g gVar) {
        gVar.getClass();
        this.f28426b = gVar;
        this.f28427c = this;
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this.f28427c) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override
    public boolean A1(int[] iArr) {
        boolean A12;
        synchronized (this.f28427c) {
            A12 = this.f28426b.A1(iArr);
        }
        return A12;
    }

    @Override
    public boolean K1(int[] iArr) {
        boolean K12;
        synchronized (this.f28427c) {
            K12 = this.f28426b.K1(iArr);
        }
        return K12;
    }

    @Override
    public boolean M1(int[] iArr) {
        boolean M12;
        synchronized (this.f28427c) {
            M12 = this.f28426b.M1(iArr);
        }
        return M12;
    }

    @Override
    public int[] P0(int[] iArr) {
        int[] P02;
        synchronized (this.f28427c) {
            P02 = this.f28426b.P0(iArr);
        }
        return P02;
    }

    @Override
    public boolean U0(he.S s10) {
        boolean U02;
        synchronized (this.f28427c) {
            U02 = this.f28426b.U0(s10);
        }
        return U02;
    }

    @Override
    public boolean add(int i10) {
        boolean add;
        synchronized (this.f28427c) {
            add = this.f28426b.add(i10);
        }
        return add;
    }

    @Override
    public boolean addAll(Collection<? extends Integer> collection) {
        boolean addAll;
        synchronized (this.f28427c) {
            addAll = this.f28426b.addAll(collection);
        }
        return addAll;
    }

    @Override
    public boolean b2(Sd.g gVar) {
        boolean b22;
        synchronized (this.f28427c) {
            b22 = this.f28426b.b2(gVar);
        }
        return b22;
    }

    @Override
    public void clear() {
        synchronized (this.f28427c) {
            this.f28426b.clear();
        }
    }

    @Override
    public boolean contains(int i10) {
        boolean contains;
        synchronized (this.f28427c) {
            contains = this.f28426b.contains(i10);
        }
        return contains;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        boolean containsAll;
        synchronized (this.f28427c) {
            containsAll = this.f28426b.containsAll(collection);
        }
        return containsAll;
    }

    @Override
    public boolean d2(Sd.g gVar) {
        boolean d22;
        synchronized (this.f28427c) {
            d22 = this.f28426b.d2(gVar);
        }
        return d22;
    }

    @Override
    public boolean h2(Sd.g gVar) {
        boolean h22;
        synchronized (this.f28427c) {
            h22 = this.f28426b.h2(gVar);
        }
        return h22;
    }

    @Override
    public int i() {
        return this.f28426b.i();
    }

    @Override
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f28427c) {
            isEmpty = this.f28426b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Zd.Q iterator() {
        return this.f28426b.iterator();
    }

    @Override
    public boolean j2(Sd.g gVar) {
        boolean j22;
        synchronized (this.f28427c) {
            j22 = this.f28426b.j2(gVar);
        }
        return j22;
    }

    @Override
    public boolean remove(int i10) {
        boolean remove;
        synchronized (this.f28427c) {
            remove = this.f28426b.remove(i10);
        }
        return remove;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll;
        synchronized (this.f28427c) {
            removeAll = this.f28426b.removeAll(collection);
        }
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll;
        synchronized (this.f28427c) {
            retainAll = this.f28426b.retainAll(collection);
        }
        return retainAll;
    }

    @Override
    public int size() {
        int size;
        synchronized (this.f28427c) {
            size = this.f28426b.size();
        }
        return size;
    }

    @Override
    public int[] toArray() {
        int[] array;
        synchronized (this.f28427c) {
            array = this.f28426b.toArray();
        }
        return array;
    }

    public String toString() {
        String obj;
        synchronized (this.f28427c) {
            obj = this.f28426b.toString();
        }
        return obj;
    }

    @Override
    public boolean z2(int[] iArr) {
        boolean z22;
        synchronized (this.f28427c) {
            z22 = this.f28426b.z2(iArr);
        }
        return z22;
    }

    public X(Sd.g gVar, Object obj) {
        this.f28426b = gVar;
        this.f28427c = obj;
    }
}
