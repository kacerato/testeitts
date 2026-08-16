package org.bouncycastle.crypto.util;

import hi.C13486b;
import java.io.IOException;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class f {

    public final G0 f101057a;

    public static final class b {

        public final C13486b f101058a;

        public final AbstractC14551y f101059b;

        public final AbstractC14551y f101060c;

        public M f101061d;

        public M f101062e;

        public b(C13486b c13486b, byte[] bArr, byte[] bArr2) {
            this.f101058a = c13486b;
            this.f101059b = DerUtil.a(bArr);
            this.f101060c = DerUtil.a(bArr2);
        }

        public f a() {
            C14518h c14518h = new C14518h();
            c14518h.a(this.f101058a);
            c14518h.a(this.f101059b);
            c14518h.a(this.f101060c);
            M m10 = this.f101061d;
            if (m10 != null) {
                c14518h.a(m10);
            }
            M m11 = this.f101062e;
            if (m11 != null) {
                c14518h.a(m11);
            }
            return new f(new G0(c14518h));
        }

        public b b(byte[] bArr) {
            this.f101062e = new K0(false, 1, (InterfaceC14516g) DerUtil.a(bArr));
            return this;
        }

        public b c(byte[] bArr) {
            this.f101061d = new K0(false, 0, (InterfaceC14516g) DerUtil.a(bArr));
            return this;
        }
    }

    public f(G0 g02) {
        this.f101057a = g02;
    }

    public byte[] a() throws IOException {
        return this.f101057a.getEncoded();
    }
}
