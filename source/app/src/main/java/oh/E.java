package oh;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.bouncycastle.util.a;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class E extends B implements org.bouncycastle.util.l<InterfaceC14516g> {

    public static final T f98788c = new a(E.class, 16);

    public InterfaceC14516g[] f98789b;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B d(E e10) {
            return e10;
        }
    }

    public class b implements Enumeration {

        public int f98790a = 0;

        public b() {
        }

        @Override
        public boolean hasMoreElements() {
            return this.f98790a < E.this.f98789b.length;
        }

        @Override
        public Object nextElement() {
            int i10 = this.f98790a;
            InterfaceC14516g[] interfaceC14516gArr = E.this.f98789b;
            if (i10 >= interfaceC14516gArr.length) {
                throw new NoSuchElementException();
            }
            this.f98790a = i10 + 1;
            return interfaceC14516gArr[i10];
        }
    }

    public class c implements F {

        public int f98792b = 0;

        public final int f98793c;

        public c(int i10) {
            this.f98793c = i10;
        }

        @Override
        public B c() {
            return E.this;
        }

        @Override
        public B r() {
            return E.this;
        }

        @Override
        public InterfaceC14516g readObject() throws IOException {
            int i10 = this.f98793c;
            int i11 = this.f98792b;
            if (i10 == i11) {
                return null;
            }
            InterfaceC14516g[] interfaceC14516gArr = E.this.f98789b;
            this.f98792b = i11 + 1;
            InterfaceC14516g interfaceC14516g = interfaceC14516gArr[i11];
            return interfaceC14516g instanceof E ? ((E) interfaceC14516g).L() : interfaceC14516g instanceof G ? ((G) interfaceC14516g).L() : interfaceC14516g;
        }
    }

    public E() {
        this.f98789b = C14518h.f98885d;
    }

    public static E G(Object obj) {
        if (obj == null || (obj instanceof E)) {
            return (E) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof E) {
                return (E) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (E) f98788c.c((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static E H(M m10, boolean z10) {
        return (E) f98788c.f(m10, z10);
    }

    @Override
    public B C() {
        return new G0(this.f98789b, false);
    }

    @Override
    public B D() {
        return new V0(this.f98789b, false);
    }

    public AbstractC14508c[] E() {
        int size = size();
        AbstractC14508c[] abstractC14508cArr = new AbstractC14508c[size];
        for (int i10 = 0; i10 < size; i10++) {
            abstractC14508cArr[i10] = AbstractC14508c.H(this.f98789b[i10]);
        }
        return abstractC14508cArr;
    }

    public AbstractC14551y[] F() {
        int size = size();
        AbstractC14551y[] abstractC14551yArr = new AbstractC14551y[size];
        for (int i10 = 0; i10 < size; i10++) {
            abstractC14551yArr[i10] = AbstractC14551y.F(this.f98789b[i10]);
        }
        return abstractC14551yArr;
    }

    public InterfaceC14516g I(int i10) {
        return this.f98789b[i10];
    }

    public Enumeration J() {
        return new b();
    }

    public F L() {
        return new c(size());
    }

    public abstract AbstractC14508c M();

    public abstract AbstractC14524k N();

    public abstract AbstractC14551y O();

    public abstract G P();

    public InterfaceC14516g[] Q() {
        return C14518h.d(this.f98789b);
    }

    public InterfaceC14516g[] R() {
        return this.f98789b;
    }

    @Override
    public int hashCode() {
        int length = this.f98789b.length;
        int i10 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            i10 = (i10 * 257) ^ this.f98789b[length].r().hashCode();
        }
    }

    @Override
    public Iterator<InterfaceC14516g> iterator() {
        return new a.C1929a(this.f98789b);
    }

    public int size() {
        return this.f98789b.length;
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return okhttp3.v.f99450n;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        int i10 = 0;
        while (true) {
            stringBuffer.append((Object) this.f98789b[i10]);
            i10++;
            if (i10 >= size) {
                stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }

    @Override
    public boolean u(B b10) {
        if (!(b10 instanceof E)) {
            return false;
        }
        E e10 = (E) b10;
        int size = size();
        if (e10.size() != size) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            B r10 = this.f98789b[i10].r();
            B r11 = e10.f98789b[i10].r();
            if (r10 != r11 && !r10.u(r11)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean x() {
        return true;
    }

    public E(InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        this.f98789b = new InterfaceC14516g[]{interfaceC14516g};
    }

    public E(C14518h c14518h) {
        if (c14518h == null) {
            throw new NullPointerException("'elementVector' cannot be null");
        }
        this.f98789b = c14518h.j();
    }

    public E(InterfaceC14516g[] interfaceC14516gArr) {
        if (org.bouncycastle.util.a.F0(interfaceC14516gArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        this.f98789b = C14518h.d(interfaceC14516gArr);
    }

    public E(InterfaceC14516g[] interfaceC14516gArr, boolean z10) {
        this.f98789b = z10 ? C14518h.d(interfaceC14516gArr) : interfaceC14516gArr;
    }
}
