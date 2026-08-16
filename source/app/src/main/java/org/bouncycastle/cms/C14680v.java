package org.bouncycastle.cms;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import uh.C15624o;
import uh.C15628t;

public class C14680v {

    public C15624o f101021a;

    public C15628t f101022b;

    public C14680v(C15624o c15624o) {
        this.f101021a = c15624o;
        this.f101022b = C15628t.v(c15624o.u());
    }

    public byte[] a(Qk.u uVar) throws CMSException {
        try {
            return X.I(b(uVar).b());
        } catch (IOException e10) {
            throw new CMSException("unable to parse internal stream: " + e10.getMessage(), e10);
        }
    }

    public W b(Qk.u uVar) throws CMSException {
        try {
            uh.r u10 = this.f101022b.u();
            return new W(u10.v(), uVar.a(u10.u()).d(new ByteArrayInputStream(u10.x().H())));
        } catch (Exception e10) {
            throw new CMSException("unable to create stream: " + e10.getMessage(), e10);
        }
    }

    public C15624o c() {
        return this.f101021a;
    }
}
