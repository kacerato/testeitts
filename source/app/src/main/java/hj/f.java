package Hj;

import hi.C13481E;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.PublicKey;
import oh.InterfaceC14520i;
import qh.C15104e;
import qh.InterfaceC15100a;

public class f implements PublicKey {

    public final C13481E f8508b;

    public final C13486b f8509c;

    public final byte[] f8510d;

    public f(C13481E c13481e, C13486b c13486b, byte[] bArr) {
        this.f8508b = c13481e;
        this.f8509c = c13486b;
        this.f8510d = org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public String getAlgorithm() {
        return "ExternalKey";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new h0(new C13486b(InterfaceC15100a.f107957L1), new C15104e(this.f8508b, this.f8509c, this.f8510d)).s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new IllegalStateException("unable to encode composite key: " + e10.getMessage());
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public f(PublicKey publicKey, C13481E c13481e, MessageDigest messageDigest) {
        this(c13481e, dk.h.a(messageDigest.getAlgorithm()), messageDigest.digest(publicKey.getEncoded()));
    }

    public f(C15104e c15104e) {
        this(c15104e.z(), c15104e.u(), c15104e.x());
    }
}
