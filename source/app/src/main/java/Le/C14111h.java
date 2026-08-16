package le;

import Wd.b0;
import Zd.Q;
import ae.C3602a;
import be.InterfaceC3872e;
import ce.C4179e;
import de.C12914e;
import he.S;
import he.k0;
import java.io.IOException;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14111h<E> extends C14109f<E> {

    public InterfaceC3872e f96346r;

    public class a extends C4179e {
        public a(int i10) {
            super(i10);
        }

        @Override
        public void b(int i10) {
            if (i10 > this.f34782b.length) {
                int[] iArr = new int[Math.max(C14111h.this.f27557l.length, i10)];
                int[] iArr2 = this.f34782b;
                System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                this.f34782b = iArr;
            }
        }
    }

    public class b extends C3602a<E> {

        public Q f96348g;

        public int f96349h;

        public b(b0 b0Var) {
            super(b0Var);
            this.f96348g = C14111h.this.f96346r.iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f96348g.hasNext();
        }

        @Override
        public E next() {
            int next = this.f96348g.next();
            this.f96349h = next;
            return k(next);
        }

        @Override
        public void remove() {
            this.f96348g.remove();
            try {
                this.f27460c.kf();
                C14111h.this.hf(this.f96349h);
            } finally {
                this.f27460c.ff(false);
            }
        }
    }

    public class c implements S {

        public boolean f96351a = false;

        public final Object[] f96352b;

        public final k0<? super E> f96353c;

        public c(Object[] objArr, k0<? super E> k0Var) {
            this.f96352b = objArr;
            this.f96353c = k0Var;
        }

        @Override
        public boolean a(int i10) {
            return this.f96353c.a(this.f96352b[i10]);
        }
    }

    public class d implements S {

        public final ObjectOutput f96355a;

        public IOException f96356b;

        public d(ObjectOutput objectOutput) {
            this.f96355a = objectOutput;
        }

        @Override
        public boolean a(int i10) {
            try {
                this.f96355a.writeObject(C14111h.this.f27557l[i10]);
                return true;
            } catch (IOException e10) {
                this.f96356b = e10;
                return false;
            }
        }

        public IOException b() {
            return this.f96356b;
        }
    }

    public C14111h() {
    }

    @Override
    public C3602a<E> iterator() {
        return new b(this);
    }

    @Override
    public void Gf(ObjectOutput objectOutput) throws IOException {
        d dVar = new d(objectOutput);
        if (!this.f96346r.U0(dVar)) {
            throw dVar.b();
        }
    }

    @Override
    public boolean add(E e10) {
        int wf2 = wf(e10);
        if (wf2 < 0) {
            return false;
        }
        if (!this.f96346r.add(wf2)) {
            throw new IllegalStateException("Order not changed after insert");
        }
        ef(this.f27558m);
        return true;
    }

    @Override
    public void clear() {
        super.clear();
        this.f96346r.clear();
    }

    @Override
    public void gf(int i10) {
        Object obj;
        C12914e c12914e = new C12914e(this.f96346r);
        int size = size();
        Object[] objArr = this.f27557l;
        this.f96346r.clear();
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, b0.f27556p);
        Q it = c12914e.iterator();
        while (it.hasNext()) {
            Object obj2 = objArr[it.next()];
            Object obj3 = b0.f27556p;
            if (obj2 == obj3 || obj2 == (obj = b0.f27555o)) {
                throw new IllegalStateException("Iterating over empty location while rehashing");
            }
            if (obj2 != obj3 && obj2 != obj) {
                int wf2 = wf(obj2);
                if (wf2 < 0) {
                    Ef(this.f27557l[(-wf2) - 1], obj2, size(), size, objArr);
                }
                if (!this.f96346r.add(wf2)) {
                    throw new IllegalStateException("Order not changed after insert");
                }
            }
        }
    }

    @Override
    public void hf(int i10) {
        this.f96346r.remove(i10);
        super.hf(i10);
    }

    @Override
    public int jf(int i10) {
        this.f96346r = new a(i10);
        return super.jf(i10);
    }

    @Override
    public boolean rf(k0<? super E> k0Var) {
        return this.f96346r.U0(new c(this.f27557l, k0Var));
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        C3602a<E> it = iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append((Object) it.next());
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    public C14111h(int i10) {
        super(i10);
    }

    public C14111h(int i10, float f10) {
        super(i10, f10);
    }

    public C14111h(Collection<? extends E> collection) {
        super(collection);
    }
}
