package org.bouncycastle.jce;

import Xh.n;
import Xh.u;
import hi.C13486b;
import hi.C13510w;
import java.io.IOException;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import oh.A0;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14549x;
import oh.InterfaceC14520i;

public class f {
    public static byte[] a(C14549x c14549x, byte[] bArr, int i10, char[] cArr, byte[] bArr2, String str) throws Exception {
        SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(c14549x.J(), str);
        PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i10);
        SecretKey generateSecret = secretKeyFactory.generateSecret(new PBEKeySpec(cArr));
        Mac mac = Mac.getInstance(c14549x.J(), str);
        mac.init(generateSecret, pBEParameterSpec);
        mac.update(bArr2);
        return mac.doFinal();
    }

    public static byte[] b(byte[] bArr) throws IOException {
        return u.v(bArr).s(InterfaceC14520i.f98892a);
    }

    public static byte[] c(byte[] bArr, char[] cArr, String str) throws IOException {
        u v10 = u.v(bArr);
        Xh.g u10 = v10.u();
        Xh.g gVar = new Xh.g(u10.v(), new C0(B.B(AbstractC14551y.F(u10.u()).H()).s(InterfaceC14520i.f98892a)));
        n x10 = v10.x();
        try {
            int intValue = x10.v().intValue();
            return new u(gVar, new n(new C13510w(new C13486b(x10.x().u().u(), A0.f98776c), a(x10.x().u().u(), x10.y(), intValue, cArr, AbstractC14551y.F(gVar.u()).H(), str)), x10.y(), intValue)).s(InterfaceC14520i.f98892a);
        } catch (Exception e10) {
            throw new IOException("error constructing MAC: " + e10.toString());
        }
    }
}
