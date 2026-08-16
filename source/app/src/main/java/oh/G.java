package oh;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.bouncycastle.util.a;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class G extends B implements org.bouncycastle.util.l<InterfaceC14516g> {

    public static final T f98795d = new a(G.class, 17);

    public final InterfaceC14516g[] f98796b;

    public InterfaceC14516g[] f98797c;

    public class a extends T {
        public a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override
        public B d(E e10) {
            return e10.P();
        }
    }

    public class b implements Enumeration {

        public int f98798a = 0;

        public b() {
        }

        @Override
        public boolean hasMoreElements() {
            return this.f98798a < G.this.f98796b.length;
        }

        @Override
        public Object nextElement() {
            int i10 = this.f98798a;
            InterfaceC14516g[] interfaceC14516gArr = G.this.f98796b;
            if (i10 >= interfaceC14516gArr.length) {
                throw new NoSuchElementException();
            }
            this.f98798a = i10 + 1;
            return interfaceC14516gArr[i10];
        }
    }

    public class c implements H {

        public int f98800b = 0;

        public final int f98801c;

        public c(int i10) {
            this.f98801c = i10;
        }

        @Override
        public B c() {
            return G.this;
        }

        @Override
        public B r() {
            return G.this;
        }

        @Override
        public InterfaceC14516g readObject() throws IOException {
            int i10 = this.f98801c;
            int i11 = this.f98800b;
            if (i10 == i11) {
                return null;
            }
            InterfaceC14516g[] interfaceC14516gArr = G.this.f98796b;
            this.f98800b = i11 + 1;
            InterfaceC14516g interfaceC14516g = interfaceC14516gArr[i11];
            return interfaceC14516g instanceof E ? ((E) interfaceC14516g).L() : interfaceC14516g instanceof G ? ((G) interfaceC14516g).L() : interfaceC14516g;
        }
    }

    public G() {
        InterfaceC14516g[] interfaceC14516gArr = C14518h.f98885d;
        this.f98796b = interfaceC14516gArr;
        this.f98797c = interfaceC14516gArr;
    }

    public static byte[] E(InterfaceC14516g interfaceC14516g) {
        try {
            return interfaceC14516g.r().s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static G F(Object obj) {
        if (obj == null || (obj instanceof G)) {
            return (G) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof G) {
                return (G) r10;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (G) f98795d.c((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct set from byte[]: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static G G(M m10, boolean z10) {
        return (G) f98795d.f(m10, z10);
    }

    public static boolean J(byte[] bArr, byte[] bArr2) {
        int i10 = bArr[0] & 223;
        int i11 = bArr2[0] & 223;
        if (i10 != i11) {
            return i10 < i11;
        }
        int min = Math.min(bArr.length, bArr2.length) - 1;
        for (int i12 = 1; i12 < min; i12++) {
            byte b10 = bArr[i12];
            byte b11 = bArr2[i12];
            if (b10 != b11) {
                return (b10 & 255) < (b11 & 255);
            }
        }
        return (bArr[min] & 255) <= (bArr2[min] & 255);
    }

    public static void M(InterfaceC14516g[] interfaceC14516gArr) {
        int i10;
        int length = interfaceC14516gArr.length;
        if (length < 2) {
            return;
        }
        InterfaceC14516g interfaceC14516g = interfaceC14516gArr[0];
        InterfaceC14516g interfaceC14516g2 = interfaceC14516gArr[1];
        byte[] E10 = E(interfaceC14516g);
        byte[] E11 = E(interfaceC14516g2);
        if (J(E11, E10)) {
            interfaceC14516g2 = interfaceC14516g;
            interfaceC14516g = interfaceC14516g2;
            E11 = E10;
            E10 = E11;
        }
        for (int i11 = 2; i11 < length; i11++) {
            InterfaceC14516g interfaceC14516g3 = interfaceC14516gArr[i11];
            byte[] E12 = E(interfaceC14516g3);
            if (J(E11, E12)) {
                interfaceC14516gArr[i11 - 2] = interfaceC14516g;
                interfaceC14516g = interfaceC14516g2;
                E10 = E11;
                interfaceC14516g2 = interfaceC14516g3;
                E11 = E12;
            } else if (J(E10, E12)) {
                interfaceC14516gArr[i11 - 2] = interfaceC14516g;
                interfaceC14516g = interfaceC14516g3;
                E10 = E12;
            } else {
                int i12 = i11 - 1;
                while (true) {
                    i10 = i12 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    InterfaceC14516g interfaceC14516g4 = interfaceC14516gArr[i12 - 2];
                    if (J(E(interfaceC14516g4), E12)) {
                        break;
                    }
                    interfaceC14516gArr[i10] = interfaceC14516g4;
                    i12 = i10;
                }
                interfaceC14516gArr[i10] = interfaceC14516g3;
            }
        }
        interfaceC14516gArr[length - 2] = interfaceC14516g;
        interfaceC14516gArr[length - 1] = interfaceC14516g2;
    }

    @Override
    public B C() {
        if (this.f98797c == null) {
            InterfaceC14516g[] interfaceC14516gArr = (InterfaceC14516g[]) this.f98796b.clone();
            this.f98797c = interfaceC14516gArr;
            M(interfaceC14516gArr);
        }
        return new I0(true, this.f98797c);
    }

    @Override
    public B D() {
        return new X0(this.f98796b, this.f98797c);
    }

    public InterfaceC14516g H(int i10) {
        return this.f98796b[i10];
    }

    public Enumeration I() {
        return new b();
    }

    public H L() {
        return new c(size());
    }

    public InterfaceC14516g[] N() {
        return C14518h.d(this.f98796b);
    }

    @Override
    public int hashCode() {
        int length = this.f98796b.length;
        int i10 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            i10 += this.f98796b[length].r().hashCode();
        }
    }

    @Override
    public Iterator<InterfaceC14516g> iterator() {
        return new a.C1929a(N());
    }

    public int size() {
        return this.f98796b.length;
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
            stringBuffer.append((Object) this.f98796b[i10]);
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
        if (!(b10 instanceof G)) {
            return false;
        }
        G g10 = (G) b10;
        int size = size();
        if (g10.size() != size) {
            return false;
        }
        I0 i02 = (I0) C();
        I0 i03 = (I0) g10.C();
        for (int i10 = 0; i10 < size; i10++) {
            B r10 = i02.f98796b[i10].r();
            B r11 = i03.f98796b[i10].r();
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

    public G(InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        InterfaceC14516g[] interfaceC14516gArr = {interfaceC14516g};
        this.f98796b = interfaceC14516gArr;
        this.f98797c = interfaceC14516gArr;
    }

    public G(C14518h c14518h, boolean z10) {
        InterfaceC14516g[] j10;
        if (c14518h == null) {
            throw new NullPointerException("'elementVector' cannot be null");
        }
        if (!z10 || c14518h.i() < 2) {
            j10 = c14518h.j();
        } else {
            j10 = c14518h.e();
            M(j10);
        }
        this.f98796b = j10;
        if (!z10 && j10.length >= 2) {
            j10 = null;
        }
        this.f98797c = j10;
    }

    public G(boolean z10, InterfaceC14516g[] interfaceC14516gArr) {
        this.f98796b = interfaceC14516gArr;
        if (!z10 && interfaceC14516gArr.length >= 2) {
            interfaceC14516gArr = null;
        }
        this.f98797c = interfaceC14516gArr;
    }

    public G(InterfaceC14516g[] interfaceC14516gArr, boolean z10) {
        if (org.bouncycastle.util.a.F0(interfaceC14516gArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        InterfaceC14516g[] d10 = C14518h.d(interfaceC14516gArr);
        if (z10 && d10.length >= 2) {
            M(d10);
        }
        this.f98796b = d10;
        if (!z10 && d10.length >= 2) {
            interfaceC14516gArr = null;
        }
        this.f98797c = interfaceC14516gArr;
    }

    public G(InterfaceC14516g[] interfaceC14516gArr, InterfaceC14516g[] interfaceC14516gArr2) {
        this.f98796b = interfaceC14516gArr;
        this.f98797c = interfaceC14516gArr2;
    }
}
