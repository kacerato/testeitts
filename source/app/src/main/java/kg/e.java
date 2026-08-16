package Kg;

import b3.s;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.C14581a;
import okhttp3.G;
import okhttp3.InterfaceC14585e;
import okhttp3.r;
import okhttp3.v;

public final class e {

    public final C14581a f11353a;

    public final d f11354b;

    public final InterfaceC14585e f11355c;

    public final r f11356d;

    public int f11358f;

    public List<Proxy> f11357e = Collections.emptyList();

    public List<InetSocketAddress> f11359g = Collections.emptyList();

    public final List<G> f11360h = new ArrayList();

    public static final class a {

        public final List<G> f11361a;

        public int f11362b = 0;

        public a(List<G> list) {
            this.f11361a = list;
        }

        public List<G> a() {
            return new ArrayList(this.f11361a);
        }

        public boolean b() {
            return this.f11362b < this.f11361a.size();
        }

        public G c() {
            if (!b()) {
                throw new NoSuchElementException();
            }
            List<G> list = this.f11361a;
            int i10 = this.f11362b;
            this.f11362b = i10 + 1;
            return list.get(i10);
        }
    }

    public e(C14581a c14581a, d dVar, InterfaceC14585e interfaceC14585e, r rVar) {
        this.f11353a = c14581a;
        this.f11354b = dVar;
        this.f11355c = interfaceC14585e;
        this.f11356d = rVar;
        h(c14581a.l(), c14581a.g());
    }

    public static String b(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    public void a(G g10, IOException iOException) {
        if (g10.b().type() != Proxy.Type.DIRECT && this.f11353a.i() != null) {
            this.f11353a.i().connectFailed(this.f11353a.l().R(), g10.b().address(), iOException);
        }
        this.f11354b.b(g10);
    }

    public boolean c() {
        return d() || !this.f11360h.isEmpty();
    }

    public final boolean d() {
        return this.f11358f < this.f11357e.size();
    }

    public a e() throws IOException {
        if (!c()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (d()) {
            Proxy f10 = f();
            int size = this.f11359g.size();
            for (int i10 = 0; i10 < size; i10++) {
                G g10 = new G(this.f11353a, f10, this.f11359g.get(i10));
                if (this.f11354b.c(g10)) {
                    this.f11360h.add(g10);
                } else {
                    arrayList.add(g10);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f11360h);
            this.f11360h.clear();
        }
        return new a(arrayList);
    }

    public final Proxy f() throws IOException {
        if (d()) {
            List<Proxy> list = this.f11357e;
            int i10 = this.f11358f;
            this.f11358f = i10 + 1;
            Proxy proxy = list.get(i10);
            g(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f11353a.l().p() + "; exhausted proxy configurations: " + ((Object) this.f11357e));
    }

    public final void g(Proxy proxy) throws IOException {
        String p10;
        int E10;
        this.f11359g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            p10 = this.f11353a.l().p();
            E10 = this.f11353a.l().E();
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + ((Object) address.getClass()));
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            p10 = b(inetSocketAddress);
            E10 = inetSocketAddress.getPort();
        }
        if (E10 < 1 || E10 > 65535) {
            throw new SocketException("No route to " + p10 + s.f32937c + E10 + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f11359g.add(InetSocketAddress.createUnresolved(p10, E10));
            return;
        }
        this.f11356d.j(this.f11355c, p10);
        List<InetAddress> a10 = this.f11353a.c().a(p10);
        if (a10.isEmpty()) {
            throw new UnknownHostException(((Object) this.f11353a.c()) + " returned no addresses for " + p10);
        }
        this.f11356d.i(this.f11355c, p10, a10);
        int size = a10.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f11359g.add(new InetSocketAddress(a10.get(i10), E10));
        }
    }

    public final void h(v vVar, Proxy proxy) {
        if (proxy != null) {
            this.f11357e = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f11353a.i().select(vVar.R());
            this.f11357e = (select == null || select.isEmpty()) ? Gg.c.v(Proxy.NO_PROXY) : Gg.c.u(select);
        }
        this.f11358f = 0;
    }
}
