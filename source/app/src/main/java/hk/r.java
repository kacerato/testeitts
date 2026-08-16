package hk;

import fk.InterfaceC13247m;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.KeySpec;

public class r implements KeySpec, InterfaceC13247m {

    public PublicKey f91093b;

    public PrivateKey f91094c;

    public r(PrivateKey privateKey, PublicKey publicKey) {
        this.f91094c = privateKey;
        this.f91093b = publicKey;
    }

    @Override
    public PublicKey ee() {
        return this.f91093b;
    }

    @Override
    public String getAlgorithm() {
        return "IES";
    }

    @Override
    public byte[] getEncoded() {
        return null;
    }

    @Override
    public String getFormat() {
        return null;
    }

    @Override
    public PrivateKey getPrivate() {
        return this.f91094c;
    }
}
