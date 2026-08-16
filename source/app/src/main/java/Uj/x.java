package Uj;

import Bi.C2378j;
import ak.C3664d;
import java.lang.constant.ConstantDescs;

public class x {

    public static class A extends C3664d {
        public A() {
            super("HMACSkein-512-256", 256, new C2378j());
        }
    }

    public static class B extends C3664d {
        public B() {
            super("HMACSkein-512-384", 384, new C2378j());
        }
    }

    public static class C extends C3664d {
        public C() {
            super("HMACSkein-512-512", 512, new C2378j());
        }
    }

    public static class D extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public D() {
            super(new Si.k(new Ii.U(1024, 1024)));
        }
    }

    public static class E extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public E() {
            super(new Si.k(new Ii.U(1024, 384)));
        }
    }

    public static class F extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public F() {
            super(new Si.k(new Ii.U(1024, 512)));
        }
    }

    public static class G extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public G() {
            super(new Si.k(new Ii.U(256, 128)));
        }
    }

    public static class H extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public H() {
            super(new Si.k(new Ii.U(256, 160)));
        }
    }

    public static class I extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public I() {
            super(new Si.k(new Ii.U(256, 224)));
        }
    }

    public static class J extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public J() {
            super(new Si.k(new Ii.U(256, 256)));
        }
    }

    public static class K extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public K() {
            super(new Si.k(new Ii.U(512, 128)));
        }
    }

    public static class L extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public L() {
            super(new Si.k(new Ii.U(512, 160)));
        }
    }

    public static class M extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public M() {
            super(new Si.k(new Ii.U(512, 224)));
        }
    }

    public static class N extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public N() {
            super(new Si.k(new Ii.U(512, 256)));
        }
    }

    public static class O extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public O() {
            super(new Si.k(new Ii.U(512, 384)));
        }
    }

    public static class P extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public P() {
            super(new Si.k(new Ii.U(512, 512)));
        }
    }

    public static class Q extends f {

        public static final String f26225a = x.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f26225a;
            sb2.append(str);
            sb2.append("$Digest_256_128");
            aVar.d("MessageDigest.Skein-256-128", sb2.toString());
            aVar.d("MessageDigest.Skein-256-160", str + "$Digest_256_160");
            aVar.d("MessageDigest.Skein-256-224", str + "$Digest_256_224");
            aVar.d("MessageDigest.Skein-256-256", str + "$Digest_256_256");
            aVar.d("MessageDigest.Skein-512-128", str + "$Digest_512_128");
            aVar.d("MessageDigest.Skein-512-160", str + "$Digest_512_160");
            aVar.d("MessageDigest.Skein-512-224", str + "$Digest_512_224");
            aVar.d("MessageDigest.Skein-512-256", str + "$Digest_512_256");
            aVar.d("MessageDigest.Skein-512-384", str + "$Digest_512_384");
            aVar.d("MessageDigest.Skein-512-512", str + "$Digest_512_512");
            aVar.d("MessageDigest.Skein-1024-384", str + "$Digest_1024_384");
            aVar.d("MessageDigest.Skein-1024-512", str + "$Digest_1024_512");
            aVar.d("MessageDigest.Skein-1024-1024", str + "$Digest_1024_1024");
            b(aVar, "Skein-256-128", str + "$HashMac_256_128", str + "$HMacKeyGenerator_256_128");
            b(aVar, "Skein-256-160", str + "$HashMac_256_160", str + "$HMacKeyGenerator_256_160");
            b(aVar, "Skein-256-224", str + "$HashMac_256_224", str + "$HMacKeyGenerator_256_224");
            b(aVar, "Skein-256-256", str + "$HashMac_256_256", str + "$HMacKeyGenerator_256_256");
            b(aVar, "Skein-512-128", str + "$HashMac_512_128", str + "$HMacKeyGenerator_512_128");
            b(aVar, "Skein-512-160", str + "$HashMac_512_160", str + "$HMacKeyGenerator_512_160");
            b(aVar, "Skein-512-224", str + "$HashMac_512_224", str + "$HMacKeyGenerator_512_224");
            b(aVar, "Skein-512-256", str + "$HashMac_512_256", str + "$HMacKeyGenerator_512_256");
            b(aVar, "Skein-512-384", str + "$HashMac_512_384", str + "$HMacKeyGenerator_512_384");
            b(aVar, "Skein-512-512", str + "$HashMac_512_512", str + "$HMacKeyGenerator_512_512");
            b(aVar, "Skein-1024-384", str + "$HashMac_1024_384", str + "$HMacKeyGenerator_1024_384");
            b(aVar, "Skein-1024-512", str + "$HashMac_1024_512", str + "$HMacKeyGenerator_1024_512");
            b(aVar, "Skein-1024-1024", str + "$HashMac_1024_1024", str + "$HMacKeyGenerator_1024_1024");
            e(aVar, 256, 128);
            e(aVar, 256, 160);
            e(aVar, 256, 224);
            e(aVar, 256, 256);
            e(aVar, 512, 128);
            e(aVar, 512, 160);
            e(aVar, 512, 224);
            e(aVar, 512, 256);
            e(aVar, 512, 384);
            e(aVar, 512, 512);
            e(aVar, 1024, 384);
            e(aVar, 1024, 512);
            e(aVar, 1024, 1024);
        }

        public final void e(Tj.a aVar, int i10, int i11) {
            String str = "Skein-MAC-" + i10 + "-" + i11;
            StringBuilder sb2 = new StringBuilder();
            String str2 = f26225a;
            sb2.append(str2);
            sb2.append("$SkeinMac_");
            sb2.append(i10);
            sb2.append(ConstantDescs.DEFAULT_NAME);
            sb2.append(i11);
            String sb3 = sb2.toString();
            String str3 = str2 + "$SkeinMacKeyGenerator_" + i10 + ConstantDescs.DEFAULT_NAME + i11;
            aVar.d("Mac." + str, sb3);
            aVar.d("Alg.Alias.Mac.Skein-MAC" + i10 + "/" + i11, str);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("KeyGenerator.");
            sb4.append(str);
            aVar.d(sb4.toString(), str3);
            aVar.d("Alg.Alias.KeyGenerator.Skein-MAC" + i10 + "/" + i11, str);
        }
    }

    public static class R extends C3664d {
        public R() {
            super("Skein-MAC-1024-1024", 1024, new C2378j());
        }
    }

    public static class S extends C3664d {
        public S() {
            super("Skein-MAC-1024-384", 384, new C2378j());
        }
    }

    public static class T extends C3664d {
        public T() {
            super("Skein-MAC-1024-512", 512, new C2378j());
        }
    }

    public static class U extends C3664d {
        public U() {
            super("Skein-MAC-256-128", 128, new C2378j());
        }
    }

    public static class V extends C3664d {
        public V() {
            super("Skein-MAC-256-160", 160, new C2378j());
        }
    }

    public static class W extends C3664d {
        public W() {
            super("Skein-MAC-256-224", 224, new C2378j());
        }
    }

    public static class X extends C3664d {
        public X() {
            super("Skein-MAC-256-256", 256, new C2378j());
        }
    }

    public static class Y extends C3664d {
        public Y() {
            super("Skein-MAC-512-128", 128, new C2378j());
        }
    }

    public static class Z extends C3664d {
        public Z() {
            super("Skein-MAC-512-160", 160, new C2378j());
        }
    }

    public static class C3127a extends a implements Cloneable {
        public C3127a(int i10) {
            super(new Ii.U(1024, i10));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new Ii.U((Ii.U) this.f26202b);
            return aVar;
        }
    }

    public static class a0 extends C3664d {
        public a0() {
            super("Skein-MAC-512-224", 224, new C2378j());
        }
    }

    public static class C3128b extends a implements Cloneable {
        public C3128b(int i10) {
            super(new Ii.U(256, i10));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new Ii.U((Ii.U) this.f26202b);
            return aVar;
        }
    }

    public static class b0 extends C3664d {
        public b0() {
            super("Skein-MAC-512-256", 256, new C2378j());
        }
    }

    public static class C3129c extends a implements Cloneable {
        public C3129c(int i10) {
            super(new Ii.U(512, i10));
        }

        @Override
        public Object clone() throws CloneNotSupportedException {
            a aVar = (a) super.clone();
            aVar.f26202b = new Ii.U((Ii.U) this.f26202b);
            return aVar;
        }
    }

    public static class c0 extends C3664d {
        public c0() {
            super("Skein-MAC-512-384", 384, new C2378j());
        }
    }

    public static class C3130d extends C3127a {
        public C3130d() {
            super(1024);
        }
    }

    public static class d0 extends C3664d {
        public d0() {
            super("Skein-MAC-512-512", 512, new C2378j());
        }
    }

    public static class C3131e extends C3127a {
        public C3131e() {
            super(384);
        }
    }

    public static class e0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public e0() {
            super(new Si.t(1024, 1024));
        }
    }

    public static class C3132f extends C3127a {
        public C3132f() {
            super(512);
        }
    }

    public static class f0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public f0() {
            super(new Si.t(1024, 384));
        }
    }

    public static class C3133g extends C3128b {
        public C3133g() {
            super(128);
        }
    }

    public static class g0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public g0() {
            super(new Si.t(1024, 512));
        }
    }

    public static class C3134h extends C3128b {
        public C3134h() {
            super(160);
        }
    }

    public static class h0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public h0() {
            super(new Si.t(256, 128));
        }
    }

    public static class C3135i extends C3128b {
        public C3135i() {
            super(224);
        }
    }

    public static class i0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public i0() {
            super(new Si.t(256, 160));
        }
    }

    public static class C3136j extends C3128b {
        public C3136j() {
            super(256);
        }
    }

    public static class j0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public j0() {
            super(new Si.t(256, 224));
        }
    }

    public static class C3137k extends C3129c {
        public C3137k() {
            super(128);
        }
    }

    public static class k0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public k0() {
            super(new Si.t(256, 256));
        }
    }

    public static class C3138l extends C3129c {
        public C3138l() {
            super(160);
        }
    }

    public static class l0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public l0() {
            super(new Si.t(512, 128));
        }
    }

    public static class C3139m extends C3129c {
        public C3139m() {
            super(224);
        }
    }

    public static class m0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public m0() {
            super(new Si.t(512, 160));
        }
    }

    public static class C3140n extends C3129c {
        public C3140n() {
            super(256);
        }
    }

    public static class n0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public n0() {
            super(new Si.t(512, 224));
        }
    }

    public static class C3141o extends C3129c {
        public C3141o() {
            super(384);
        }
    }

    public static class o0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public o0() {
            super(new Si.t(512, 256));
        }
    }

    public static class C3142p extends C3129c {
        public C3142p() {
            super(512);
        }
    }

    public static class p0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public p0() {
            super(new Si.t(512, 384));
        }
    }

    public static class C3143q extends C3664d {
        public C3143q() {
            super("HMACSkein-1024-1024", 1024, new C2378j());
        }
    }

    public static class q0 extends org.bouncycastle.jcajce.provider.symmetric.util.b {
        public q0() {
            super(new Si.t(512, 512));
        }
    }

    public static class C3144r extends C3664d {
        public C3144r() {
            super("HMACSkein-1024-384", 384, new C2378j());
        }
    }

    public static class C3145s extends C3664d {
        public C3145s() {
            super("HMACSkein-1024-512", 512, new C2378j());
        }
    }

    public static class C3146t extends C3664d {
        public C3146t() {
            super("HMACSkein-256-128", 128, new C2378j());
        }
    }

    public static class C3147u extends C3664d {
        public C3147u() {
            super("HMACSkein-256-160", 160, new C2378j());
        }
    }

    public static class C3148v extends C3664d {
        public C3148v() {
            super("HMACSkein-256-224", 224, new C2378j());
        }
    }

    public static class C3149w extends C3664d {
        public C3149w() {
            super("HMACSkein-256-256", 256, new C2378j());
        }
    }

    public static class C0725x extends C3664d {
        public C0725x() {
            super("HMACSkein-512-128", 128, new C2378j());
        }
    }

    public static class C3150y extends C3664d {
        public C3150y() {
            super("HMACSkein-512-160", 160, new C2378j());
        }
    }

    public static class C3151z extends C3664d {
        public C3151z() {
            super("HMACSkein-512-224", 224, new C2378j());
        }
    }
}
