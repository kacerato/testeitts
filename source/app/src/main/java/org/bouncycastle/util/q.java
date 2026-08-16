package org.bouncycastle.util;

import java.math.BigInteger;
import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Security;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.openjdk.tools.doclint.DocLint;

public class q {

    public static final String f102334a = "org.bouncycastle.emulate.oracle";

    public static final ThreadLocal f102335b = new ThreadLocal();

    public class a implements PrivilegedAction {

        public final String f102336a;

        public a(String str) {
            this.f102336a = str;
        }

        @Override
        public Object run() {
            return Security.getProperty(this.f102336a);
        }
    }

    public class b implements PrivilegedAction {

        public final String f102337a;

        public b(String str) {
            this.f102337a = str;
        }

        @Override
        public Object run() {
            return System.getProperty(this.f102337a);
        }
    }

    public static BigInteger a(String str) {
        String d10 = d(str);
        if (d10 != null) {
            return new BigInteger(d10);
        }
        return null;
    }

    public static int b(String str, int i10) {
        String d10 = d(str);
        return d10 != null ? Integer.parseInt(d10) : i10;
    }

    public static Set<String> c(String str) {
        HashSet hashSet = new HashSet();
        String d10 = d(str);
        if (d10 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(d10, DocLint.SEPARATOR);
            while (stringTokenizer.hasMoreElements()) {
                hashSet.add(w.l(stringTokenizer.nextToken()).trim());
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static String d(String str) {
        String str2;
        String str3 = (String) AccessController.doPrivileged(new a(str));
        if (str3 != null) {
            return str3;
        }
        Map map = (Map) f102335b.get();
        return (map == null || (str2 = (String) map.get(str)) == null) ? (String) AccessController.doPrivileged(new b(str)) : str2;
    }

    public static String e(String str, String str2) {
        String d10 = d(str);
        return d10 == null ? str2 : d10;
    }

    public static boolean f(String str) {
        try {
            return i(d(str));
        } catch (AccessControlException unused) {
            return false;
        }
    }

    public static boolean g(String str, boolean z10) {
        try {
            String d10 = d(str);
            return z10 ? i(d10) : h(d10);
        } catch (AccessControlException unused) {
            return false;
        }
    }

    public static boolean h(String str) {
        if (str == null || str.length() != 5) {
            return false;
        }
        if (str.charAt(0) != 'f' && str.charAt(0) != 'F') {
            return false;
        }
        if (str.charAt(1) != 'a' && str.charAt(1) != 'A') {
            return false;
        }
        if (str.charAt(2) != 'l' && str.charAt(2) != 'L') {
            return false;
        }
        if (str.charAt(3) == 's' || str.charAt(3) == 'S') {
            return str.charAt(4) == 'e' || str.charAt(4) == 'E';
        }
        return false;
    }

    public static boolean i(String str) {
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

    public static boolean j(String str) {
        String str2;
        ThreadLocal threadLocal = f102335b;
        Map map = (Map) threadLocal.get();
        if (map == null || (str2 = (String) map.remove(str)) == null) {
            return false;
        }
        if (map.isEmpty()) {
            threadLocal.remove();
        }
        return "true".equals(w.l(str2));
    }

    public static boolean k(String str, boolean z10) {
        boolean f10 = f(str);
        ThreadLocal threadLocal = f102335b;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
        }
        map.put(str, z10 ? "true" : "false");
        return f10;
    }
}
