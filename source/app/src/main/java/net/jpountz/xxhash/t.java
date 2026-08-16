package net.jpountz.xxhash;

import java.io.PrintStream;
import java.util.Random;
import net.jpountz.xxhash.c;
import net.jpountz.xxhash.g;

public final class t {

    public static t f98148f;

    public static t f98149g;

    public static t f98150h;

    public final String f98151a;

    public final k f98152b;

    public final o f98153c;

    public final c.b f98154d;

    public final g.b f98155e;

    public t(String str) throws ClassNotFoundException, NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {
        this.f98151a = str;
        k kVar = (k) a("net.jpountz.xxhash.XXHash32" + str);
        this.f98152b = kVar;
        this.f98154d = (c.b) a("net.jpountz.xxhash.StreamingXXHash32" + str + "$Factory");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("net.jpountz.xxhash.XXHash64");
        sb2.append(str);
        o oVar = (o) a(sb2.toString());
        this.f98153c = oVar;
        this.f98155e = (g.b) a("net.jpountz.xxhash.StreamingXXHash64" + str + "$Factory");
        byte[] bArr = new byte[100];
        Random random = new Random();
        random.nextBytes(bArr);
        int nextInt = random.nextInt();
        int c10 = kVar.c(bArr, 0, 100, nextInt);
        c i10 = i(nextInt);
        i10.f(bArr, 0, 100);
        int d10 = i10.d();
        long j10 = nextInt;
        long c11 = oVar.c(bArr, 0, 100, j10);
        g j11 = j(j10);
        j11.f(bArr, 0, 100);
        long d11 = j11.d();
        if (c10 != d10) {
            throw new AssertionError();
        }
        if (c11 != d11) {
            throw new AssertionError();
        }
    }

    public static <T> T a(String str) throws NoSuchFieldException, SecurityException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException {
        ClassLoader classLoader = t.class.getClassLoader();
        if (classLoader == null) {
            classLoader = ClassLoader.getSystemClassLoader();
        }
        return (T) classLoader.loadClass(str).getField("INSTANCE").get(null);
    }

    public static t b() {
        if (!net.jpountz.util.b.c() && net.jpountz.util.b.class.getClassLoader() != ClassLoader.getSystemClassLoader()) {
            return c();
        }
        try {
            return h();
        } catch (Throwable unused) {
            return c();
        }
    }

    public static t c() {
        if (!net.jpountz.util.e.a()) {
            return k();
        }
        try {
            return l();
        } catch (Throwable unused) {
            return k();
        }
    }

    public static t f(String str) {
        try {
            return new t(str);
        } catch (Exception e10) {
            throw new AssertionError(e10);
        }
    }

    public static void g(String[] strArr) {
        PrintStream printStream = System.out;
        printStream.println("Fastest instance is " + ((Object) b()));
        printStream.println("Fastest Java instance is " + ((Object) c()));
    }

    public static synchronized t h() {
        t tVar;
        synchronized (t.class) {
            try {
                if (f98148f == null) {
                    f98148f = f("JNI");
                }
                tVar = f98148f;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tVar;
    }

    public static synchronized t k() {
        t tVar;
        synchronized (t.class) {
            try {
                if (f98150h == null) {
                    f98150h = f("JavaSafe");
                }
                tVar = f98150h;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tVar;
    }

    public static synchronized t l() {
        t tVar;
        synchronized (t.class) {
            try {
                if (f98149g == null) {
                    f98149g = f("JavaUnsafe");
                }
                tVar = f98149g;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tVar;
    }

    public k d() {
        return this.f98152b;
    }

    public o e() {
        return this.f98153c;
    }

    public c i(int i10) {
        return this.f98154d.a(i10);
    }

    public g j(long j10) {
        return this.f98155e.a(j10);
    }

    public String toString() {
        return t.class.getSimpleName() + b3.s.f32937c + this.f98151a;
    }
}
