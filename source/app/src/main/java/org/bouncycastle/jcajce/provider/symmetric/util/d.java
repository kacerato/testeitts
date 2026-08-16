package org.bouncycastle.jcajce.provider.symmetric.util;

import Bi.EnumC2383o;
import Bi.InterfaceC2379k;
import Bi.L;
import Ii.C2654l;
import Ii.C2665x;
import Ii.S;
import Ii.X;
import Oi.G;
import Oi.H;
import Oi.I;
import Oi.J;
import Xi.C3351k;
import Xi.C3360o0;
import Xi.w0;
import ak.C3661a;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.crypto.util.g;

public interface d {

    public static final int f101486R7 = 0;

    public static final int f101487S7 = 1;

    public static final int f101488T7 = 2;

    public static final int f101489U7 = 3;

    public static final int f101490V7 = 4;

    public static final int f101491W7 = 5;

    public static final int f101492X7 = 6;

    public static final int f101493Y7 = 7;

    public static final int f101494Z7 = 8;

    public static final int f101495a8 = 9;

    public static final int f101496b8 = 10;

    public static final int f101497c8 = 11;

    public static final int f101498d8 = 12;

    public static final int f101499e8 = 13;

    public static final int f101500f8 = 14;

    public static final int f101501g8 = 0;

    public static final int f101502h8 = 1;

    public static final int f101503i8 = 2;

    public static final int f101504j8 = 3;

    public static final int f101505k8 = 4;

    public static final int f101506l8 = 5;

    public static class a {
        public static byte[] a(int i10, PBEKeySpec pBEKeySpec) {
            return i10 == 2 ? L.a(pBEKeySpec.getPassword()) : (i10 == 5 || i10 == 4) ? L.c(pBEKeySpec.getPassword()) : L.b(pBEKeySpec.getPassword());
        }

        public static L b(int i10, int i11) {
            if (i10 == 0 || i10 == 4) {
                if (i11 == 0) {
                    return new I(g.b());
                }
                if (i11 == 1) {
                    return new I(g.d());
                }
                if (i11 == 5) {
                    return new I(new C2665x());
                }
                throw new IllegalStateException("PKCS5 scheme 1 only supports MD2, MD5 and SHA1.");
            }
            if (i10 != 1 && i10 != 5) {
                if (i10 != 2) {
                    return new G();
                }
                switch (i11) {
                    case 0:
                        return new H(g.c());
                    case 1:
                        return new H(g.e());
                    case 2:
                        return new H(new Ii.G(EnumC2383o.PRF));
                    case 3:
                        return new H(new X(EnumC2383o.PRF));
                    case 4:
                        return new H(g.i());
                    case 5:
                        return new H(new C2665x(EnumC2383o.PRF));
                    case 6:
                        return new H(new C2654l(EnumC2383o.PRF));
                    case 7:
                        return new H(g.g());
                    case 8:
                        return new H(g.k());
                    case 9:
                        return new H(g.u());
                    default:
                        throw new IllegalStateException("unknown digest scheme for PBE encryption.");
                }
            }
            switch (i11) {
                case 0:
                    return new J(g.c());
                case 1:
                    return new J(g.e());
                case 2:
                    return new J(new Ii.G(EnumC2383o.PRF));
                case 3:
                    return new J(new X(EnumC2383o.PRF));
                case 4:
                    return new J(g.i());
                case 5:
                    return new J(new C2665x(EnumC2383o.PRF));
                case 6:
                    return new J(new C2654l(EnumC2383o.PRF));
                case 7:
                    return new J(g.g());
                case 8:
                    return new J(g.k());
                case 9:
                    return new J(g.u());
                case 10:
                    return new J(g.m());
                case 11:
                    return new J(g.o());
                case 12:
                    return new J(g.q());
                case 13:
                    return new J(g.s());
                case 14:
                    return new J(new S(EnumC2383o.PRF));
                default:
                    throw new IllegalStateException("unknown digest scheme for PBE PKCS5S2 encryption.");
            }
        }

        public static InterfaceC2379k c(C3661a c3661a, AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            L b10 = b(c3661a.i(), c3661a.b());
            b10.j(c3661a.getEncoded(), pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            return b10.d(c3661a.d());
        }

        public static InterfaceC2379k d(SecretKey secretKey, int i10, int i11, int i12, PBEParameterSpec pBEParameterSpec) {
            L b10 = b(i10, i11);
            byte[] encoded = secretKey.getEncoded();
            b10.j(secretKey.getEncoded(), pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            InterfaceC2379k d10 = b10.d(i12);
            for (int i13 = 0; i13 != encoded.length; i13++) {
                encoded[i13] = 0;
            }
            return d10;
        }

        public static InterfaceC2379k e(PBEKeySpec pBEKeySpec, int i10, int i11, int i12) {
            L b10 = b(i10, i11);
            byte[] a10 = a(i10, pBEKeySpec);
            b10.j(a10, pBEKeySpec.getSalt(), pBEKeySpec.getIterationCount());
            InterfaceC2379k d10 = b10.d(i12);
            for (int i13 = 0; i13 != a10.length; i13++) {
                a10[i13] = 0;
            }
            return d10;
        }

        public static InterfaceC2379k f(C3661a c3661a, AlgorithmParameterSpec algorithmParameterSpec, String str) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            L b10 = b(c3661a.i(), c3661a.b());
            byte[] encoded = c3661a.getEncoded();
            if (c3661a.k()) {
                encoded = new byte[2];
            }
            b10.j(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            InterfaceC2379k f10 = c3661a.c() != 0 ? b10.f(c3661a.d(), c3661a.c()) : b10.e(c3661a.d());
            if (str.startsWith("DES")) {
                if (f10 instanceof w0) {
                    C3351k.f(((C3360o0) ((w0) f10).b()).b());
                } else {
                    C3351k.f(((C3360o0) f10).b());
                }
            }
            return f10;
        }

        public static InterfaceC2379k g(PBEKeySpec pBEKeySpec, int i10, int i11, int i12, int i13) {
            L b10 = b(i10, i11);
            byte[] a10 = a(i10, pBEKeySpec);
            b10.j(a10, pBEKeySpec.getSalt(), pBEKeySpec.getIterationCount());
            InterfaceC2379k f10 = i13 != 0 ? b10.f(i12, i13) : b10.e(i12);
            for (int i14 = 0; i14 != a10.length; i14++) {
                a10[i14] = 0;
            }
            return f10;
        }

        public static InterfaceC2379k h(byte[] bArr, int i10, int i11, int i12, int i13, AlgorithmParameterSpec algorithmParameterSpec, String str) throws InvalidAlgorithmParameterException {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidAlgorithmParameterException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            L b10 = b(i10, i11);
            b10.j(bArr, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            InterfaceC2379k f10 = i13 != 0 ? b10.f(i12, i13) : b10.e(i12);
            if (str.startsWith("DES")) {
                if (f10 instanceof w0) {
                    C3351k.f(((C3360o0) ((w0) f10).b()).b());
                } else {
                    C3351k.f(((C3360o0) f10).b());
                }
            }
            return f10;
        }
    }
}
