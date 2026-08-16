package Pj;

import Xi.Y;
import fk.InterfaceC13242h;
import hi.C13486b;
import hi.h0;
import hk.j;
import hk.l;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import oh.C14539s;
import oh.InterfaceC14520i;

public class d implements InterfaceC13242h, DHPublicKey {

    public static final long f21545d = 8712728417091216948L;

    public BigInteger f21546b;

    public transient j f21547c;

    public d(Y y10) {
        this.f21546b = y10.e();
        this.f21547c = new j(y10.d().c(), y10.d().a());
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f21547c = new j((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void b(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f21547c.b());
        objectOutputStream.writeObject(this.f21547c.a());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPublicKey)) {
            return false;
        }
        DHPublicKey dHPublicKey = (DHPublicKey) obj;
        return getY().equals(dHPublicKey.getY()) && getParams().getG().equals(dHPublicKey.getParams().getG()) && getParams().getP().equals(dHPublicKey.getParams().getP()) && getParams().getL() == dHPublicKey.getParams().getL();
    }

    @Override
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new h0(new C13486b(Bj.b.f1914l, new Bj.a(this.f21547c.b(), this.f21547c.a())), new C14539s(this.f21546b)).s(InterfaceC14520i.f98892a);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public j getParameters() {
        return this.f21547c;
    }

    @Override
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.f21547c.b(), this.f21547c.a());
    }

    @Override
    public BigInteger getY() {
        return this.f21546b;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    public d(InterfaceC13242h interfaceC13242h) {
        this.f21546b = interfaceC13242h.getY();
        this.f21547c = interfaceC13242h.getParameters();
    }

    public d(h0 h0Var) {
        Bj.a v10 = Bj.a.v(h0Var.u().x());
        try {
            this.f21546b = ((C14539s) h0Var.A()).I();
            this.f21547c = new j(v10.x(), v10.u());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public d(l lVar) {
        this.f21546b = lVar.b();
        this.f21547c = new j(lVar.a().b(), lVar.a().a());
    }

    public d(BigInteger bigInteger, j jVar) {
        this.f21546b = bigInteger;
        this.f21547c = jVar;
    }

    public d(DHPublicKey dHPublicKey) {
        this.f21546b = dHPublicKey.getY();
        this.f21547c = new j(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    public d(DHPublicKeySpec dHPublicKeySpec) {
        this.f21546b = dHPublicKeySpec.getY();
        this.f21547c = new j(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }
}
