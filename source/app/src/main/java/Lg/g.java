package Lg;

import com.tonyodev.fetch2core.FetchErrorStrings;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.C;
import okhttp3.E;
import okhttp3.InterfaceC14585e;
import okhttp3.InterfaceC14590j;
import okhttp3.r;
import okhttp3.w;

public final class g implements w.a {

    public final List<w> f13427a;

    public final Kg.f f13428b;

    public final c f13429c;

    public final Kg.c f13430d;

    public final int f13431e;

    public final C f13432f;

    public final InterfaceC14585e f13433g;

    public final r f13434h;

    public final int f13435i;

    public final int f13436j;

    public final int f13437k;

    public int f13438l;

    public g(List<w> list, Kg.f fVar, c cVar, Kg.c cVar2, int i10, C c10, InterfaceC14585e interfaceC14585e, r rVar, int i11, int i12, int i13) {
        this.f13427a = list;
        this.f13430d = cVar2;
        this.f13428b = fVar;
        this.f13429c = cVar;
        this.f13431e = i10;
        this.f13432f = c10;
        this.f13433g = interfaceC14585e;
        this.f13434h = rVar;
        this.f13435i = i11;
        this.f13436j = i12;
        this.f13437k = i13;
    }

    @Override
    public int a() {
        return this.f13436j;
    }

    @Override
    public w.a b(int i10, TimeUnit timeUnit) {
        return new g(this.f13427a, this.f13428b, this.f13429c, this.f13430d, this.f13431e, this.f13432f, this.f13433g, this.f13434h, Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, i10, timeUnit), this.f13436j, this.f13437k);
    }

    @Override
    public C b0() {
        return this.f13432f;
    }

    @Override
    public E c(C c10) throws IOException {
        return k(c10, this.f13428b, this.f13429c, this.f13430d);
    }

    @Override
    public InterfaceC14585e call() {
        return this.f13433g;
    }

    @Override
    public InterfaceC14590j d() {
        return this.f13430d;
    }

    @Override
    public w.a e(int i10, TimeUnit timeUnit) {
        return new g(this.f13427a, this.f13428b, this.f13429c, this.f13430d, this.f13431e, this.f13432f, this.f13433g, this.f13434h, this.f13435i, Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, i10, timeUnit), this.f13437k);
    }

    @Override
    public w.a f(int i10, TimeUnit timeUnit) {
        return new g(this.f13427a, this.f13428b, this.f13429c, this.f13430d, this.f13431e, this.f13432f, this.f13433g, this.f13434h, this.f13435i, this.f13436j, Gg.c.e(FetchErrorStrings.CONNECTION_TIMEOUT, i10, timeUnit));
    }

    @Override
    public int g() {
        return this.f13437k;
    }

    @Override
    public int h() {
        return this.f13435i;
    }

    public r i() {
        return this.f13434h;
    }

    public c j() {
        return this.f13429c;
    }

    public E k(C c10, Kg.f fVar, c cVar, Kg.c cVar2) throws IOException {
        if (this.f13431e >= this.f13427a.size()) {
            throw new AssertionError();
        }
        this.f13438l++;
        if (this.f13429c != null && !this.f13430d.u(c10.k())) {
            throw new IllegalStateException("network interceptor " + ((Object) this.f13427a.get(this.f13431e - 1)) + " must retain the same host and port");
        }
        if (this.f13429c != null && this.f13438l > 1) {
            throw new IllegalStateException("network interceptor " + ((Object) this.f13427a.get(this.f13431e - 1)) + " must call proceed() exactly once");
        }
        g gVar = new g(this.f13427a, fVar, cVar, cVar2, this.f13431e + 1, c10, this.f13433g, this.f13434h, this.f13435i, this.f13436j, this.f13437k);
        w wVar = this.f13427a.get(this.f13431e);
        E a10 = wVar.a(gVar);
        if (cVar != null && this.f13431e + 1 < this.f13427a.size() && gVar.f13438l != 1) {
            throw new IllegalStateException("network interceptor " + ((Object) wVar) + " must call proceed() exactly once");
        }
        if (a10 == null) {
            throw new NullPointerException("interceptor " + ((Object) wVar) + " returned null");
        }
        if (a10.c() != null) {
            return a10;
        }
        throw new IllegalStateException("interceptor " + ((Object) wVar) + " returned a response with no body");
    }

    public Kg.f l() {
        return this.f13428b;
    }
}
