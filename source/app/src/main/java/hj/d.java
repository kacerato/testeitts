package Hj;

import hi.C13486b;
import java.io.IOException;
import java.security.PrivateKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14520i;
import yj.InterfaceC16198c;

public class d implements PrivateKey {

    public final List<PrivateKey> f8504b;

    public C14549x f8505c;

    public d(Xh.v vVar) {
        try {
            if (!Arrays.asList(Lj.a.f14362a).contains(vVar.y().u())) {
                throw new IllegalStateException("Unable to create CompositePrivateKey from PrivateKeyInfo");
            }
            d dVar = (d) new Lj.b().b(vVar);
            if (dVar == null) {
                throw new IllegalStateException("Unable to create CompositePrivateKey from PrivateKeyInfo");
            }
            this.f8504b = dVar.b();
            this.f8505c = dVar.a();
        } catch (IOException e10) {
            throw org.bouncycastle.util.h.b(e10.getMessage(), e10);
        }
    }

    public C14549x a() {
        return this.f8505c;
    }

    public List<PrivateKey> b() {
        return this.f8504b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return dVar.a().A(this.f8505c) && this.f8504b.equals(dVar.f8504b);
    }

    @Override
    public String getAlgorithm() {
        return Lj.a.f14365d.get(this.f8505c).b();
    }

    @Override
    public byte[] getEncoded() {
        C14518h c14518h = new C14518h();
        for (int i10 = 0; i10 < this.f8504b.size(); i10++) {
            c14518h.a(Xh.v.v(this.f8504b.get(i10).getEncoded()));
        }
        try {
            return new Xh.v(new C13486b(this.f8505c), new G0(c14518h)).s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode composite private key: " + e10.getMessage());
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return this.f8504b.hashCode();
    }

    public d(C14549x c14549x, PrivateKey... privateKeyArr) {
        this.f8505c = c14549x;
        if (privateKeyArr == null || privateKeyArr.length == 0) {
            throw new IllegalArgumentException("at least one private key must be provided for the composite private key");
        }
        ArrayList arrayList = new ArrayList(privateKeyArr.length);
        for (PrivateKey privateKey : privateKeyArr) {
            arrayList.add(privateKey);
        }
        this.f8504b = Collections.unmodifiableList(arrayList);
    }

    public d(PrivateKey... privateKeyArr) {
        this(InterfaceC16198c.f130355Q, privateKeyArr);
    }
}
