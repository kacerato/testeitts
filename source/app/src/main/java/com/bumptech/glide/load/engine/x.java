package com.bumptech.glide.load.engine;

import D.d;
import J.n;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.e;
import java.util.Collections;
import java.util.List;

public class x implements e, e.a {

    public static final String f59299i = "SourceGenerator";

    public final f<?> f59300b;

    public final e.a f59301c;

    public int f59302d;

    public b f59303e;

    public Object f59304f;

    public volatile n.a<?> f59305g;

    public c f59306h;

    public class a implements d.a<Object> {

        public final n.a f59307b;

        public a(n.a aVar) {
            this.f59307b = aVar;
        }

        @Override
        public void c(@Nullable Object obj) {
            if (x.this.g(this.f59307b)) {
                x.this.h(this.f59307b, obj);
            }
        }

        @Override
        public void d(@NonNull Exception exc) {
            if (x.this.g(this.f59307b)) {
                x.this.i(this.f59307b, exc);
            }
        }
    }

    public x(f<?> fVar, e.a aVar) {
        this.f59300b = fVar;
        this.f59301c = aVar;
    }

    @Override
    public void a(C.e eVar, Object obj, D.d<?> dVar, C.a aVar, C.e eVar2) {
        this.f59301c.a(eVar, obj, dVar, this.f59305g.f10129c.b(), eVar);
    }

    @Override
    public boolean b() {
        Object obj = this.f59304f;
        if (obj != null) {
            this.f59304f = null;
            d(obj);
        }
        b bVar = this.f59303e;
        if (bVar != null && bVar.b()) {
            return true;
        }
        this.f59303e = null;
        this.f59305g = null;
        boolean z10 = false;
        while (!z10 && f()) {
            List<n.a<?>> g10 = this.f59300b.g();
            int i10 = this.f59302d;
            this.f59302d = i10 + 1;
            this.f59305g = g10.get(i10);
            if (this.f59305g != null && (this.f59300b.e().c(this.f59305g.f10129c.b()) || this.f59300b.t(this.f59305g.f10129c.a()))) {
                j(this.f59305g);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void c(C.e eVar, Exception exc, D.d<?> dVar, C.a aVar) {
        this.f59301c.c(eVar, exc, dVar, this.f59305g.f10129c.b());
    }

    @Override
    public void cancel() {
        n.a<?> aVar = this.f59305g;
        if (aVar != null) {
            aVar.f10129c.cancel();
        }
    }

    public final void d(Object obj) {
        long b10 = Y.g.b();
        try {
            C.d<X> p10 = this.f59300b.p(obj);
            d dVar = new d(p10, obj, this.f59300b.k());
            this.f59306h = new c(this.f59305g.f10127a, this.f59300b.o());
            this.f59300b.d().c(this.f59306h, dVar);
            if (Log.isLoggable(f59299i, 2)) {
                Log.v(f59299i, "Finished encoding source to cache, key: " + this.f59306h + ", data: " + obj + ", encoder: " + ((Object) p10) + ", duration: " + Y.g.a(b10));
            }
            this.f59305g.f10129c.cleanup();
            this.f59303e = new b(Collections.singletonList(this.f59305g.f10127a), this.f59300b, this);
        } catch (Throwable th2) {
            this.f59305g.f10129c.cleanup();
            throw th2;
        }
    }

    @Override
    public void e() {
        throw new UnsupportedOperationException();
    }

    public final boolean f() {
        return this.f59302d < this.f59300b.g().size();
    }

    public boolean g(n.a<?> aVar) {
        n.a<?> aVar2 = this.f59305g;
        return aVar2 != null && aVar2 == aVar;
    }

    public void h(n.a<?> aVar, Object obj) {
        i e10 = this.f59300b.e();
        if (obj != null && e10.c(aVar.f10129c.b())) {
            this.f59304f = obj;
            this.f59301c.e();
        } else {
            e.a aVar2 = this.f59301c;
            C.e eVar = aVar.f10127a;
            D.d<?> dVar = aVar.f10129c;
            aVar2.a(eVar, obj, dVar, dVar.b(), this.f59306h);
        }
    }

    public void i(n.a<?> aVar, @NonNull Exception exc) {
        e.a aVar2 = this.f59301c;
        c cVar = this.f59306h;
        D.d<?> dVar = aVar.f10129c;
        aVar2.c(cVar, exc, dVar, dVar.b());
    }

    public final void j(n.a<?> aVar) {
        this.f59305g.f10129c.e(this.f59300b.l(), new a(aVar));
    }
}
