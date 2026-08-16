package zh;

import hi.C13510w;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.E;
import oh.G0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class k extends AbstractC14545v implements InterfaceC14514f {

    public AbstractC14551y f131437b;

    public C13510w f131438c;

    public E f131439d;

    public k(C13510w c13510w) {
        this.f131438c = c13510w;
    }

    public static k v(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj instanceof AbstractC14551y) {
            return new k((AbstractC14551y) obj);
        }
        if (obj instanceof E) {
            return new k(C13510w.w(obj));
        }
        if (obj instanceof M) {
            return new k(E.H((M) obj, false));
        }
        throw new IllegalArgumentException("Unknown object submitted to getInstance: " + obj.getClass().getName());
    }

    public static k w(M m10, boolean z10) {
        return v(m10.O());
    }

    @Override
    public B r() {
        AbstractC14551y abstractC14551y = this.f131437b;
        if (abstractC14551y != null) {
            return abstractC14551y.r();
        }
        C13510w c13510w = this.f131438c;
        return c13510w != null ? c13510w.r() : new K0(false, 0, (InterfaceC14516g) this.f131439d);
    }

    public String toString() {
        StringBuilder sb2;
        Object obj;
        if (this.f131437b != null) {
            sb2 = new StringBuilder();
            sb2.append("Data {\n");
            obj = this.f131437b;
        } else if (this.f131438c != null) {
            sb2 = new StringBuilder();
            sb2.append("Data {\n");
            obj = this.f131438c;
        } else {
            sb2 = new StringBuilder();
            sb2.append("Data {\n");
            obj = this.f131439d;
        }
        sb2.append(obj);
        sb2.append("}\n");
        return sb2.toString();
    }

    public n[] u() {
        E e10 = this.f131439d;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        n[] nVarArr = new n[size];
        for (int i10 = 0; i10 != size; i10++) {
            nVarArr[i10] = n.y(this.f131439d.I(i10));
        }
        return nVarArr;
    }

    public AbstractC14551y x() {
        return this.f131437b;
    }

    public C13510w y() {
        return this.f131438c;
    }

    public k(AbstractC14551y abstractC14551y) {
        this.f131437b = abstractC14551y;
    }

    public k(E e10) {
        this.f131439d = e10;
    }

    public k(n nVar) {
        this.f131439d = new G0(nVar);
    }

    public k(byte[] bArr) {
        this.f131437b = new C0(bArr);
    }

    public k(n[] nVarArr) {
        this.f131439d = new G0(nVarArr);
    }
}
