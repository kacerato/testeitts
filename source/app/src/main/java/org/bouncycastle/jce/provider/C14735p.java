package org.bouncycastle.jce.provider;

import fk.InterfaceC13242h;
import hi.C13486b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import oh.C14539s;

public class C14735p implements InterfaceC13242h, DHPublicKey {

    public static final long f101816d = 8712728417091216948L;

    public BigInteger f101817b;

    public hk.j f101818c;

    public C14735p(Xi.Y y10) {
        this.f101817b = y10.e();
        this.f101818c = new hk.j(y10.d().c(), y10.d().a());
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f101817b = (BigInteger) objectInputStream.readObject();
        this.f101818c = new hk.j((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.f101818c.b());
        objectOutputStream.writeObject(this.f101818c.a());
    }

    @Override
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override
    public byte[] getEncoded() {
        return org.bouncycastle.jcajce.provider.asymmetric.util.l.c(new C13486b(Bj.b.f1914l, new Bj.a(this.f101818c.b(), this.f101818c.a())), new C14539s(this.f101817b));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public hk.j getParameters() {
        return this.f101818c;
    }

    @Override
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.f101818c.b(), this.f101818c.a());
    }

    @Override
    public BigInteger getY() {
        return this.f101817b;
    }

    public C14735p(InterfaceC13242h interfaceC13242h) {
        this.f101817b = interfaceC13242h.getY();
        this.f101818c = interfaceC13242h.getParameters();
    }

    public C14735p(hi.h0 h0Var) {
        Bj.a v10 = Bj.a.v(h0Var.u().x());
        try {
            this.f101817b = ((C14539s) h0Var.A()).I();
            this.f101818c = new hk.j(v10.x(), v10.u());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public C14735p(hk.l lVar) {
        this.f101817b = lVar.b();
        this.f101818c = new hk.j(lVar.a().b(), lVar.a().a());
    }

    public C14735p(BigInteger bigInteger, hk.j jVar) {
        this.f101817b = bigInteger;
        this.f101818c = jVar;
    }

    public C14735p(DHPublicKey dHPublicKey) {
        this.f101817b = dHPublicKey.getY();
        this.f101818c = new hk.j(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    public C14735p(DHPublicKeySpec dHPublicKeySpec) {
        this.f101817b = dHPublicKeySpec.getY();
        this.f101818c = new hk.j(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }
}
