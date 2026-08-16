package org.bouncycastle.openssl;

import java.io.IOException;
import li.C14146h;
import oh.B;
import oh.r;

public class m {

    public final C14146h f101912a;

    public final a f101913b;

    public m(C14146h c14146h, a aVar) {
        this.f101912a = c14146h;
        this.f101913b = aVar;
    }

    public C14146h a() {
        return this.f101912a;
    }

    public byte[] b() throws IOException {
        return org.bouncycastle.util.a.B(this.f101912a.getEncoded(), this.f101913b.d().getEncoded());
    }

    public a c() {
        return this.f101913b;
    }

    public m(byte[] bArr) throws IOException {
        r rVar = new r(bArr);
        this.f101912a = new C14146h(rVar.k().getEncoded());
        B k10 = rVar.k();
        if (k10 != null) {
            this.f101913b = new a(k10.getEncoded());
        } else {
            this.f101913b = null;
        }
    }
}
