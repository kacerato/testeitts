package zh;

import hi.W;
import java.util.Arrays;
import oh.AbstractC14545v;
import oh.B;
import oh.C14512e;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class l extends AbstractC14545v {

    public W[] f131440b;

    public boolean f131441c;

    public boolean f131442d;

    public boolean f131443e;

    public l(W[] wArr) {
        this.f131441c = false;
        this.f131442d = false;
        this.f131443e = false;
        this.f131440b = u(wArr);
    }

    public static W[] v(E e10) {
        int size = e10.size();
        W[] wArr = new W[size];
        for (int i10 = 0; i10 != size; i10++) {
            wArr[i10] = W.u(e10.I(i10));
        }
        return wArr;
    }

    public static l y(Object obj) {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj == null) {
            return null;
        }
        E G10 = E.G(obj);
        l lVar = new l(v(E.G(G10.I(0))));
        for (int i10 = 1; i10 < G10.size(); i10++) {
            InterfaceC14516g I10 = G10.I(i10);
            if (I10 instanceof C14512e) {
                lVar.F(C14512e.G(I10).J());
            } else if (I10 instanceof M) {
                M R10 = M.R(I10);
                int g10 = R10.g();
                if (g10 == 0) {
                    lVar.D(C14512e.H(R10, false).J());
                } else {
                    if (g10 != 1) {
                        throw new IllegalArgumentException("Unknown tag encountered: " + R10.g());
                    }
                    lVar.E(C14512e.H(R10, false).J());
                }
            } else {
                continue;
            }
        }
        return lVar;
    }

    public static l z(M m10, boolean z10) {
        return y(E.H(m10, z10));
    }

    public boolean A() {
        return this.f131442d;
    }

    public boolean B() {
        return this.f131443e;
    }

    public boolean C() {
        return this.f131441c;
    }

    public final void D(boolean z10) {
        this.f131442d = z10;
    }

    public final void E(boolean z10) {
        this.f131443e = z10;
    }

    public final void F(boolean z10) {
        this.f131441c = z10;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        C14518h c14518h2 = new C14518h(this.f131440b.length);
        int i10 = 0;
        while (true) {
            W[] wArr = this.f131440b;
            if (i10 == wArr.length) {
                break;
            }
            c14518h2.a(wArr[i10]);
            i10++;
        }
        c14518h.a(new G0(c14518h2));
        boolean z10 = this.f131441c;
        if (z10) {
            c14518h.a(C14512e.I(z10));
        }
        boolean z11 = this.f131442d;
        if (z11) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) C14512e.I(z11)));
        }
        boolean z12 = this.f131443e;
        if (z12) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) C14512e.I(z12)));
        }
        return new G0(c14518h);
    }

    public String toString() {
        return "PathProcInput: {\nacceptablePolicySet: " + ((Object) Arrays.asList(this.f131440b)) + "\ninhibitPolicyMapping: " + this.f131441c + "\nexplicitPolicyReqd: " + this.f131442d + "\ninhibitAnyPolicy: " + this.f131443e + "\n}\n";
    }

    public final W[] u(W[] wArr) {
        int length = wArr.length;
        W[] wArr2 = new W[length];
        System.arraycopy(wArr, 0, wArr2, 0, length);
        return wArr2;
    }

    public W[] x() {
        return u(this.f131440b);
    }

    public l(W[] wArr, boolean z10, boolean z11, boolean z12) {
        this.f131441c = false;
        this.f131442d = false;
        this.f131443e = false;
        this.f131440b = u(wArr);
        this.f131441c = z10;
        this.f131442d = z11;
        this.f131443e = z12;
    }
}
