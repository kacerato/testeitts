package wh;

import oh.AbstractC14545v;
import oh.B;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import uh.C15629u;

public class l extends AbstractC14545v implements InterfaceC14514f {

    public C15629u f127520b;

    public m f127521c;

    public l(C15629u c15629u) {
        this.f127520b = c15629u;
    }

    public static l u(Object obj) {
        return obj instanceof l ? (l) obj : obj instanceof M ? new l(C15629u.x((M) obj, false)) : new l(m.y(obj));
    }

    @Override
    public B r() {
        m mVar = this.f127521c;
        return mVar != null ? mVar.r() : new K0(false, 0, (InterfaceC14516g) this.f127520b);
    }

    public InterfaceC14516g v() {
        m mVar = this.f127521c;
        return mVar != null ? mVar : this.f127520b;
    }

    public boolean x() {
        return this.f127521c != null;
    }

    public l(m mVar) {
        this.f127521c = mVar;
    }
}
