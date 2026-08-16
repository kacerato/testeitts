package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.IOException;
import oh.InterfaceC14520i;
import vh.C15847a;

public class U implements Q {
    @Override
    public byte[] a(C13486b c13486b, int i10, byte[] bArr) {
        try {
            return new C15847a(c13486b, bArr, org.bouncycastle.util.p.k(i10)).s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new IllegalStateException("Unable to create KDF material: " + ((Object) e10));
        }
    }
}
