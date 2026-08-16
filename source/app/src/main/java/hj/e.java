package Hj;

import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14520i;
import yj.InterfaceC16198c;

public class e implements PublicKey {

    public final List<PublicKey> f8506b;

    public final C14549x f8507c;

    public e(h0 h0Var) {
        try {
            if (!Arrays.asList(Lj.a.f14362a).contains(h0Var.u().u())) {
                throw new IllegalStateException("unable to create CompositePublicKey from SubjectPublicKeyInfo");
            }
            e eVar = (e) new Lj.b().a(h0Var);
            if (eVar == null) {
                throw new IllegalStateException("unable to create CompositePublicKey from SubjectPublicKeyInfo");
            }
            this.f8506b = eVar.b();
            this.f8507c = eVar.a();
        } catch (IOException e10) {
            throw new IllegalStateException(e10.getMessage(), e10);
        }
    }

    public C14549x a() {
        return this.f8507c;
    }

    public List<PublicKey> b() {
        return this.f8506b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return eVar.a().A(this.f8507c) && this.f8506b.equals(eVar.f8506b);
    }

    @Override
    public String getAlgorithm() {
        return Lj.a.f14365d.get(this.f8507c).b();
    }

    @Override
    public byte[] getEncoded() {
        C14518h c14518h = new C14518h();
        for (int i10 = 0; i10 < this.f8506b.size(); i10++) {
            c14518h.a(this.f8507c.A(InterfaceC16198c.f130355Q) ? h0.w(this.f8506b.get(i10).getEncoded()) : h0.w(this.f8506b.get(i10).getEncoded()).z());
        }
        try {
            return new h0(new C13486b(this.f8507c), new G0(c14518h)).s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode composite public key: " + e10.getMessage());
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return this.f8506b.hashCode();
    }

    public e(C14549x c14549x, PublicKey... publicKeyArr) {
        this.f8507c = c14549x;
        if (publicKeyArr == null || publicKeyArr.length == 0) {
            throw new IllegalArgumentException("at least one public key must be provided for the composite public key");
        }
        ArrayList arrayList = new ArrayList(publicKeyArr.length);
        for (PublicKey publicKey : publicKeyArr) {
            arrayList.add(publicKey);
        }
        this.f8506b = Collections.unmodifiableList(arrayList);
    }

    public e(PublicKey... publicKeyArr) {
        this(InterfaceC16198c.f130355Q, publicKeyArr);
    }
}
