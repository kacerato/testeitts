package org.bouncycastle.jce.provider;

import Bi.InterfaceC2379k;
import Ii.C2667z;
import Xi.C3360o0;
import Xi.w0;
import ak.C3661a;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.PBEParameterSpec;

public interface InterfaceC14724e {

    public static final int f101754a = 0;

    public static final int f101755b = 1;

    public static final int f101756c = 2;

    public static final int f101757d = 0;

    public static final int f101758e = 1;

    public static final int f101759f = 2;

    public static final int f101760g = 3;

    public static class a {
        public static Bi.L a(int i10, int i11) {
            if (i10 == 0) {
                if (i11 == 0) {
                    return new Oi.I(new C2667z());
                }
                if (i11 == 1) {
                    return new Oi.I(new Ii.J());
                }
                throw new IllegalStateException("PKCS5 scheme 1 only supports only MD5 and SHA1.");
            }
            if (i10 == 1) {
                return new Oi.J();
            }
            if (i10 == 3) {
                if (i11 == 0) {
                    return new C14743y(new C2667z());
                }
                if (i11 == 1) {
                    return new C14743y(new Ii.J());
                }
                if (i11 == 2) {
                    return new C14743y(new Ii.G());
                }
                throw new IllegalStateException("unknown digest scheme for PBE encryption.");
            }
            if (i11 == 0) {
                return new Oi.H(new C2667z());
            }
            if (i11 == 1) {
                return new Oi.H(new Ii.J());
            }
            if (i11 == 2) {
                return new Oi.H(new Ii.G());
            }
            throw new IllegalStateException("unknown digest scheme for PBE encryption.");
        }

        public static InterfaceC2379k b(C3661a c3661a, AlgorithmParameterSpec algorithmParameterSpec, int i10, int i11, int i12) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            Bi.L a10 = a(i10, i11);
            byte[] encoded = c3661a.getEncoded();
            a10.j(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            InterfaceC2379k d10 = a10.d(i12);
            for (int i13 = 0; i13 != encoded.length; i13++) {
                encoded[i13] = 0;
            }
            return d10;
        }

        public static InterfaceC2379k c(C3661a c3661a, AlgorithmParameterSpec algorithmParameterSpec, int i10, int i11, String str, int i12, int i13) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            Bi.L a10 = a(i10, i11);
            byte[] encoded = c3661a.getEncoded();
            a10.j(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            InterfaceC2379k f10 = i13 != 0 ? a10.f(i12, i13) : a10.e(i12);
            if (str.startsWith("DES")) {
                if (f10 instanceof w0) {
                    d(((C3360o0) ((w0) f10).b()).b());
                } else {
                    d(((C3360o0) f10).b());
                }
            }
            for (int i14 = 0; i14 != encoded.length; i14++) {
                encoded[i14] = 0;
            }
            return f10;
        }

        public static void d(byte[] bArr) {
            for (int i10 = 0; i10 < bArr.length; i10++) {
                byte b10 = bArr[i10];
                bArr[i10] = (byte) ((((b10 >> 7) ^ ((((((b10 >> 1) ^ (b10 >> 2)) ^ (b10 >> 3)) ^ (b10 >> 4)) ^ (b10 >> 5)) ^ (b10 >> 6))) ^ 1) | (b10 & em.l.f85913l));
            }
        }
    }
}
