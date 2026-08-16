package Pg;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.A;

public final class c extends f {

    public final Method f21467e;

    public final Method f21468f;

    public c(Method method, Method method2) {
        this.f21467e = method;
        this.f21468f = method2;
    }

    public static c v() {
        try {
            return new c(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", null));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override
    public void h(SSLSocket sSLSocket, String str, List<A> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> b10 = f.b(list);
            this.f21467e.invoke(sSLParameters, b10.toArray(new String[b10.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw Gg.c.b("unable to set ssl parameters", e10);
        }
    }

    @Override
    @Nullable
    public String n(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f21468f.invoke(sSLSocket, null);
            if (str != null) {
                if (!str.equals("")) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw Gg.c.b("unable to get selected protocols", e10);
        }
    }

    @Override
    public X509TrustManager u(SSLSocketFactory sSLSocketFactory) {
        throw new UnsupportedOperationException("clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+");
    }
}
