package org.bouncycastle.jce.provider;

import Xi.C3366s;
import hi.C13486b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import oh.C14539s;
import oh.C14549x;

public class C14731l implements DHPublicKey {

    public static final long f101797e = -216691575254424324L;

    public BigInteger f101798b;

    public DHParameterSpec f101799c;

    public hi.h0 f101800d;

    public C14731l(C3366s c3366s) {
        this.f101798b = c3366s.e();
        this.f101799c = new DHParameterSpec(c3366s.d().f(), c3366s.d().b(), c3366s.d().d());
    }

    public final boolean a(oh.E e10) {
        if (e10.size() == 2) {
            return true;
        }
        if (e10.size() > 3) {
            return false;
        }
        return C14539s.F(e10.I(2)).I().compareTo(BigInteger.valueOf((long) C14539s.F(e10.I(0)).I().bitLength())) <= 0;
    }

    public final void b(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f101798b = (BigInteger) objectInputStream.readObject();
        this.f101799c = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
    }

    public final void c(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.f101799c.getP());
        objectOutputStream.writeObject(this.f101799c.getG());
        objectOutputStream.writeInt(this.f101799c.getL());
    }

    @Override
    public String getAlgorithm() {
        return "DH";
    }

    @Override
    public byte[] getEncoded() {
        hi.h0 h0Var = this.f101800d;
        return h0Var != null ? org.bouncycastle.jcajce.provider.asymmetric.util.l.e(h0Var) : org.bouncycastle.jcajce.provider.asymmetric.util.l.c(new C13486b(Xh.t.f29073Y0, new Xh.h(this.f101799c.getP(), this.f101799c.getG(), this.f101799c.getL())), new C14539s(this.f101798b));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public DHParameterSpec getParams() {
        return this.f101799c;
    }

    @Override
    public BigInteger getY() {
        return this.f101798b;
    }

    public C14731l(hi.h0 h0Var) {
        DHParameterSpec dHParameterSpec;
        this.f101800d = h0Var;
        try {
            this.f101798b = ((C14539s) h0Var.A()).I();
            oh.E G10 = oh.E.G(h0Var.u().x());
            C14549x u10 = h0Var.u().u();
            if (u10.A(Xh.t.f29073Y0) || a(G10)) {
                Xh.h v10 = Xh.h.v(G10);
                dHParameterSpec = v10.x() != null ? new DHParameterSpec(v10.y(), v10.u(), v10.x().intValue()) : new DHParameterSpec(v10.y(), v10.u());
            } else {
                if (!u10.A(ki.r.f95361z6)) {
                    throw new IllegalArgumentException("unknown algorithm type: " + ((Object) u10));
                }
                ki.d v11 = ki.d.v(G10);
                dHParameterSpec = new DHParameterSpec(v11.z(), v11.u());
            }
            this.f101799c = dHParameterSpec;
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    public C14731l(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.f101798b = bigInteger;
        this.f101799c = dHParameterSpec;
    }

    public C14731l(DHPublicKey dHPublicKey) {
        this.f101798b = dHPublicKey.getY();
        this.f101799c = dHPublicKey.getParams();
    }

    public C14731l(DHPublicKeySpec dHPublicKeySpec) {
        this.f101798b = dHPublicKeySpec.getY();
        this.f101799c = new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }
}
