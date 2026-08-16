package ki;

import jk.AbstractC13875e;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;

public class n extends AbstractC14545v {

    public final AbstractC14551y f95288b;

    public AbstractC13875e f95289c;

    public jk.i f95290d;

    public n(AbstractC13875e abstractC13875e, AbstractC14551y abstractC14551y) {
        this(abstractC13875e, abstractC14551y.H());
    }

    @Override
    public B r() {
        return this.f95288b;
    }

    public synchronized jk.i u() {
        try {
            if (this.f95290d == null) {
                this.f95290d = this.f95289c.l(this.f95288b.H()).B();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f95290d;
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f95288b.H());
    }

    public boolean x() {
        byte[] H10 = this.f95288b.H();
        if (H10 == null || H10.length <= 0) {
            return false;
        }
        byte b10 = H10[0];
        return b10 == 2 || b10 == 3;
    }

    public n(AbstractC13875e abstractC13875e, byte[] bArr) {
        this.f95289c = abstractC13875e;
        this.f95288b = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public n(jk.i iVar, boolean z10) {
        this.f95290d = iVar.B();
        this.f95288b = new C0(iVar.l(z10));
    }
}
