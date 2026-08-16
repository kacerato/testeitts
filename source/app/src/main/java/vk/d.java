package Vk;

import Xh.A;
import Xh.t;
import android.bluetooth.le.AdvertisingSetParameters;
import hi.E0;
import hi.h0;
import ik.AbstractC13753a;
import java.io.IOException;
import java.math.BigInteger;
import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Security;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import ki.j;
import ki.p;
import ki.r;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import org.bouncycastle.util.w;

public class d {

    public static final b f27155a;

    public static final b f27156b;

    public static final BigInteger f27157c = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);

    public static class b {

        public final Map<BigInteger, Boolean> f27158a;

        public final BigInteger[] f27159b;

        public int f27160c;

        public b() {
            this.f27158a = new WeakHashMap();
            this.f27159b = new BigInteger[8];
            this.f27160c = 0;
        }

        public synchronized void a(BigInteger bigInteger) {
            this.f27158a.put(bigInteger, Boolean.TRUE);
            BigInteger[] bigIntegerArr = this.f27159b;
            int i10 = this.f27160c;
            bigIntegerArr[i10] = bigInteger;
            this.f27160c = (i10 + 1) % bigIntegerArr.length;
        }

        public synchronized void b() {
            this.f27158a.clear();
            int i10 = 0;
            while (true) {
                BigInteger[] bigIntegerArr = this.f27159b;
                if (i10 != bigIntegerArr.length) {
                    bigIntegerArr[i10] = null;
                    i10++;
                }
            }
        }

        public synchronized boolean c(BigInteger bigInteger) {
            return this.f27158a.containsKey(bigInteger);
        }

        public synchronized int d() {
            return this.f27158a.size();
        }
    }

    public static class c {

        public static final ThreadLocal f27161a = new ThreadLocal();

        public class a implements PrivilegedAction {

            public final String f27162a;

            public a(String str) {
                this.f27162a = str;
            }

            @Override
            public Object run() {
                return Security.getProperty(this.f27162a);
            }
        }

        public class b implements PrivilegedAction {

            public final String f27163a;

            public b(String str) {
                this.f27163a = str;
            }

            @Override
            public Object run() {
                return System.getProperty(this.f27163a);
            }
        }

        public static int a(String str, int i10) {
            String b10 = b(str);
            return b10 != null ? Integer.parseInt(b10) : i10;
        }

        public static String b(String str) {
            String str2;
            String str3 = (String) AccessController.doPrivileged(new a(str));
            if (str3 != null) {
                return str3;
            }
            Map map = (Map) f27161a.get();
            return (map == null || (str2 = (String) map.get(str)) == null) ? (String) AccessController.doPrivileged(new b(str)) : str2;
        }

        public static boolean c(String str) {
            try {
                return d(b(str));
            } catch (AccessControlException unused) {
                return false;
            }
        }

        public static boolean d(String str) {
            if (str == null || str.length() != 4) {
                return false;
            }
            if (str.charAt(0) != 't' && str.charAt(0) != 'T') {
                return false;
            }
            if (str.charAt(1) != 'r' && str.charAt(1) != 'R') {
                return false;
            }
            if (str.charAt(2) == 'u' || str.charAt(2) == 'U') {
                return str.charAt(3) == 'e' || str.charAt(3) == 'E';
            }
            return false;
        }

        public static boolean e(String str) {
            String str2;
            ThreadLocal threadLocal = f27161a;
            Map map = (Map) threadLocal.get();
            if (map == null || (str2 = (String) map.remove(str)) == null) {
                return false;
            }
            if (map.isEmpty()) {
                threadLocal.remove();
            }
            return "true".equals(w.l(str2));
        }

        public static boolean f(String str, boolean z10) {
            boolean c10 = c(str);
            ThreadLocal threadLocal = f27161a;
            Map map = (Map) threadLocal.get();
            if (map == null) {
                map = new HashMap();
                threadLocal.set(map);
            }
            map.put(str, z10 ? "true" : "false");
            return c10;
        }
    }

    static {
        f27155a = new b();
        f27156b = new b();
    }

    public static void a(h0 h0Var) {
        b bVar;
        BigInteger x10;
        C14549x u10 = h0Var.u().u();
        if (r.f95305I5.A(u10)) {
            j u11 = j.u(h0Var.u().x());
            if (u11.y() || u11.z()) {
                return;
            }
            p v10 = p.v(E.G(u11.x()).I(1));
            if (!v10.u().A(r.f95356x5)) {
                return;
            }
            x10 = C14539s.F(v10.x()).I();
            bVar = f27155a;
            if (bVar.c(x10)) {
                return;
            }
            int a10 = c.a("org.bouncycastle.ec.fp_max_size", 1042);
            int a11 = c.a("org.bouncycastle.ec.fp_certainty", 100);
            int bitLength = x10.bitLength();
            if (a10 < bitLength) {
                throw new IllegalArgumentException("Fp q value out of range");
            }
            if (AbstractC13753a.e(x10) || !AbstractC13753a.l(x10, Bi.r.h(), b(bitLength, a11))) {
                throw new IllegalArgumentException("Fp q value not prime");
            }
        } else {
            if (!t.f29017H0.A(u10) && !E0.f90637W4.A(u10) && !t.f29033N0.A(u10) && !t.f29045Q0.A(u10)) {
                return;
            }
            try {
                A u12 = A.u(h0Var.A());
                if ((u12.y().intValue() & 1) == 0) {
                    throw new IllegalArgumentException("RSA publicExponent is even");
                }
                bVar = f27156b;
                if (bVar.c(u12.x())) {
                    return;
                }
                f(u12.x());
                x10 = u12.x();
            } catch (IOException unused) {
                throw new IllegalArgumentException("unable to parse RSA key");
            }
        }
        bVar.a(x10);
    }

    public static int b(int i10, int i11) {
        if (i10 >= 1536) {
            if (i11 <= 100) {
                return 3;
            }
            if (i11 <= 128) {
                return 4;
            }
            return 4 + ((i11 + AdvertisingSetParameters.TX_POWER_MIN) / 2);
        }
        if (i10 >= 1024) {
            if (i11 <= 100) {
                return 4;
            }
            if (i11 <= 112) {
                return 5;
            }
            return ((i11 - 111) / 2) + 5;
        }
        if (i10 < 512) {
            if (i11 <= 80) {
                return 40;
            }
            return 40 + ((i11 - 79) / 2);
        }
        if (i11 <= 80) {
            return 5;
        }
        if (i11 <= 100) {
            return 7;
        }
        return 7 + ((i11 - 99) / 2);
    }

    public static boolean c(BigInteger bigInteger) {
        BigInteger bigInteger2 = f27157c;
        if (bigInteger.compareTo(bigInteger2) < 0) {
            bigInteger2 = bigInteger;
            bigInteger = bigInteger2;
        }
        return !org.bouncycastle.util.b.q(bigInteger, bigInteger2);
    }

    public static boolean d(String str) {
        return c.e(str);
    }

    public static boolean e(String str, boolean z10) {
        return c.f(str, z10);
    }

    public static void f(BigInteger bigInteger) {
        if ((bigInteger.intValue() & 1) == 0) {
            throw new IllegalArgumentException("RSA modulus is even");
        }
        if (c.c("org.bouncycastle.rsa.allow_unsafe_mod")) {
            return;
        }
        if (c.a("org.bouncycastle.rsa.max_size", 16384) < bigInteger.bitLength()) {
            throw new IllegalArgumentException("RSA modulus out of range");
        }
        if (c(bigInteger)) {
            throw new IllegalArgumentException("RSA modulus has a small prime factor");
        }
        int bitLength = bigInteger.bitLength() / 2;
        if (!AbstractC13753a.b(bigInteger, Bi.r.h(), bitLength >= 1536 ? 3 : bitLength >= 1024 ? 4 : bitLength >= 512 ? 7 : 50).f()) {
            throw new IllegalArgumentException("RSA modulus is not composite");
        }
    }
}
