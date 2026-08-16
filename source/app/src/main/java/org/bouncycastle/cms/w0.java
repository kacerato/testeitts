package org.bouncycastle.cms;

import java.util.ArrayList;
import java.util.List;
import li.C14146h;

public class w0 {

    public final List f101026a;

    public final List f101027b;

    public w0(C14146h c14146h) {
        ArrayList arrayList = new ArrayList(1);
        this.f101026a = arrayList;
        this.f101027b = null;
        arrayList.add(c14146h.x());
    }

    public x0 a() {
        List list = this.f101026a;
        oh.G j10 = list == null ? null : X.j(list);
        List list2 = this.f101027b;
        return new x0(new uh.I(j10, list2 != null ? X.j(list2) : null));
    }

    public w0(org.bouncycastle.util.t tVar) throws CMSException {
        this(tVar, null);
    }

    public w0(org.bouncycastle.util.t tVar, org.bouncycastle.util.t tVar2) throws CMSException {
        if (tVar != null) {
            this.f101026a = X.r(tVar);
        } else {
            this.f101026a = null;
        }
        if (tVar2 != null) {
            this.f101027b = X.q(tVar2);
        } else {
            this.f101027b = null;
        }
    }
}
