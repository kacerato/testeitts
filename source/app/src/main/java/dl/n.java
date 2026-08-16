package Dl;

import Xh.t;
import Xi.x0;
import hi.E0;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;

public class n extends Ml.a implements t, E0 {

    public Rl.i f5297i;

    public static class a extends n {
        public a() {
            super(new Rl.i());
        }
    }

    public n(Rl.i iVar) {
        this.f5297i = iVar;
    }

    @Override
    public int g(Key key) throws InvalidKeyException {
        return this.f5297i.f((Rl.m) (key instanceof PublicKey ? l.b((PublicKey) key) : l.a((PrivateKey) key)));
    }

    @Override
    public String h() {
        return "McEliecePKCS";
    }

    @Override
    public void s(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f5297i.a(false, l.a((PrivateKey) key));
        Rl.i iVar = this.f5297i;
        this.f15439g = iVar.f22900e;
        this.f15440h = iVar.f22901f;
    }

    @Override
    public void t(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f5297i.a(true, new x0(l.b((PublicKey) key), secureRandom));
        Rl.i iVar = this.f5297i;
        this.f15439g = iVar.f22900e;
        this.f15440h = iVar.f22901f;
    }

    @Override
    public byte[] y(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException {
        try {
            return this.f5297i.b(bArr);
        } catch (Exception e10) {
            throw new IllegalBlockSizeException(e10.getMessage());
        }
    }

    @Override
    public byte[] z(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException {
        try {
            return this.f5297i.c(bArr);
        } catch (Exception e10) {
            throw new IllegalBlockSizeException(e10.getMessage());
        }
    }
}
