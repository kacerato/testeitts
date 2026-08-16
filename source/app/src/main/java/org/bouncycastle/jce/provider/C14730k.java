package org.bouncycastle.jce.provider;

import fk.InterfaceC13250p;
import hi.C13486b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class C14730k implements DHPrivateKey, InterfaceC13250p {

    public static final long f101792f = 311058815616901812L;

    public BigInteger f101793b;

    public DHParameterSpec f101794c;

    public Xh.v f101795d;

    public InterfaceC13250p f101796e = new org.bouncycastle.jcajce.provider.asymmetric.util.m();

    public C14730k() {
    }

    private void b(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f101793b = (BigInteger) objectInputStream.readObject();
        this.f101794c = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
    }

    private void g(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getX());
        objectOutputStream.writeObject(this.f101794c.getP());
        objectOutputStream.writeObject(this.f101794c.getG());
        objectOutputStream.writeInt(this.f101794c.getL());
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101796e.a(c14549x, interfaceC14516g);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101796e.c(c14549x);
    }

    @Override
    public Enumeration d() {
        return this.f101796e.d();
    }

    @Override
    public String getAlgorithm() {
        return "DH";
    }

    @Override
    public byte[] getEncoded() {
        try {
            Xh.v vVar = this.f101795d;
            return vVar != null ? vVar.s(InterfaceC14520i.f98892a) : new Xh.v(new C13486b(Xh.t.f29073Y0, new Xh.h(this.f101794c.getP(), this.f101794c.getG(), this.f101794c.getL())), new C14539s(getX())).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public DHParameterSpec getParams() {
        return this.f101794c;
    }

    @Override
    public BigInteger getX() {
        return this.f101793b;
    }

    public C14730k(Xh.v vVar) throws IOException {
        DHParameterSpec dHParameterSpec;
        oh.E G10 = oh.E.G(vVar.y().x());
        C14539s F10 = C14539s.F(vVar.E());
        C14549x u10 = vVar.y().u();
        this.f101795d = vVar;
        this.f101793b = F10.I();
        if (u10.A(Xh.t.f29073Y0)) {
            Xh.h v10 = Xh.h.v(G10);
            dHParameterSpec = v10.x() != null ? new DHParameterSpec(v10.y(), v10.u(), v10.x().intValue()) : new DHParameterSpec(v10.y(), v10.u());
        } else {
            if (!u10.A(ki.r.f95361z6)) {
                throw new IllegalArgumentException("unknown algorithm type: " + ((Object) u10));
            }
            ki.d v11 = ki.d.v(G10);
            dHParameterSpec = new DHParameterSpec(v11.z(), v11.u());
        }
        this.f101794c = dHParameterSpec;
    }

    public C14730k(Xi.r rVar) {
        this.f101793b = rVar.e();
        this.f101794c = new DHParameterSpec(rVar.d().f(), rVar.d().b(), rVar.d().d());
    }

    public C14730k(DHPrivateKey dHPrivateKey) {
        this.f101793b = dHPrivateKey.getX();
        this.f101794c = dHPrivateKey.getParams();
    }

    public C14730k(DHPrivateKeySpec dHPrivateKeySpec) {
        this.f101793b = dHPrivateKeySpec.getX();
        this.f101794c = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }
}
