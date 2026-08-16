package Gg;

import Tg.C3089c;
import Tg.e;
import Tg.f;
import Tg.y;
import b3.s;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.D;
import okhttp3.F;
import okhttp3.u;
import okhttp3.v;
import org.apache.commons.lang3.CharEncoding;

public final class c {

    public static final byte[] f7798a;

    public static final F f7800c;

    public static final D f7801d;

    public static final Method f7815r;

    public static final Pattern f7816s;

    public static final String[] f7799b = new String[0];

    public static final f f7802e = f.h("efbbbf");

    public static final f f7803f = f.h("feff");

    public static final f f7804g = f.h("fffe");

    public static final f f7805h = f.h("0000ffff");

    public static final f f7806i = f.h("ffff0000");

    public static final Charset f7807j = Charset.forName("UTF-8");

    public static final Charset f7808k = Charset.forName("ISO-8859-1");

    public static final Charset f7809l = Charset.forName(CharEncoding.UTF_16BE);

    public static final Charset f7810m = Charset.forName(CharEncoding.UTF_16LE);

    public static final Charset f7811n = Charset.forName("UTF-32BE");

    public static final Charset f7812o = Charset.forName("UTF-32LE");

    public static final TimeZone f7813p = TimeZone.getTimeZone("GMT");

    public static final Comparator<String> f7814q = new a();

    public class a implements Comparator<String> {
        @Override
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    public class b implements ThreadFactory {

        public final String f7817b;

        public final boolean f7818c;

        public b(String str, boolean z10) {
            this.f7817b = str;
            this.f7818c = z10;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f7817b);
            thread.setDaemon(this.f7818c);
            return thread;
        }
    }

    static {
        byte[] bArr = new byte[0];
        f7798a = bArr;
        Method method = null;
        f7800c = F.m(null, bArr);
        f7801d = D.f(null, bArr);
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        f7815r = method;
        f7816s = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    public static String[] A(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i10]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i10++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean B(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean C(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static X509TrustManager D() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e10) {
            throw b("No System TLS", e10);
        }
    }

    public static boolean E(y yVar, int i10, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        long d10 = yVar.a0().f() ? yVar.a0().d() - nanoTime : Long.MAX_VALUE;
        yVar.a0().e(Math.min(d10, timeUnit.toNanos(i10)) + nanoTime);
        try {
            C3089c c3089c = new C3089c();
            while (yVar.K(c3089c, 8192L) != -1) {
                c3089c.c();
            }
            if (d10 == Long.MAX_VALUE) {
                yVar.a0().a();
                return true;
            }
            yVar.a0().e(nanoTime + d10);
            return true;
        } catch (InterruptedIOException unused) {
            if (d10 == Long.MAX_VALUE) {
                yVar.a0().a();
                return false;
            }
            yVar.a0().e(nanoTime + d10);
            return false;
        } catch (Throwable th2) {
            if (d10 == Long.MAX_VALUE) {
                yVar.a0().a();
            } else {
                yVar.a0().e(nanoTime + d10);
            }
            throw th2;
        }
    }

    public static int F(String str, int i10, int i11) {
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int G(String str, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            char charAt = str.charAt(i12);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i12 + 1;
            }
        }
        return i10;
    }

    public static ThreadFactory H(String str, boolean z10) {
        return new b(str, z10);
    }

    public static u I(List<Ng.b> list) {
        u.a aVar = new u.a();
        for (Ng.b bVar : list) {
            Gg.a.f7796a.b(aVar, bVar.f16175a.b0(), bVar.f16176b.b0());
        }
        return aVar.h();
    }

    public static String J(String str, int i10, int i11) {
        int F10 = F(str, i10, i11);
        return str.substring(F10, G(str, F10, i11));
    }

    public static boolean K(String str) {
        return f7816s.matcher(str).matches();
    }

    public static void a(Throwable th2, Throwable th3) {
        Method method = f7815r;
        if (method != null) {
            try {
                method.invoke(th2, th3);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public static AssertionError b(String str, Exception exc) {
        AssertionError assertionError = new AssertionError((Object) str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    public static Charset c(e eVar, Charset charset) throws IOException {
        if (eVar.g2(0L, f7802e)) {
            eVar.skip(r0.S());
            return f7807j;
        }
        if (eVar.g2(0L, f7803f)) {
            eVar.skip(r0.S());
            return f7809l;
        }
        if (eVar.g2(0L, f7804g)) {
            eVar.skip(r0.S());
            return f7810m;
        }
        if (eVar.g2(0L, f7805h)) {
            eVar.skip(r0.S());
            return f7811n;
        }
        if (!eVar.g2(0L, f7806i)) {
            return charset;
        }
        eVar.skip(r0.S());
        return f7812o;
    }

    public static String d(String str) {
        if (!str.contains(s.f32937c)) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (k(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress n10 = (str.startsWith("[") && str.endsWith("]")) ? n(str, 1, str.length() - 1) : n(str, 0, str.length());
        if (n10 == null) {
            return null;
        }
        byte[] address = n10.getAddress();
        if (address.length == 16) {
            return z(address);
        }
        throw new AssertionError((Object) ("Invalid IPv6 address: '" + str + "'"));
    }

    public static int e(String str, long j10, TimeUnit timeUnit) {
        if (j10 < 0) {
            throw new IllegalArgumentException(str + " < 0");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j10);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str + " too large.");
        }
        if (millis != 0 || j10 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(str + " too small.");
    }

    public static void f(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void g(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static void h(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static void i(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e10) {
                if (!B(e10)) {
                    throw e10;
                }
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }

    public static String[] j(String[] strArr, String str) {
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length] = str;
        return strArr2;
    }

    public static boolean k(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt <= 31 || charAt >= '\u007f' || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static int l(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 >= 'a' && c10 <= 'f') {
            return c10 - 'W';
        }
        if (c10 < 'A' || c10 > 'F') {
            return -1;
        }
        return c10 - '7';
    }

    public static boolean m(String str, int i10, int i11, byte[] bArr, int i12) {
        int i13 = i12;
        while (i10 < i11) {
            if (i13 == bArr.length) {
                return false;
            }
            if (i13 != i12) {
                if (str.charAt(i10) != '.') {
                    return false;
                }
                i10++;
            }
            int i14 = i10;
            int i15 = 0;
            while (i14 < i11) {
                char charAt = str.charAt(i14);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                if ((i15 == 0 && i10 != i14) || (i15 = ((i15 * 10) + charAt) - 48) > 255) {
                    return false;
                }
                i14++;
            }
            if (i14 - i10 == 0) {
                return false;
            }
            bArr[i13] = (byte) i15;
            i13++;
            i10 = i14;
        }
        return i13 == i12 + 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static InetAddress n(String str, int i10, int i11) {
        int i12;
        byte[] bArr = new byte[16];
        int i13 = 0;
        int i14 = -1;
        int i15 = -1;
        while (true) {
            if (i10 < i11) {
                if (i13 != 16) {
                    int i16 = i10 + 2;
                    if (i16 <= i11 && str.regionMatches(i10, "::", 0, 2)) {
                        if (i14 == -1) {
                            i13 += 2;
                            i14 = i13;
                            if (i16 != i11) {
                                i15 = i16;
                                int i17 = 0;
                                i10 = i15;
                                while (i10 < i11) {
                                }
                                i12 = i10 - i15;
                                if (i12 == 0) {
                                    break;
                                }
                                break;
                            }
                            break;
                        }
                        return null;
                    }
                    if (i13 != 0) {
                        if (str.regionMatches(i10, s.f32937c, 0, 1)) {
                            i10++;
                        } else {
                            if (!str.regionMatches(i10, ".", 0, 1) || !m(str, i15, i11, bArr, i13 - 2)) {
                                return null;
                            }
                            i13 += 2;
                        }
                    }
                    i15 = i10;
                    int i172 = 0;
                    i10 = i15;
                    while (i10 < i11) {
                        int l10 = l(str.charAt(i10));
                        if (l10 == -1) {
                            break;
                        }
                        i172 = (i172 << 4) + l10;
                        i10++;
                    }
                    i12 = i10 - i15;
                    if (i12 == 0 || i12 > 4) {
                        break;
                    }
                    int i18 = i13 + 1;
                    bArr[i13] = (byte) ((i172 >>> 8) & 255);
                    i13 += 2;
                    bArr[i18] = (byte) (i172 & 255);
                } else {
                    return null;
                }
            } else {
                break;
            }
        }
        if (i13 != 16) {
            if (i14 == -1) {
                return null;
            }
            int i19 = i13 - i14;
            System.arraycopy(bArr, i14, bArr, 16 - i19, i19);
            Arrays.fill(bArr, i14, (16 - i13) + i14, (byte) 0);
        }
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException unused) {
            throw new AssertionError();
        }
    }

    public static int o(String str, int i10, int i11, char c10) {
        while (i10 < i11) {
            if (str.charAt(i10) == c10) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int p(String str, int i10, int i11, String str2) {
        while (i10 < i11) {
            if (str2.indexOf(str.charAt(i10)) != -1) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static boolean q(y yVar, int i10, TimeUnit timeUnit) {
        try {
            return E(yVar, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean r(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String s(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String t(v vVar, boolean z10) {
        String p10;
        if (vVar.p().contains(s.f32937c)) {
            p10 = "[" + vVar.p() + "]";
        } else {
            p10 = vVar.p();
        }
        if (!z10 && vVar.E() == v.e(vVar.P())) {
            return p10;
        }
        return p10 + s.f32937c + vVar.E();
    }

    public static <T> List<T> u(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> v(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static <K, V> Map<K, V> w(Map<K, V> map) {
        return map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static int x(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], str) == 0) {
                return i10;
            }
        }
        return -1;
    }

    public static int y(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt <= 31 || charAt >= '\u007f') {
                return i10;
            }
        }
        return -1;
    }

    public static String z(byte[] bArr) {
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < bArr.length) {
            int i14 = i12;
            while (i14 < 16 && bArr[i14] == 0 && bArr[i14 + 1] == 0) {
                i14 += 2;
            }
            int i15 = i14 - i12;
            if (i15 > i13 && i15 >= 4) {
                i10 = i12;
                i13 = i15;
            }
            i12 = i14 + 2;
        }
        C3089c c3089c = new C3089c();
        while (i11 < bArr.length) {
            if (i11 == i10) {
                c3089c.writeByte(58);
                i11 += i13;
                if (i11 == 16) {
                    c3089c.writeByte(58);
                }
            } else {
                if (i11 > 0) {
                    c3089c.writeByte(58);
                }
                c3089c.P(((bArr[i11] & 255) << 8) | (bArr[i11 + 1] & 255));
                i11 += 2;
            }
        }
        return c3089c.D1();
    }
}
