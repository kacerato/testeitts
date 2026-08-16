package com.bumptech.glide.load.engine;

import D.d;
import J.n;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.e;
import java.io.File;
import java.util.List;

public class u implements e, d.a<Object> {

    public final e.a f59277b;

    public final f<?> f59278c;

    public int f59279d;

    public int f59280e = -1;

    public C.e f59281f;

    public List<J.n<File, ?>> f59282g;

    public int f59283h;

    public volatile n.a<?> f59284i;

    public File f59285j;

    public v f59286k;

    public u(f<?> fVar, e.a aVar) {
        this.f59278c = fVar;
        this.f59277b = aVar;
    }

    private boolean a() {
        return this.f59283h < this.f59282g.size();
    }

    @Override
    public boolean b() {
        List<C.e> c10 = this.f59278c.c();
        boolean z10 = false;
        if (c10.isEmpty()) {
            return false;
        }
        List<Class<?>> m10 = this.f59278c.m();
        if (m10.isEmpty()) {
            if (File.class.equals(this.f59278c.q())) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + ((Object) this.f59278c.i()) + " to " + ((Object) this.f59278c.q()));
        }
        while (true) {
            if (this.f59282g != null && a()) {
                this.f59284i = null;
                while (!z10 && a()) {
                    List<J.n<File, ?>> list = this.f59282g;
                    int i10 = this.f59283h;
                    this.f59283h = i10 + 1;
                    this.f59284i = list.get(i10).b(this.f59285j, this.f59278c.s(), this.f59278c.f(), this.f59278c.k());
                    if (this.f59284i != null && this.f59278c.t(this.f59284i.f10129c.a())) {
                        this.f59284i.f10129c.e(this.f59278c.l(), this);
                        z10 = true;
                    }
                }
                return z10;
            }
            int i11 = this.f59280e + 1;
            this.f59280e = i11;
            if (i11 >= m10.size()) {
                int i12 = this.f59279d + 1;
                this.f59279d = i12;
                if (i12 >= c10.size()) {
                    return false;
                }
                this.f59280e = 0;
            }
            C.e eVar = c10.get(this.f59279d);
            Class<?> cls = m10.get(this.f59280e);
            this.f59286k = new v(this.f59278c.b(), eVar, this.f59278c.o(), this.f59278c.s(), this.f59278c.f(), this.f59278c.r(cls), cls, this.f59278c.k());
            File b10 = this.f59278c.d().b(this.f59286k);
            this.f59285j = b10;
            if (b10 != null) {
                this.f59281f = eVar;
                this.f59282g = this.f59278c.j(b10);
                this.f59283h = 0;
            }
        }
    }

    @Override
    public void c(Object obj) {
        this.f59277b.a(this.f59281f, obj, this.f59284i.f10129c, C.a.RESOURCE_DISK_CACHE, this.f59286k);
    }

    @Override
    public void cancel() {
        n.a<?> aVar = this.f59284i;
        if (aVar != null) {
            aVar.f10129c.cancel();
        }
    }

    @Override
    public void d(@NonNull Exception exc) {
        this.f59277b.c(this.f59286k, exc, this.f59284i.f10129c, C.a.RESOURCE_DISK_CACHE);
    }
}
