package org.bouncycastle.jcajce.provider.symmetric.util;

import ak.C3661a;
import ak.C3665e;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.symmetric.util.d;

public class e extends C3665e implements d {

    public boolean f101507d;

    public int f101508e;

    public int f101509f;

    public int f101510g;

    public int f101511h;

    public e(String str, C14549x c14549x, boolean z10, int i10, int i11, int i12, int i13) {
        super(str, c14549x);
        this.f101507d = z10;
        this.f101508e = i10;
        this.f101509f = i11;
        this.f101510g = i12;
        this.f101511h = i13;
    }

    @Override
    public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PBEKeySpec)) {
            throw new InvalidKeySpecException("Invalid KeySpec");
        }
        PBEKeySpec pBEKeySpec = (PBEKeySpec) keySpec;
        if (pBEKeySpec.getSalt() == null) {
            return new C3661a(this.f32326b, this.f32327c, this.f101508e, this.f101509f, this.f101510g, this.f101511h, pBEKeySpec, null);
        }
        return new C3661a(this.f32326b, this.f32327c, this.f101508e, this.f101509f, this.f101510g, this.f101511h, pBEKeySpec, this.f101507d ? d.a.g(pBEKeySpec, this.f101508e, this.f101509f, this.f101510g, this.f101511h) : d.a.e(pBEKeySpec, this.f101508e, this.f101509f, this.f101510g));
    }
}
