package Gg;

import Kg.f;
import java.io.IOException;
import java.net.Socket;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.C;
import okhttp3.C14581a;
import okhttp3.C14591k;
import okhttp3.E;
import okhttp3.G;
import okhttp3.InterfaceC14585e;
import okhttp3.l;
import okhttp3.u;
import okhttp3.z;

public abstract class a {

    public static a f7796a;

    public static void i() {
        new z();
    }

    public abstract void a(u.a aVar, String str);

    public abstract void b(u.a aVar, String str, String str2);

    public abstract void c(l lVar, SSLSocket sSLSocket, boolean z10);

    public abstract int d(E.a aVar);

    public abstract boolean e(C14591k c14591k, Kg.c cVar);

    public abstract Socket f(C14591k c14591k, C14581a c14581a, f fVar);

    public abstract boolean g(C14581a c14581a, C14581a c14581a2);

    public abstract Kg.c h(C14591k c14591k, C14581a c14581a, f fVar, G g10);

    public abstract boolean j(IllegalArgumentException illegalArgumentException);

    public abstract InterfaceC14585e k(z zVar, C c10);

    public abstract void l(C14591k c14591k, Kg.c cVar);

    public abstract Kg.d m(C14591k c14591k);

    public abstract void n(z.b bVar, Ig.f fVar);

    public abstract f o(InterfaceC14585e interfaceC14585e);

    @Nullable
    public abstract IOException p(InterfaceC14585e interfaceC14585e, @Nullable IOException iOException);
}
