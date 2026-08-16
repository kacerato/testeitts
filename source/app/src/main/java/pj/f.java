package Pj;

import Xi.C3335c;
import Xi.W;
import Xi.X;
import Xi.Y;
import fk.InterfaceC13241g;
import fk.InterfaceC13242h;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;

public class f {
    public static C3335c a(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof InterfaceC13241g) {
            InterfaceC13241g interfaceC13241g = (InterfaceC13241g) privateKey;
            return new X(interfaceC13241g.getX(), new W(interfaceC13241g.getParameters().b(), interfaceC13241g.getParameters().a()));
        }
        if (!(privateKey instanceof DHPrivateKey)) {
            throw new InvalidKeyException("can't identify private key for El Gamal.");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) privateKey;
        return new X(dHPrivateKey.getX(), new W(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG()));
    }

    public static C3335c b(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof InterfaceC13242h) {
            InterfaceC13242h interfaceC13242h = (InterfaceC13242h) publicKey;
            return new Y(interfaceC13242h.getY(), new W(interfaceC13242h.getParameters().b(), interfaceC13242h.getParameters().a()));
        }
        if (!(publicKey instanceof DHPublicKey)) {
            throw new InvalidKeyException("can't identify public key for El Gamal.");
        }
        DHPublicKey dHPublicKey = (DHPublicKey) publicKey;
        return new Y(dHPublicKey.getY(), new W(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG()));
    }
}
