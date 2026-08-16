package com.bumptech.glide.load.engine;

import J.n;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.engine.g;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class f<Transcode> {

    public final List<n.a<?>> f59118a = new ArrayList();

    public final List<C.e> f59119b = new ArrayList();

    public com.bumptech.glide.d f59120c;

    public Object f59121d;

    public int f59122e;

    public int f59123f;

    public Class<?> f59124g;

    public g.e f59125h;

    public C.h f59126i;

    public Map<Class<?>, C.l<?>> f59127j;

    public Class<Transcode> f59128k;

    public boolean f59129l;

    public boolean f59130m;

    public C.e f59131n;

    public com.bumptech.glide.h f59132o;

    public i f59133p;

    public boolean f59134q;

    public boolean f59135r;

    public void a() {
        this.f59120c = null;
        this.f59121d = null;
        this.f59131n = null;
        this.f59124g = null;
        this.f59128k = null;
        this.f59126i = null;
        this.f59132o = null;
        this.f59127j = null;
        this.f59133p = null;
        this.f59118a.clear();
        this.f59129l = false;
        this.f59119b.clear();
        this.f59130m = false;
    }

    public F.b b() {
        return this.f59120c.b();
    }

    public List<C.e> c() {
        if (!this.f59130m) {
            this.f59130m = true;
            this.f59119b.clear();
            List<n.a<?>> g10 = g();
            int size = g10.size();
            for (int i10 = 0; i10 < size; i10++) {
                n.a<?> aVar = g10.get(i10);
                if (!this.f59119b.contains(aVar.f10127a)) {
                    this.f59119b.add(aVar.f10127a);
                }
                for (int i11 = 0; i11 < aVar.f10128b.size(); i11++) {
                    if (!this.f59119b.contains(aVar.f10128b.get(i11))) {
                        this.f59119b.add(aVar.f10128b.get(i11));
                    }
                }
            }
        }
        return this.f59119b;
    }

    public G.a d() {
        return this.f59125h.a();
    }

    public i e() {
        return this.f59133p;
    }

    public int f() {
        return this.f59123f;
    }

    public List<n.a<?>> g() {
        if (!this.f59129l) {
            this.f59129l = true;
            this.f59118a.clear();
            List i10 = this.f59120c.h().i(this.f59121d);
            int size = i10.size();
            for (int i11 = 0; i11 < size; i11++) {
                n.a<?> b10 = ((J.n) i10.get(i11)).b(this.f59121d, this.f59122e, this.f59123f, this.f59126i);
                if (b10 != null) {
                    this.f59118a.add(b10);
                }
            }
        }
        return this.f59118a;
    }

    public <Data> r<Data, ?, Transcode> h(Class<Data> cls) {
        return this.f59120c.h().h(cls, this.f59124g, this.f59128k);
    }

    public Class<?> i() {
        return this.f59121d.getClass();
    }

    public List<J.n<File, ?>> j(File file) throws Registry.NoModelLoaderAvailableException {
        return this.f59120c.h().i(file);
    }

    public C.h k() {
        return this.f59126i;
    }

    public com.bumptech.glide.h l() {
        return this.f59132o;
    }

    public List<Class<?>> m() {
        return this.f59120c.h().j(this.f59121d.getClass(), this.f59124g, this.f59128k);
    }

    public <Z> C.k<Z> n(t<Z> tVar) {
        return this.f59120c.h().k(tVar);
    }

    public C.e o() {
        return this.f59131n;
    }

    public <X> C.d<X> p(X x10) throws Registry.NoSourceEncoderAvailableException {
        return this.f59120c.h().m(x10);
    }

    public Class<?> q() {
        return this.f59128k;
    }

    public <Z> C.l<Z> r(Class<Z> cls) {
        C.l<Z> lVar = (C.l) this.f59127j.get(cls);
        if (lVar == null) {
            Iterator<Map.Entry<Class<?>, C.l<?>>> it = this.f59127j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, C.l<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    lVar = (C.l) next.getValue();
                    break;
                }
            }
        }
        if (lVar != null) {
            return lVar;
        }
        if (!this.f59127j.isEmpty() || !this.f59134q) {
            return L.k.a();
        }
        throw new IllegalArgumentException("Missing transformation for " + ((Object) cls) + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    public int s() {
        return this.f59122e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean t(Class<?> cls) {
        return h(cls) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <R> void u(com.bumptech.glide.d dVar, Object obj, C.e eVar, int i10, int i11, i iVar, Class<?> cls, Class<R> cls2, com.bumptech.glide.h hVar, C.h hVar2, Map<Class<?>, C.l<?>> map, boolean z10, boolean z11, g.e eVar2) {
        this.f59120c = dVar;
        this.f59121d = obj;
        this.f59131n = eVar;
        this.f59122e = i10;
        this.f59123f = i11;
        this.f59133p = iVar;
        this.f59124g = cls;
        this.f59125h = eVar2;
        this.f59128k = cls2;
        this.f59132o = hVar;
        this.f59126i = hVar2;
        this.f59127j = map;
        this.f59134q = z10;
        this.f59135r = z11;
    }

    public boolean v(t<?> tVar) {
        return this.f59120c.h().n(tVar);
    }

    public boolean w() {
        return this.f59135r;
    }

    public boolean x(C.e eVar) {
        List<n.a<?>> g10 = g();
        int size = g10.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (g10.get(i10).f10127a.equals(eVar)) {
                return true;
            }
        }
        return false;
    }
}
