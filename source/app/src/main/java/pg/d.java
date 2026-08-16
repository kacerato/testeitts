package Pg;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.A;

public class d extends f {

    public final Method f21469e;

    public final Method f21470f;

    public final Method f21471g;

    public final Class<?> f21472h;

    public final Class<?> f21473i;

    public static class a implements InvocationHandler {

        public final List<String> f21474a;

        public boolean f21475b;

        public String f21476c;

        public a(List<String> list) {
            this.f21474a = list;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = Gg.c.f7799b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f21475b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f21474a;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.f21474a.contains(list.get(i10))) {
                            String str = (String) list.get(i10);
                            this.f21476c = str;
                            return str;
                        }
                    }
                    String str2 = this.f21474a.get(0);
                    this.f21476c = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f21476c = (String) objArr[0];
            return null;
        }
    }

    public d(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f21469e = method;
        this.f21470f = method2;
        this.f21471g = method3;
        this.f21472h = cls;
        this.f21473i = cls2;
    }

    public static f v() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new d(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override
    public void a(SSLSocket sSLSocket) {
        try {
            this.f21471g.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw Gg.c.b("unable to remove alpn", e10);
        }
    }

    @Override
    public void h(SSLSocket sSLSocket, String str, List<A> list) {
        try {
            this.f21469e.invoke(null, sSLSocket, Proxy.newProxyInstance(f.class.getClassLoader(), new Class[]{this.f21472h, this.f21473i}, new a(f.b(list))));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw Gg.c.b("unable to set alpn", e10);
        }
    }

    @Override
    @Nullable
    public String n(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f21470f.invoke(null, sSLSocket));
            boolean z10 = aVar.f21475b;
            if (!z10 && aVar.f21476c == null) {
                f.k().r(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                return null;
            }
            if (z10) {
                return null;
            }
            return aVar.f21476c;
        } catch (IllegalAccessException e10) {
            e = e10;
            throw Gg.c.b("unable to get selected protocol", e);
        } catch (InvocationTargetException e11) {
            e = e11;
            throw Gg.c.b("unable to get selected protocol", e);
        }
    }
}
