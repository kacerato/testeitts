package Vj;

import Ii.O;
import ak.C3667g;
import bk.AbstractC3896b;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.util.p;
import org.bouncycastle.util.q;
import org.bouncycastle.util.w;

public class a {

    public static final String f27086a = "Vj.a";

    public static Vj.b f27088c;

    public static final String[][] f27087b = {new String[]{"sun.security.provider.Sun", "sun.security.provider.SecureRandom"}, new String[]{"org.apache.harmony.security.provider.crypto.CryptoProvider", "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"}, new String[]{"com.android.org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLRandom"}, new String[]{"org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLRandom"}};

    public static Thread f27089d = null;

    public class C0753a implements Zi.e {
        @Override
        public Zi.d get(int i10) {
            return new i(a.f27088c, i10);
        }
    }

    public class b implements Zi.e {
        @Override
        public Zi.d get(int i10) {
            return new l(i10);
        }
    }

    public class c implements PrivilegedAction<Boolean> {
        @Override
        public Boolean run() {
            try {
                return Boolean.valueOf(SecureRandom.class.getMethod("getInstanceStrong", null) != null);
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }
    }

    public class d implements PrivilegedAction<SecureRandom> {
        @Override
        public SecureRandom run() {
            try {
                return (SecureRandom) SecureRandom.class.getMethod("getInstanceStrong", null).invoke(null, null);
            } catch (Exception unused) {
                return new g(a.d());
            }
        }
    }

    public class e implements PrivilegedAction<String> {
        @Override
        public String run() {
            return Security.getProperty("securerandom.source");
        }
    }

    public class f implements PrivilegedAction<Zi.e> {

        public final String f27090a;

        public f(String str) {
            this.f27090a = str;
        }

        @Override
        public Zi.e run() {
            try {
                return (Zi.e) C3667g.a(a.class, this.f27090a).newInstance();
            } catch (Exception e10) {
                throw new IllegalStateException("entropy source " + this.f27090a + " not created: " + e10.getMessage(), e10);
            }
        }
    }

    public static class g extends SecureRandom {
        public g(Object[] objArr) {
            super((SecureRandomSpi) objArr[1], (Provider) objArr[0]);
        }
    }

    public static class h extends SecureRandomSpi {

        public static final SecureRandom f27091b = a.g(true);

        @Override
        public byte[] engineGenerateSeed(int i10) {
            return f27091b.generateSeed(i10);
        }

        @Override
        public void engineNextBytes(byte[] bArr) {
            f27091b.nextBytes(bArr);
        }

        @Override
        public void engineSetSeed(byte[] bArr) {
            f27091b.setSeed(bArr);
        }
    }

    public static class i implements Zi.d {

        public final AtomicBoolean f27092a;

        public final AtomicInteger f27093b;

        public final Zi.j f27094c;

        public final b f27095d;

        public final int f27096e;

        public final byte[] f27097f;

        public class C0754a implements Zi.e {
            public C0754a() {
            }

            @Override
            public Zi.d get(int i10) {
                return i.this.f27095d;
            }
        }

        public static class b implements Vj.d {

            public final Vj.b f27099a;

            public final AtomicBoolean f27100b;

            public final Vj.d f27101c;

            public final int f27102d;

            public final AtomicReference f27103e = new AtomicReference();

            public final AtomicBoolean f27104f = new AtomicBoolean(false);

            public b(Vj.b bVar, AtomicBoolean atomicBoolean, Zi.e eVar, int i10) {
                this.f27099a = bVar;
                this.f27100b = atomicBoolean;
                this.f27101c = (Vj.d) eVar.get(i10);
                this.f27102d = (i10 + 7) / 8;
            }

            @Override
            public byte[] a(long j10) throws InterruptedException {
                byte[] bArr = (byte[]) this.f27103e.getAndSet(null);
                if (bArr == null || bArr.length != this.f27102d) {
                    return this.f27101c.a(j10);
                }
                this.f27104f.set(false);
                return bArr;
            }

            @Override
            public byte[] b() {
                try {
                    return a(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("initial entropy fetch interrupted");
                }
            }

            @Override
            public boolean c() {
                return true;
            }

            @Override
            public int d() {
                return this.f27102d * 8;
            }

            public void e() {
                if (this.f27104f.getAndSet(true)) {
                    return;
                }
                this.f27099a.a(new Vj.c(this.f27101c, this.f27100b, this.f27103e));
            }
        }

        public i(Vj.b bVar, int i10) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.f27092a = atomicBoolean;
            this.f27093b = new AtomicInteger(0);
            this.f27097f = p.H(System.currentTimeMillis());
            Zi.e f10 = a.f();
            this.f27096e = (i10 + 7) / 8;
            b bVar2 = new b(bVar, atomicBoolean, f10, 256);
            this.f27095d = bVar2;
            this.f27094c = new Zi.k(new C0754a()).g(w.j("Bouncy Castle Hybrid Entropy Source")).c(new Si.k(new O()), bVar2.b(), false);
        }

        @Override
        public byte[] b() {
            byte[] bArr = new byte[this.f27096e];
            if (this.f27093b.getAndIncrement() > 128) {
                if (this.f27092a.getAndSet(false)) {
                    this.f27093b.set(0);
                    this.f27094c.a(this.f27097f);
                } else {
                    this.f27095d.e();
                }
            }
            this.f27094c.nextBytes(bArr);
            return bArr;
        }

        @Override
        public boolean c() {
            return true;
        }

        @Override
        public int d() {
            return this.f27096e * 8;
        }
    }

    public static class j extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("SecureRandom.DEFAULT", a.f27086a + "$Default");
            aVar.d("SecureRandom.NONCEANDIV", a.f27086a + "$NonceAndIV");
        }
    }

    public static class k extends SecureRandomSpi {

        public static final SecureRandom f27105b = a.g(false);

        @Override
        public byte[] engineGenerateSeed(int i10) {
            return f27105b.generateSeed(i10);
        }

        @Override
        public void engineNextBytes(byte[] bArr) {
            f27105b.nextBytes(bArr);
        }

        @Override
        public void engineSetSeed(byte[] bArr) {
            f27105b.setSeed(bArr);
        }
    }

    public static class l implements Zi.d {

        public final AtomicBoolean f27106a;

        public final AtomicInteger f27107b;

        public final Zi.j f27108c;

        public final b f27109d;

        public final int f27110e;

        public final byte[] f27111f;

        public class C0755a implements Zi.e {
            public C0755a() {
            }

            @Override
            public Zi.d get(int i10) {
                return l.this.f27109d;
            }
        }

        public static class b implements Vj.d {

            public final AtomicBoolean f27113a;

            public final Vj.d f27114b;

            public final int f27115c;

            public final AtomicReference f27116d = new AtomicReference();

            public final AtomicBoolean f27117e = new AtomicBoolean(false);

            public b(AtomicBoolean atomicBoolean, Zi.e eVar, int i10) {
                this.f27113a = atomicBoolean;
                this.f27114b = (Vj.d) eVar.get(i10);
                this.f27115c = (i10 + 7) / 8;
            }

            @Override
            public byte[] a(long j10) throws InterruptedException {
                byte[] bArr = (byte[]) this.f27116d.getAndSet(null);
                if (bArr == null || bArr.length != this.f27115c) {
                    return this.f27114b.a(j10);
                }
                this.f27117e.set(false);
                return bArr;
            }

            @Override
            public byte[] b() {
                try {
                    return a(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("initial entropy fetch interrupted");
                }
            }

            @Override
            public boolean c() {
                return true;
            }

            @Override
            public int d() {
                return this.f27115c * 8;
            }

            public void e() {
                if (this.f27117e.getAndSet(true)) {
                    return;
                }
                Thread thread = new Thread(new Vj.c(this.f27114b, this.f27113a, this.f27116d));
                thread.setDaemon(true);
                thread.start();
            }
        }

        public l(int i10) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.f27106a = atomicBoolean;
            this.f27107b = new AtomicInteger(0);
            this.f27111f = p.H(System.currentTimeMillis());
            Zi.e f10 = a.f();
            this.f27110e = (i10 + 7) / 8;
            b bVar = new b(atomicBoolean, f10, 256);
            this.f27109d = bVar;
            this.f27108c = new Zi.k(new C0755a()).g(w.j("Bouncy Castle Hybrid Entropy Source")).c(new Si.k(new O()), bVar.b(), false);
        }

        @Override
        public byte[] b() {
            byte[] bArr = new byte[this.f27110e];
            if (this.f27107b.getAndIncrement() > 1024) {
                if (this.f27106a.getAndSet(false)) {
                    this.f27107b.set(0);
                    this.f27108c.a(this.f27111f);
                } else {
                    this.f27109d.e();
                }
            }
            this.f27108c.nextBytes(bArr);
            return bArr;
        }

        @Override
        public boolean c() {
            return true;
        }

        @Override
        public int d() {
            return this.f27110e * 8;
        }
    }

    public static class m implements Zi.e {

        public final InputStream f27118a;

        public class C0756a implements PrivilegedAction<InputStream> {

            public final URL f27119a;

            public C0756a(URL url) {
                this.f27119a = url;
            }

            @Override
            public InputStream run() {
                try {
                    return this.f27119a.openStream();
                } catch (IOException unused) {
                    throw new IllegalStateException("unable to open random source");
                }
            }
        }

        public class b implements PrivilegedAction<Integer> {

            public final byte[] f27121a;

            public final int f27122b;

            public final int f27123c;

            public b(byte[] bArr, int i10, int i11) {
                this.f27121a = bArr;
                this.f27122b = i10;
                this.f27123c = i11;
            }

            @Override
            public Integer run() {
                try {
                    return Integer.valueOf(m.this.f27118a.read(this.f27121a, this.f27122b, this.f27123c));
                } catch (IOException unused) {
                    throw new InternalError("unable to read random source");
                }
            }
        }

        public class c implements Vj.d {

            public final int f27125a;

            public final int f27126b;

            public c(int i10) {
                this.f27126b = i10;
                this.f27125a = (i10 + 7) / 8;
            }

            @Override
            public byte[] a(long j10) throws InterruptedException {
                int i10 = this.f27125a;
                byte[] bArr = new byte[i10];
                int i11 = 0;
                while (i11 != i10) {
                    int c10 = m.this.c(bArr, i11, i10 - i11);
                    if (c10 <= -1) {
                        break;
                    }
                    i11 += c10;
                    a.n(j10);
                }
                if (i11 == i10) {
                    return bArr;
                }
                throw new InternalError("unable to fully read random source");
            }

            @Override
            public byte[] b() {
                try {
                    return a(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("initial entropy fetch interrupted");
                }
            }

            @Override
            public boolean c() {
                return true;
            }

            @Override
            public int d() {
                return this.f27126b;
            }
        }

        public m(URL url) {
            this.f27118a = (InputStream) AccessController.doPrivileged(new C0756a(url));
        }

        public final int c(byte[] bArr, int i10, int i11) {
            return ((Integer) AccessController.doPrivileged(new b(bArr, i10, i11))).intValue();
        }

        @Override
        public Zi.d get(int i10) {
            return new c(i10);
        }
    }

    static {
        f27088c = null;
        f27088c = new Vj.b();
    }

    public static Object[] d() {
        return k();
    }

    public static Zi.e f() {
        return h();
    }

    public static SecureRandom g(boolean z10) {
        if (q.d("org.bouncycastle.drbg.entropysource") != null) {
            Zi.e i10 = i();
            Zi.d dVar = i10.get(128);
            byte[] b10 = dVar.b();
            return new Zi.k(i10).g(z10 ? l(b10) : m(b10)).d(new O(), dVar.b(), z10);
        }
        if (!q.f("org.bouncycastle.drbg.entropy_thread")) {
            l lVar = new l(256);
            byte[] b11 = lVar.b();
            return new Zi.k(new b()).g(z10 ? l(b11) : m(b11)).d(new O(), lVar.b(), z10);
        }
        synchronized (f27088c) {
            try {
                if (f27089d == null) {
                    Thread thread = new Thread(f27088c, "BC Entropy Daemon");
                    f27089d = thread;
                    thread.setDaemon(true);
                    f27089d.start();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        i iVar = new i(f27088c, 256);
        byte[] b12 = iVar.b();
        return new Zi.k(new C0753a()).g(z10 ? l(b12) : m(b12)).d(new O(), iVar.b(), z10);
    }

    public static Zi.e h() {
        String str = (String) AccessController.doPrivileged(new e());
        if (str == null) {
            return j();
        }
        try {
            return new m(new URL(str));
        } catch (Exception unused) {
            return j();
        }
    }

    public static Zi.e i() {
        return (Zi.e) AccessController.doPrivileged(new f(q.d("org.bouncycastle.drbg.entropysource")));
    }

    public static Zi.e j() {
        return ((Boolean) AccessController.doPrivileged(new c())).booleanValue() ? new Vj.e((SecureRandom) AccessController.doPrivileged(new d()), true) : new Vj.e(new g(k()), true);
    }

    public static final Object[] k() {
        char c10 = 0;
        int i10 = 0;
        while (true) {
            String[][] strArr = f27087b;
            if (i10 >= strArr.length) {
                return null;
            }
            String[] strArr2 = strArr[i10];
            try {
                return new Object[]{Class.forName(strArr2[c10]).newInstance(), Class.forName(strArr2[1]).newInstance()};
            } catch (Throwable unused) {
                i10++;
            }
        }
    }

    public static byte[] l(byte[] bArr) {
        return org.bouncycastle.util.a.D(w.j("Default"), bArr, p.H(Thread.currentThread().getId()), p.H(System.currentTimeMillis()));
    }

    public static byte[] m(byte[] bArr) {
        return org.bouncycastle.util.a.D(w.j("Nonce"), bArr, p.M(Thread.currentThread().getId()), p.M(System.currentTimeMillis()));
    }

    public static void n(long j10) throws InterruptedException {
        if (j10 != 0) {
            Thread.sleep(j10);
        }
    }
}
