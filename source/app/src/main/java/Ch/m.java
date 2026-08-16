package Ch;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.InterfaceC14514f;

public class m extends AbstractC14545v implements InterfaceC14514f {

    public AbstractC14551y f4353b;

    public n f4354c;

    public m(n nVar) {
        this.f4354c = nVar;
    }

    public static m w(Object obj) {
        return obj instanceof m ? (m) obj : obj instanceof AbstractC14551y ? new m((AbstractC14551y) obj) : new m(n.w(obj));
    }

    @Override
    public B r() {
        n nVar = this.f4354c;
        return nVar == null ? this.f4353b : nVar.r();
    }

    public C13486b u() {
        n nVar = this.f4354c;
        return nVar == null ? new C13486b(Wh.b.f27785i) : nVar.u();
    }

    public byte[] v() {
        n nVar = this.f4354c;
        return (nVar == null ? this.f4353b : nVar.v()).H();
    }

    public m(AbstractC14551y abstractC14551y) {
        this.f4353b = abstractC14551y;
    }

    public m(byte[] bArr) {
        this.f4353b = new C0(bArr);
    }
}
