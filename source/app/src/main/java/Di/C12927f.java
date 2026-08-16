package di;

import jk.i;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;

public class C12927f extends AbstractC14545v {

    public AbstractC14551y f84678b;

    public C12927f(i iVar) {
        this.f84678b = new C0(AbstractC12926e.b(iVar));
    }

    public static C12927f u(Object obj) {
        if (obj instanceof C12927f) {
            return (C12927f) obj;
        }
        if (obj != null) {
            return new C12927f(AbstractC14551y.F(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f84678b;
    }

    public C12927f(AbstractC14551y abstractC14551y) {
        this.f84678b = abstractC14551y;
    }
}
