package Pg;

import Tg.C3089c;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.A;
import okhttp3.z;

public class f {

    public static final int f21481b = 4;

    public static final int f21482c = 5;

    public static final f f21480a = j();

    public static final Logger f21483d = Logger.getLogger(z.class.getName());

    public static List<String> b(List<A> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            A a10 = list.get(i10);
            if (a10 != A.HTTP_1_0) {
                arrayList.add(a10.toString());
            }
        }
        return arrayList;
    }

    public static byte[] f(List<A> list) {
        C3089c c3089c = new C3089c();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            A a10 = list.get(i10);
            if (a10 != A.HTTP_1_0) {
                c3089c.writeByte(a10.toString().length());
                c3089c.X(a10.toString());
            }
        }
        return c3089c.z1();
    }

    public static f j() {
        b v10;
        f x10 = a.x();
        if (x10 != null) {
            return x10;
        }
        if (q() && (v10 = b.v()) != null) {
            return v10;
        }
        c v11 = c.v();
        if (v11 != null) {
            return v11;
        }
        f v12 = d.v();
        return v12 != null ? v12 : new f();
    }

    public static f k() {
        return f21480a;
    }

    public static boolean q() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    @Nullable
    public static <T> T t(Object obj, Class<T> cls, String str) {
        Object t10;
        for (Class<?> cls2 = obj.getClass(); cls2 != Object.class; cls2 = cls2.getSuperclass()) {
            try {
                Field declaredField = cls2.getDeclaredField(str);
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(obj);
                if (obj2 != null && cls.isInstance(obj2)) {
                    return cls.cast(obj2);
                }
                return null;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (NoSuchFieldException unused2) {
            }
        }
        if (str.equals("delegate") || (t10 = t(obj, Object.class, "delegate")) == null) {
            return null;
        }
        return (T) t(t10, cls, str);
    }

    public void a(SSLSocket sSLSocket) {
    }

    public Rg.c c(SSLSocketFactory sSLSocketFactory) {
        X509TrustManager u10 = u(sSLSocketFactory);
        if (u10 != null) {
            return d(u10);
        }
        throw new IllegalStateException("Unable to extract the trust manager on " + ((Object) k()) + ", sslSocketFactory is " + ((Object) sSLSocketFactory.getClass()));
    }

    public Rg.c d(X509TrustManager x509TrustManager) {
        return new Rg.a(e(x509TrustManager));
    }

    public Rg.f e(X509TrustManager x509TrustManager) {
        return new Rg.b(x509TrustManager.getAcceptedIssuers());
    }

    public void g(SSLSocketFactory sSLSocketFactory) {
    }

    public void h(SSLSocket sSLSocket, @Nullable String str, List<A> list) {
    }

    public void i(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
        socket.connect(inetSocketAddress, i10);
    }

    public String l() {
        return "OkHttp";
    }

    public SSLContext m() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance(org.apache.http.conn.ssl.SSLSocketFactory.TLS);
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("No TLS provider", e10);
        }
    }

    @Nullable
    public String n(SSLSocket sSLSocket) {
        return null;
    }

    public Object o(String str) {
        if (f21483d.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public boolean p(String str) {
        return true;
    }

    public void r(int i10, String str, @Nullable Throwable th2) {
        f21483d.log(i10 == 5 ? Level.WARNING : Level.INFO, str, th2);
    }

    public void s(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        r(5, str, (Throwable) obj);
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    @Nullable
    public X509TrustManager u(SSLSocketFactory sSLSocketFactory) {
        try {
            Object t10 = t(sSLSocketFactory, Class.forName("sun.security.ssl.SSLContextImpl"), "context");
            if (t10 == null) {
                return null;
            }
            return (X509TrustManager) t(t10, X509TrustManager.class, "trustManager");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
