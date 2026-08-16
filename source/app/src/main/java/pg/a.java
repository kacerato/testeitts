package Pg;

import android.os.Build;
import android.security.keystore.KeyProperties;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.A;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class a extends f {

    public static final int f21453k = 4000;

    public final Class<?> f21454e;

    public final e<Socket> f21455f;

    public final e<Socket> f21456g;

    public final e<Socket> f21457h;

    public final e<Socket> f21458i;

    public final c f21459j = c.b();

    public static final class C0522a extends Rg.c {

        public final Object f21460a;

        public final Method f21461b;

        public C0522a(Object obj, Method method) {
            this.f21460a = obj;
            this.f21461b = method;
        }

        @Override
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f21461b.invoke(this.f21460a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), KeyProperties.KEY_ALGORITHM_RSA, str);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e11.getMessage());
                sSLPeerUnverifiedException.initCause(e11);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0522a;
        }

        public int hashCode() {
            return 0;
        }
    }

    public static final class b implements Rg.f {

        public final X509TrustManager f21462a;

        public final Method f21463b;

        public b(X509TrustManager x509TrustManager, Method method) {
            this.f21463b = method;
            this.f21462a = x509TrustManager;
        }

        @Override
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f21463b.invoke(this.f21462a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e10) {
                throw Gg.c.b("unable to get issues and signature", e10);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f21462a.equals(bVar.f21462a) && this.f21463b.equals(bVar.f21463b);
        }

        public int hashCode() {
            return this.f21462a.hashCode() + (this.f21463b.hashCode() * 31);
        }
    }

    public static final class c {

        public final Method f21464a;

        public final Method f21465b;

        public final Method f21466c;

        public c(Method method, Method method2, Method method3) {
            this.f21464a = method;
            this.f21465b = method2;
            this.f21466c = method3;
        }

        public static c b() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", null);
                method2 = cls.getMethod(AbstractCircuitBreaker.PROPERTY_NAME, String.class);
                method = cls.getMethod("warnIfOpen", null);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new c(method3, method2, method);
        }

        public Object a(String str) {
            Method method = this.f21464a;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, null);
                    this.f21465b.invoke(invoke, str);
                    return invoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public boolean c(Object obj) {
            if (obj != null) {
                try {
                    this.f21466c.invoke(obj, null);
                    return true;
                } catch (Exception unused) {
                }
            }
            return false;
        }
    }

    public a(Class<?> cls, e<Socket> eVar, e<Socket> eVar2, e<Socket> eVar3, e<Socket> eVar4) {
        this.f21454e = cls;
        this.f21455f = eVar;
        this.f21456g = eVar2;
        this.f21457h = eVar3;
        this.f21458i = eVar4;
    }

    public static f x() {
        Class<?> cls;
        e eVar;
        e eVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            e eVar3 = new e(null, "setUseSessionTickets", Boolean.TYPE);
            e eVar4 = new e(null, "setHostname", String.class);
            if (y()) {
                eVar = new e(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                eVar2 = new e(null, "setAlpnProtocols", byte[].class);
            } else {
                eVar = null;
                eVar2 = null;
            }
            return new a(cls2, eVar3, eVar4, eVar, eVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    public static boolean y() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override
    public Rg.c d(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0522a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.d(x509TrustManager);
        }
    }

    @Override
    public Rg.f e(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.e(x509TrustManager);
        }
    }

    @Override
    public void h(SSLSocket sSLSocket, String str, List<A> list) {
        if (str != null) {
            this.f21455f.e(sSLSocket, Boolean.TRUE);
            this.f21456g.e(sSLSocket, str);
        }
        e<Socket> eVar = this.f21458i;
        if (eVar == null || !eVar.g(sSLSocket)) {
            return;
        }
        this.f21458i.f(sSLSocket, f.f(list));
    }

    @Override
    public void i(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
        try {
            socket.connect(inetSocketAddress, i10);
        } catch (AssertionError e10) {
            if (!Gg.c.B(e10)) {
                throw e10;
            }
            throw new IOException(e10);
        } catch (ClassCastException e11) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e11;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e11);
            throw iOException;
        } catch (SecurityException e12) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e12);
            throw iOException2;
        }
    }

    @Override
    public SSLContext m() {
        try {
            return SSLContext.getInstance(SSLSocketFactory.TLS);
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("No TLS provider", e10);
        }
    }

    @Override
    @Nullable
    public String n(SSLSocket sSLSocket) {
        byte[] bArr;
        e<Socket> eVar = this.f21457h;
        if (eVar == null || !eVar.g(sSLSocket) || (bArr = (byte[]) this.f21457h.f(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, Gg.c.f7807j);
    }

    @Override
    public Object o(String str) {
        return this.f21459j.a(str);
    }

    @Override
    public boolean p(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return w(str, cls, cls.getMethod("getInstance", null).invoke(null, null));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.p(str);
        } catch (IllegalAccessException e10) {
            e = e10;
            throw Gg.c.b("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e11) {
            e = e11;
            throw Gg.c.b("unable to determine cleartext support", e);
        } catch (InvocationTargetException e12) {
            e = e12;
            throw Gg.c.b("unable to determine cleartext support", e);
        }
    }

    @Override
    public void r(int i10, String str, @Nullable Throwable th2) {
        int min;
        int i11 = i10 != 5 ? 3 : 5;
        if (th2 != null) {
            str = str + '\n' + Log.getStackTraceString(th2);
        }
        int length = str.length();
        int i12 = 0;
        while (i12 < length) {
            int indexOf = str.indexOf(10, i12);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i12 + f21453k);
                Log.println(i11, "OkHttp", str.substring(i12, min));
                if (min >= indexOf) {
                    break;
                } else {
                    i12 = min;
                }
            }
            i12 = min + 1;
        }
    }

    @Override
    public void s(String str, Object obj) {
        if (this.f21459j.c(obj)) {
            return;
        }
        r(5, str, null);
    }

    @Override
    @Nullable
    public X509TrustManager u(javax.net.ssl.SSLSocketFactory sSLSocketFactory) {
        Object t10 = f.t(sSLSocketFactory, this.f21454e, "sslParameters");
        if (t10 == null) {
            try {
                t10 = f.t(sSLSocketFactory, Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, sSLSocketFactory.getClass().getClassLoader()), "sslParameters");
            } catch (ClassNotFoundException unused) {
                return super.u(sSLSocketFactory);
            }
        }
        X509TrustManager x509TrustManager = (X509TrustManager) f.t(t10, X509TrustManager.class, "x509TrustManager");
        return x509TrustManager != null ? x509TrustManager : (X509TrustManager) f.t(t10, X509TrustManager.class, "trustManager");
    }

    public final boolean v(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", null).invoke(obj, null)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.p(str);
        }
    }

    public final boolean w(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return v(str, cls, obj);
        }
    }
}
