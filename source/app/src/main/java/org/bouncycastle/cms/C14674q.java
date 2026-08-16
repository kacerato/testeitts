package org.bouncycastle.cms;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import oh.InterfaceC14553z;
import uh.C15623n;
import uh.C15625p;

public class C14674q extends C14678t {
    public C14674q(InputStream inputStream) throws CMSException {
        super(inputStream);
    }

    public W b(Qk.w wVar) throws CMSException {
        try {
            C15623n c15623n = new C15623n((oh.F) this.f101017a.a(16));
            C15625p b10 = c15623n.b();
            return new W(b10.b(), wVar.a(c15623n.a()).d(((InterfaceC14553z) b10.a(4)).a()));
        } catch (IOException e10) {
            throw new CMSException("IOException reading compressed content.", e10);
        }
    }

    public C14674q(byte[] bArr) throws CMSException {
        this(new ByteArrayInputStream(bArr));
    }
}
