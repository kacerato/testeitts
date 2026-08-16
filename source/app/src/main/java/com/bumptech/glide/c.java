package com.bumptech.glide;

import G.a;
import G.l;
import R.l;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.os.BuildCompat;
import com.bumptech.glide.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class c {

    public com.bumptech.glide.load.engine.j f58833b;

    public F.e f58834c;

    public F.b f58835d;

    public G.j f58836e;

    public H.a f58837f;

    public H.a f58838g;

    public a.InterfaceC0134a f58839h;

    public G.l f58840i;

    public R.d f58841j;

    @Nullable
    public l.b f58844m;

    public H.a f58845n;

    public boolean f58846o;

    @Nullable
    public List<U.g<Object>> f58847p;

    public boolean f58848q;

    public boolean f58849r;

    public final Map<Class<?>, l<?, ?>> f58832a = new ArrayMap();

    public int f58842k = 4;

    public b.a f58843l = new a();

    public class a implements b.a {
        public a() {
        }

        @Override
        @NonNull
        public U.h build() {
            return new U.h();
        }
    }

    public class b implements b.a {

        public final U.h f58851a;

        public b(U.h hVar) {
            this.f58851a = hVar;
        }

        @Override
        @NonNull
        public U.h build() {
            U.h hVar = this.f58851a;
            return hVar != null ? hVar : new U.h();
        }
    }

    @NonNull
    public c a(@NonNull U.g<Object> gVar) {
        if (this.f58847p == null) {
            this.f58847p = new ArrayList();
        }
        this.f58847p.add(gVar);
        return this;
    }

    @NonNull
    public com.bumptech.glide.b b(@NonNull Context context) {
        if (this.f58837f == null) {
            this.f58837f = H.a.m();
        }
        if (this.f58838g == null) {
            this.f58838g = H.a.h();
        }
        if (this.f58845n == null) {
            this.f58845n = H.a.e();
        }
        if (this.f58840i == null) {
            this.f58840i = new l.a(context).a();
        }
        if (this.f58841j == null) {
            this.f58841j = new R.f();
        }
        if (this.f58834c == null) {
            int b10 = this.f58840i.b();
            if (b10 > 0) {
                this.f58834c = new F.k(b10);
            } else {
                this.f58834c = new F.f();
            }
        }
        if (this.f58835d == null) {
            this.f58835d = new F.j(this.f58840i.a());
        }
        if (this.f58836e == null) {
            this.f58836e = new G.i(this.f58840i.d());
        }
        if (this.f58839h == null) {
            this.f58839h = new G.h(context);
        }
        if (this.f58833b == null) {
            this.f58833b = new com.bumptech.glide.load.engine.j(this.f58836e, this.f58839h, this.f58838g, this.f58837f, H.a.p(), this.f58845n, this.f58846o);
        }
        List<U.g<Object>> list = this.f58847p;
        if (list == null) {
            this.f58847p = Collections.emptyList();
        } else {
            this.f58847p = Collections.unmodifiableList(list);
        }
        return new com.bumptech.glide.b(context, this.f58833b, this.f58836e, this.f58834c, this.f58835d, new R.l(this.f58844m), this.f58841j, this.f58842k, this.f58843l, this.f58832a, this.f58847p, this.f58848q, this.f58849r);
    }

    @NonNull
    public c c(@Nullable H.a aVar) {
        this.f58845n = aVar;
        return this;
    }

    @NonNull
    public c d(@Nullable F.b bVar) {
        this.f58835d = bVar;
        return this;
    }

    @NonNull
    public c e(@Nullable F.e eVar) {
        this.f58834c = eVar;
        return this;
    }

    @NonNull
    public c f(@Nullable R.d dVar) {
        this.f58841j = dVar;
        return this;
    }

    @NonNull
    public c g(@Nullable U.h hVar) {
        return h(new b(hVar));
    }

    @NonNull
    public c h(@NonNull b.a aVar) {
        this.f58843l = (b.a) Y.k.d(aVar);
        return this;
    }

    @NonNull
    public <T> c i(@NonNull Class<T> cls, @Nullable l<?, T> lVar) {
        this.f58832a.put(cls, lVar);
        return this;
    }

    @NonNull
    public c j(@Nullable a.InterfaceC0134a interfaceC0134a) {
        this.f58839h = interfaceC0134a;
        return this;
    }

    @NonNull
    public c k(@Nullable H.a aVar) {
        this.f58838g = aVar;
        return this;
    }

    public c l(com.bumptech.glide.load.engine.j jVar) {
        this.f58833b = jVar;
        return this;
    }

    public c m(boolean z10) {
        if (!BuildCompat.isAtLeastQ()) {
            return this;
        }
        this.f58849r = z10;
        return this;
    }

    @NonNull
    public c n(boolean z10) {
        this.f58846o = z10;
        return this;
    }

    @NonNull
    public c o(int i10) {
        if (i10 < 2 || i10 > 6) {
            throw new IllegalArgumentException("Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR");
        }
        this.f58842k = i10;
        return this;
    }

    public c p(boolean z10) {
        this.f58848q = z10;
        return this;
    }

    @NonNull
    public c q(@Nullable G.j jVar) {
        this.f58836e = jVar;
        return this;
    }

    @NonNull
    public c r(@NonNull l.a aVar) {
        return s(aVar.a());
    }

    @NonNull
    public c s(@Nullable G.l lVar) {
        this.f58840i = lVar;
        return this;
    }

    public void t(@Nullable l.b bVar) {
        this.f58844m = bVar;
    }

    @Deprecated
    public c u(@Nullable H.a aVar) {
        return v(aVar);
    }

    @NonNull
    public c v(@Nullable H.a aVar) {
        this.f58837f = aVar;
        return this;
    }
}
