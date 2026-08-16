package Lj;

import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import yj.InterfaceC16198c;

public abstract class a {

    public static final C14549x[] f14362a;

    public static final HashMap<EnumC0400a, C14549x> f14363b;

    public static final HashMap<C14549x, EnumC0400a> f14364c;

    public static final HashMap<C14549x, EnumC0400a> f14365d;

    public enum EnumC0400a {
        MLDSA44_RSA2048_PSS_SHA256("MLDSA44-RSA2048-PSS-SHA256"),
        MLDSA44_RSA2048_PKCS15_SHA256("MLDSA44-RSA2048-PKCS15-SHA256"),
        MLDSA44_Ed25519_SHA512("MLDSA44-Ed25519-SHA512"),
        MLDSA44_ECDSA_P256_SHA256("MLDSA44-ECDSA-P256-SHA256"),
        MLDSA44_ECDSA_brainpoolP256r1_SHA256("MLDSA44-ECDSA-brainpoolP256r1-SHA256"),
        MLDSA65_RSA3072_PSS_SHA512("MLDSA65-RSA3072-PSS-SHA512"),
        MLDSA65_RSA3072_PKCS15_SHA512("MLDSA65-RSA3072-PKCS15-SHA512"),
        MLDSA65_ECDSA_brainpoolP256r1_SHA512("MLDSA65-ECDSA-brainpoolP256r1-SHA512"),
        MLDSA65_ECDSA_P256_SHA512("MLDSA65-ECDSA-P256-SHA512"),
        MLDSA65_Ed25519_SHA512("MLDSA65-Ed25519-SHA512"),
        MLDSA87_ECDSA_P384_SHA512("MLDSA87-ECDSA-P384-SHA512"),
        MLDSA87_ECDSA_brainpoolP384r1_SHA512("MLDSA87-ECDSA-brainpoolP384r1-SHA512"),
        MLDSA87_Ed448_SHA512("MLDSA87-Ed448-SHA512"),
        Falcon512_ECDSA_P256_SHA256("Falcon512-ECDSA-P256-SHA256"),
        Falcon512_ECDSA_brainpoolP256r1_SHA256("Falcon512-ECDSA-brainpoolP256r1-SHA256"),
        Falcon512_Ed25519_SHA512("Falcon512-Ed25519-SHA512");


        private final String f14366id;

        EnumC0400a(String str) {
            this.f14366id = str;
        }

        public String b() {
            return this.f14366id;
        }
    }

    static {
        C14549x c14549x = InterfaceC16198c.f130358T;
        C14549x c14549x2 = InterfaceC16198c.f130359U;
        C14549x c14549x3 = InterfaceC16198c.f130360V;
        C14549x c14549x4 = InterfaceC16198c.f130361W;
        C14549x c14549x5 = InterfaceC16198c.f130362X;
        C14549x c14549x6 = InterfaceC16198c.f130363Y;
        C14549x c14549x7 = InterfaceC16198c.f130364Z;
        C14549x c14549x8 = InterfaceC16198c.f130366a0;
        C14549x c14549x9 = InterfaceC16198c.f130368b0;
        C14549x c14549x10 = InterfaceC16198c.f130370c0;
        C14549x c14549x11 = InterfaceC16198c.f130372d0;
        C14549x c14549x12 = InterfaceC16198c.f130374e0;
        C14549x c14549x13 = InterfaceC16198c.f130376f0;
        C14549x c14549x14 = InterfaceC16198c.f130378g0;
        C14549x c14549x15 = InterfaceC16198c.f130380h0;
        C14549x c14549x16 = InterfaceC16198c.f130382i0;
        f14362a = new C14549x[]{c14549x, c14549x2, c14549x3, c14549x4, c14549x5, c14549x6, c14549x7, c14549x8, c14549x9, c14549x10, c14549x11, c14549x12, c14549x13, c14549x14, c14549x15, c14549x16};
        HashMap<EnumC0400a, C14549x> hashMap = new HashMap<>();
        f14363b = hashMap;
        hashMap.put(EnumC0400a.MLDSA44_RSA2048_PSS_SHA256, c14549x);
        hashMap.put(EnumC0400a.MLDSA44_RSA2048_PKCS15_SHA256, c14549x2);
        hashMap.put(EnumC0400a.MLDSA44_ECDSA_P256_SHA256, c14549x4);
        hashMap.put(EnumC0400a.MLDSA44_ECDSA_brainpoolP256r1_SHA256, c14549x5);
        hashMap.put(EnumC0400a.MLDSA44_Ed25519_SHA512, c14549x3);
        hashMap.put(EnumC0400a.MLDSA65_RSA3072_PSS_SHA512, c14549x6);
        hashMap.put(EnumC0400a.MLDSA65_RSA3072_PKCS15_SHA512, c14549x7);
        hashMap.put(EnumC0400a.MLDSA65_ECDSA_P256_SHA512, c14549x8);
        hashMap.put(EnumC0400a.MLDSA65_ECDSA_brainpoolP256r1_SHA512, c14549x9);
        hashMap.put(EnumC0400a.MLDSA65_Ed25519_SHA512, c14549x10);
        hashMap.put(EnumC0400a.MLDSA87_ECDSA_P384_SHA512, c14549x11);
        hashMap.put(EnumC0400a.MLDSA87_ECDSA_brainpoolP384r1_SHA512, c14549x12);
        hashMap.put(EnumC0400a.MLDSA87_Ed448_SHA512, c14549x13);
        hashMap.put(EnumC0400a.Falcon512_ECDSA_P256_SHA256, c14549x14);
        hashMap.put(EnumC0400a.Falcon512_ECDSA_brainpoolP256r1_SHA256, c14549x15);
        hashMap.put(EnumC0400a.Falcon512_Ed25519_SHA512, c14549x16);
        f14364c = new HashMap<>();
        for (Map.Entry<EnumC0400a, C14549x> entry : hashMap.entrySet()) {
            f14364c.put(entry.getValue(), entry.getKey());
        }
        f14365d = new HashMap<>();
        for (C14549x c14549x17 : f14362a) {
            f14365d.put(c14549x17, f14364c.get(c14549x17));
        }
    }
}
