package Dj;

import Ek.A;
import Ek.C2490a;
import Ek.C2498i;
import Ek.w;
import Fk.C2539k;
import Fk.C2543o;

public class e {

    public final A f5238a;

    public final C2498i f5239b;

    public e(C2498i c2498i, A a10) {
        this.f5238a = a10;
        this.f5239b = c2498i;
    }

    public byte[] a(Gj.b bVar) {
        if (this.f5239b.v().v() != 0) {
            throw new IllegalArgumentException("Encrypted data is no AES 128 CCM");
        }
        C2490a w10 = C2490a.w(this.f5239b.v().x());
        C2543o w11 = C2543o.w(w.w(this.f5238a.x()).v().y());
        return bVar.a(org.bouncycastle.util.a.C(C2539k.E(w11.y()).u(), w11.v().H(), w11.x().H()), w10.v().v(), w10.x().H());
    }

    public C2498i b() {
        return this.f5239b;
    }

    public A c() {
        return this.f5238a;
    }

    public e(A a10) {
        this.f5238a = a10;
        this.f5239b = null;
    }
}
