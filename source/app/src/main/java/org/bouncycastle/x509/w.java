package org.bouncycastle.x509;

import Xh.B;
import bi.InterfaceC3890b;
import hi.C13486b;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.A0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import yh.InterfaceC16192a;

public class w {

    public static Hashtable f102431a = new Hashtable();

    public static Hashtable f102432b = new Hashtable();

    public static Set f102433c = new HashSet();

    public static class a {

        public Object f102434a;

        public Provider f102435b;

        public a(Object obj, Provider provider) {
            this.f102434a = obj;
            this.f102435b = provider;
        }

        public Object a() {
            return this.f102434a;
        }

        public Provider b() {
            return this.f102435b;
        }
    }

    static {
        Hashtable hashtable = f102431a;
        C14549x c14549x = Xh.t.f29018I0;
        hashtable.put("MD2WITHRSAENCRYPTION", c14549x);
        f102431a.put("MD2WITHRSA", c14549x);
        Hashtable hashtable2 = f102431a;
        C14549x c14549x2 = Xh.t.f29026K0;
        hashtable2.put("MD5WITHRSAENCRYPTION", c14549x2);
        f102431a.put("MD5WITHRSA", c14549x2);
        Hashtable hashtable3 = f102431a;
        C14549x c14549x3 = Xh.t.f29030L0;
        hashtable3.put("SHA1WITHRSAENCRYPTION", c14549x3);
        f102431a.put("SHA1WITHRSA", c14549x3);
        Hashtable hashtable4 = f102431a;
        C14549x c14549x4 = Xh.t.f29059U0;
        hashtable4.put("SHA224WITHRSAENCRYPTION", c14549x4);
        f102431a.put("SHA224WITHRSA", c14549x4);
        Hashtable hashtable5 = f102431a;
        C14549x c14549x5 = Xh.t.f29049R0;
        hashtable5.put("SHA256WITHRSAENCRYPTION", c14549x5);
        f102431a.put("SHA256WITHRSA", c14549x5);
        Hashtable hashtable6 = f102431a;
        C14549x c14549x6 = Xh.t.f29051S0;
        hashtable6.put("SHA384WITHRSAENCRYPTION", c14549x6);
        f102431a.put("SHA384WITHRSA", c14549x6);
        Hashtable hashtable7 = f102431a;
        C14549x c14549x7 = Xh.t.f29055T0;
        hashtable7.put("SHA512WITHRSAENCRYPTION", c14549x7);
        f102431a.put("SHA512WITHRSA", c14549x7);
        Hashtable hashtable8 = f102431a;
        C14549x c14549x8 = Xh.t.f29045Q0;
        hashtable8.put("SHA1WITHRSAANDMGF1", c14549x8);
        f102431a.put("SHA224WITHRSAANDMGF1", c14549x8);
        f102431a.put("SHA256WITHRSAANDMGF1", c14549x8);
        f102431a.put("SHA384WITHRSAANDMGF1", c14549x8);
        f102431a.put("SHA512WITHRSAANDMGF1", c14549x8);
        Hashtable hashtable9 = f102431a;
        C14549x c14549x9 = InterfaceC3890b.f33240f;
        hashtable9.put("RIPEMD160WITHRSAENCRYPTION", c14549x9);
        f102431a.put("RIPEMD160WITHRSA", c14549x9);
        Hashtable hashtable10 = f102431a;
        C14549x c14549x10 = InterfaceC3890b.f33241g;
        hashtable10.put("RIPEMD128WITHRSAENCRYPTION", c14549x10);
        f102431a.put("RIPEMD128WITHRSA", c14549x10);
        Hashtable hashtable11 = f102431a;
        C14549x c14549x11 = InterfaceC3890b.f33242h;
        hashtable11.put("RIPEMD256WITHRSAENCRYPTION", c14549x11);
        f102431a.put("RIPEMD256WITHRSA", c14549x11);
        Hashtable hashtable12 = f102431a;
        C14549x c14549x12 = ki.r.f95350t6;
        hashtable12.put("SHA1WITHDSA", c14549x12);
        f102431a.put("DSAWITHSHA1", c14549x12);
        Hashtable hashtable13 = f102431a;
        C14549x c14549x13 = Sh.d.f23334a0;
        hashtable13.put("SHA224WITHDSA", c14549x13);
        Hashtable hashtable14 = f102431a;
        C14549x c14549x14 = Sh.d.f23336b0;
        hashtable14.put("SHA256WITHDSA", c14549x14);
        Hashtable hashtable15 = f102431a;
        C14549x c14549x15 = Sh.d.f23338c0;
        hashtable15.put("SHA384WITHDSA", c14549x15);
        Hashtable hashtable16 = f102431a;
        C14549x c14549x16 = Sh.d.f23340d0;
        hashtable16.put("SHA512WITHDSA", c14549x16);
        Hashtable hashtable17 = f102431a;
        C14549x c14549x17 = ki.r.f95301E5;
        hashtable17.put("SHA1WITHECDSA", c14549x17);
        f102431a.put("ECDSAWITHSHA1", c14549x17);
        Hashtable hashtable18 = f102431a;
        C14549x c14549x18 = ki.r.f95309K5;
        hashtable18.put("SHA224WITHECDSA", c14549x18);
        Hashtable hashtable19 = f102431a;
        C14549x c14549x19 = ki.r.f95311L5;
        hashtable19.put("SHA256WITHECDSA", c14549x19);
        Hashtable hashtable20 = f102431a;
        C14549x c14549x20 = ki.r.f95313M5;
        hashtable20.put("SHA384WITHECDSA", c14549x20);
        Hashtable hashtable21 = f102431a;
        C14549x c14549x21 = ki.r.f95315N5;
        hashtable21.put("SHA512WITHECDSA", c14549x21);
        Hashtable hashtable22 = f102431a;
        C14549x c14549x22 = InterfaceC16192a.f130282n;
        hashtable22.put("GOST3411WITHGOST3410", c14549x22);
        f102431a.put("GOST3411WITHGOST3410-94", c14549x22);
        Hashtable hashtable23 = f102431a;
        C14549x c14549x23 = InterfaceC16192a.f130283o;
        hashtable23.put("GOST3411WITHECGOST3410", c14549x23);
        f102431a.put("GOST3411WITHECGOST3410-2001", c14549x23);
        f102431a.put("GOST3411WITHGOST3410-2001", c14549x23);
        f102433c.add(c14549x17);
        f102433c.add(c14549x18);
        f102433c.add(c14549x19);
        f102433c.add(c14549x20);
        f102433c.add(c14549x21);
        f102433c.add(c14549x12);
        f102433c.add(Bj.b.f1912j);
        f102433c.add(c14549x13);
        f102433c.add(c14549x14);
        f102433c.add(c14549x15);
        f102433c.add(c14549x16);
        f102433c.add(c14549x22);
        f102433c.add(c14549x23);
        C14549x c14549x24 = Bj.b.f1911i;
        A0 a02 = A0.f98776c;
        f102432b.put("SHA1WITHRSAANDMGF1", d(new C13486b(c14549x24, a02), 20));
        f102432b.put("SHA224WITHRSAANDMGF1", d(new C13486b(Sh.d.f23343f, a02), 28));
        f102432b.put("SHA256WITHRSAANDMGF1", d(new C13486b(Sh.d.f23337c, a02), 32));
        f102432b.put("SHA384WITHRSAANDMGF1", d(new C13486b(Sh.d.f23339d, a02), 48));
        f102432b.put("SHA512WITHRSAANDMGF1", d(new C13486b(Sh.d.f23341e, a02), 64));
    }

    public static byte[] a(C14549x c14549x, String str, String str2, PrivateKey privateKey, SecureRandom secureRandom, InterfaceC14516g interfaceC14516g) throws IOException, NoSuchProviderException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        if (c14549x == null) {
            throw new IllegalStateException("no signature algorithm specified");
        }
        Signature l10 = l(str, str2);
        if (secureRandom != null) {
            l10.initSign(privateKey, secureRandom);
        } else {
            l10.initSign(privateKey);
        }
        l10.update(interfaceC14516g.r().s(InterfaceC14520i.f98892a));
        return l10.sign();
    }

    public static byte[] b(C14549x c14549x, String str, PrivateKey privateKey, SecureRandom secureRandom, InterfaceC14516g interfaceC14516g) throws IOException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        if (c14549x == null) {
            throw new IllegalStateException("no signature algorithm specified");
        }
        Signature k10 = k(str);
        if (secureRandom != null) {
            k10.initSign(privateKey, secureRandom);
        } else {
            k10.initSign(privateKey);
        }
        k10.update(interfaceC14516g.r().s(InterfaceC14520i.f98892a));
        return k10.sign();
    }

    public static org.bouncycastle.jce.j c(X500Principal x500Principal) {
        try {
            return new org.bouncycastle.jce.j(x500Principal.getEncoded());
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot convert principal");
        }
    }

    public static B d(C13486b c13486b, int i10) {
        return new B(c13486b, new C13486b(Xh.t.f29037O0, c13486b), new C14539s(i10), new C14539s(1L));
    }

    public static Iterator e() {
        Enumeration keys = f102431a.keys();
        ArrayList arrayList = new ArrayList();
        while (keys.hasMoreElements()) {
            arrayList.add(keys.nextElement());
        }
        return arrayList.iterator();
    }

    public static C14549x f(String str) {
        String p10 = org.bouncycastle.util.w.p(str);
        return f102431a.containsKey(p10) ? (C14549x) f102431a.get(p10) : new C14549x(p10);
    }

    public static a g(String str, String str2) throws NoSuchAlgorithmException {
        Provider[] providers = Security.getProviders();
        for (int i10 = 0; i10 != providers.length; i10++) {
            a h10 = h(str, org.bouncycastle.util.w.p(str2), providers[i10]);
            if (h10 != null) {
                return h10;
            }
            try {
                h(str, str2, providers[i10]);
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        throw new NoSuchAlgorithmException("cannot find implementation " + str2);
    }

    public static a h(String str, String str2, Provider provider) throws NoSuchAlgorithmException {
        String p10 = org.bouncycastle.util.w.p(str2);
        while (true) {
            String property = provider.getProperty("Alg.Alias." + str + "." + p10);
            if (property == null) {
                break;
            }
            p10 = property;
        }
        String property2 = provider.getProperty(str + "." + p10);
        if (property2 == null) {
            throw new NoSuchAlgorithmException("cannot find implementation " + p10 + " for provider " + provider.getName());
        }
        try {
            ClassLoader classLoader = provider.getClass().getClassLoader();
            return new a((classLoader != null ? classLoader.loadClass(property2) : Class.forName(property2)).newInstance(), provider);
        } catch (ClassNotFoundException unused) {
            throw new IllegalStateException("algorithm " + p10 + " in provider " + provider.getName() + " but no class \"" + property2 + "\" found!");
        } catch (Exception unused2) {
            throw new IllegalStateException("algorithm " + p10 + " in provider " + provider.getName() + " but class \"" + property2 + "\" inaccessible!");
        }
    }

    public static Provider i(String str) throws NoSuchProviderException {
        Provider provider = Security.getProvider(str);
        if (provider != null) {
            return provider;
        }
        throw new NoSuchProviderException("Provider " + str + " not found");
    }

    public static C13486b j(C14549x c14549x, String str) {
        if (f102433c.contains(c14549x)) {
            return new C13486b(c14549x);
        }
        String p10 = org.bouncycastle.util.w.p(str);
        return f102432b.containsKey(p10) ? new C13486b(c14549x, (InterfaceC14516g) f102432b.get(p10)) : new C13486b(c14549x, A0.f98776c);
    }

    public static Signature k(String str) throws NoSuchAlgorithmException {
        return Signature.getInstance(str);
    }

    public static Signature l(String str, String str2) throws NoSuchProviderException, NoSuchAlgorithmException {
        return str2 != null ? Signature.getInstance(str, str2) : Signature.getInstance(str);
    }
}
