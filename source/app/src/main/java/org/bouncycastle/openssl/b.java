package org.bouncycastle.openssl;

import Sk.n;
import Xh.t;
import Xh.v;
import gm.C13400a;
import gm.C13401b;
import gm.InterfaceC13402c;
import hi.C13508u;
import hi.h0;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import ki.r;
import li.C14143e;
import li.C14145g;
import li.C14146h;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import org.bouncycastle.util.io.pem.PemGenerationException;
import org.bouncycastle.util.w;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.openjdk.tools.doclint.DocLint;
import uh.C15624o;

public class b implements InterfaceC13402c {

    public static final C14549x[] f101861c = {r.f95349s6, Wh.b.f27786j};

    public static final byte[] f101862d = {48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_lstore_2, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_fstore_2, 70};

    public final Object f101863a;

    public final f f101864b;

    public b(Object obj) {
        this.f101863a = obj;
        this.f101864b = null;
    }

    @Override
    public C13401b a() throws PemGenerationException {
        try {
            return b(this.f101863a);
        } catch (IOException e10) {
            throw new PemGenerationException("encoding exception: " + e10.getMessage(), e10);
        }
    }

    public final C13401b b(Object obj) throws IOException {
        byte[] encoded;
        String str;
        if (obj instanceof C13401b) {
            return (C13401b) obj;
        }
        if (obj instanceof InterfaceC13402c) {
            return ((InterfaceC13402c) obj).a();
        }
        if (obj instanceof C14146h) {
            encoded = ((C14146h) obj).getEncoded();
            str = i.f101873g;
        } else if (obj instanceof C14145g) {
            encoded = ((C14145g) obj).getEncoded();
            str = i.f101876j;
        } else if (obj instanceof m) {
            encoded = ((m) obj).b();
            str = i.f101874h;
        } else if (obj instanceof v) {
            v vVar = (v) obj;
            C14549x u10 = vVar.y().u();
            if (u10.A(t.f29017H0)) {
                encoded = vVar.E().r().getEncoded();
                str = i.f101883q;
            } else {
                C14549x[] c14549xArr = f101861c;
                if (u10.A(c14549xArr[0]) || u10.A(c14549xArr[1])) {
                    C13508u v10 = C13508u.v(vVar.y().x());
                    C14518h c14518h = new C14518h();
                    c14518h.a(new C14539s(0L));
                    c14518h.a(new C14539s(v10.x()));
                    c14518h.a(new C14539s(v10.y()));
                    c14518h.a(new C14539s(v10.u()));
                    BigInteger I10 = C14539s.F(vVar.E()).I();
                    c14518h.a(new C14539s(v10.u().modPow(I10, v10.x())));
                    c14518h.a(new C14539s(I10));
                    encoded = new G0(c14518h).getEncoded();
                    str = i.f101884r;
                } else if (u10.A(r.f95305I5)) {
                    encoded = vVar.E().r().getEncoded();
                    str = i.f101885s;
                } else {
                    encoded = vVar.getEncoded();
                    str = i.f101887u;
                }
            }
        } else if (obj instanceof h0) {
            encoded = ((h0) obj).getEncoded();
            str = i.f101881o;
        } else if (obj instanceof C14143e) {
            encoded = ((C14143e) obj).getEncoded();
            str = i.f101879m;
        } else if (obj instanceof Sk.e) {
            encoded = ((Sk.e) obj).c();
            str = i.f101871e;
        } else if (obj instanceof n) {
            encoded = ((n) obj).b();
            str = i.f101886t;
        } else {
            if (!(obj instanceof C15624o)) {
                throw new PemGenerationException("unknown object passed - can't encode.");
            }
            encoded = ((C15624o) obj).getEncoded();
            str = i.f101877k;
        }
        f fVar = this.f101864b;
        if (fVar == null) {
            return new C13401b(str, encoded);
        }
        String p10 = w.p(fVar.getAlgorithm());
        if (p10.equals("DESEDE")) {
            p10 = "DES-EDE3-CBC";
        }
        byte[] b10 = this.f101864b.b();
        byte[] a10 = this.f101864b.a(encoded);
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new C13400a("Proc-Type", "4,ENCRYPTED"));
        arrayList.add(new C13400a("DEK-Info", p10 + DocLint.SEPARATOR + c(b10)));
        return new C13401b(str, arrayList, a10);
    }

    public final String c(byte[] bArr) throws IOException {
        char[] cArr = new char[bArr.length * 2];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            byte[] bArr2 = f101862d;
            cArr[i11] = (char) bArr2[(b10 & 255) >>> 4];
            cArr[i11 + 1] = (char) bArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public b(Object obj, f fVar) {
        this.f101863a = obj;
        this.f101864b = fVar;
    }
}
