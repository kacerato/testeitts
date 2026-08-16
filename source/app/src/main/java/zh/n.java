package zh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class n extends AbstractC14545v {

    public C16311a f131449b;

    public E f131450c;

    public l f131451d;

    public n(E e10) {
        this.f131449b = C16311a.w(e10.I(0));
        if (e10.size() > 1) {
            InterfaceC14516g I10 = e10.I(1);
            if (I10 instanceof M) {
                v(I10);
                return;
            }
            this.f131450c = E.G(I10);
            if (e10.size() > 2) {
                v(e10.I(2));
            }
        }
    }

    public static n[] u(E e10) {
        int size = e10.size();
        n[] nVarArr = new n[size];
        for (int i10 = 0; i10 != size; i10++) {
            nVarArr[i10] = y(e10.I(i10));
        }
        return nVarArr;
    }

    public static n y(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(E.G(obj));
        }
        return null;
    }

    public static n z(M m10, boolean z10) {
        return y(E.H(m10, z10));
    }

    public l A() {
        return this.f131451d;
    }

    public C16311a B() {
        return this.f131449b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f131449b);
        E e10 = this.f131450c;
        if (e10 != null) {
            c14518h.a(e10);
        }
        l lVar = this.f131451d;
        if (lVar != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) lVar));
        }
        return new G0(c14518h);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("TargetEtcChain {\n");
        stringBuffer.append("target: " + ((Object) this.f131449b) + "\n");
        if (this.f131450c != null) {
            stringBuffer.append("chain: " + ((Object) this.f131450c) + "\n");
        }
        if (this.f131451d != null) {
            stringBuffer.append("pathProcInput: " + ((Object) this.f131451d) + "\n");
        }
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }

    public final void v(InterfaceC14516g interfaceC14516g) {
        M R10 = M.R(interfaceC14516g);
        if (R10.g() == 0) {
            this.f131451d = l.z(R10, false);
            return;
        }
        throw new IllegalArgumentException("Unknown tag encountered: " + R10.g());
    }

    public C16311a[] x() {
        E e10 = this.f131450c;
        if (e10 != null) {
            return C16311a.u(e10);
        }
        return null;
    }

    public n(C16311a c16311a) {
        this(c16311a, null, null);
    }

    public n(C16311a c16311a, l lVar) {
        this(c16311a, null, lVar);
    }

    public n(C16311a c16311a, C16311a[] c16311aArr) {
        this(c16311a, c16311aArr, null);
    }

    public n(C16311a c16311a, C16311a[] c16311aArr, l lVar) {
        this.f131449b = c16311a;
        if (c16311aArr != null) {
            this.f131450c = new G0(c16311aArr);
        }
        this.f131451d = lVar;
    }
}
