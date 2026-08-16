package com.bumptech.glide.load.engine;

import D.d;
import J.n;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.e;
import java.io.File;
import java.util.List;

public class b implements e, d.a<Object> {

    public final List<C.e> f59104b;

    public final f<?> f59105c;

    public final e.a f59106d;

    public int f59107e;

    public C.e f59108f;

    public List<J.n<File, ?>> f59109g;

    public int f59110h;

    public volatile n.a<?> f59111i;

    public File f59112j;

    public b(f<?> fVar, e.a aVar) {
        this(fVar.c(), fVar, aVar);
    }

    private boolean a() {
        return this.f59110h < this.f59109g.size();
    }

    @Override
    public boolean b() {
        while (true) {
            boolean z10 = false;
            if (this.f59109g != null && a()) {
                this.f59111i = null;
                while (!z10 && a()) {
                    List<J.n<File, ?>> list = this.f59109g;
                    int i10 = this.f59110h;
                    this.f59110h = i10 + 1;
                    this.f59111i = list.get(i10).b(this.f59112j, this.f59105c.s(), this.f59105c.f(), this.f59105c.k());
                    if (this.f59111i != null && this.f59105c.t(this.f59111i.f10129c.a())) {
                        this.f59111i.f10129c.e(this.f59105c.l(), this);
                        z10 = true;
                    }
                }
                return z10;
            }
            int i11 = this.f59107e + 1;
            this.f59107e = i11;
            if (i11 >= this.f59104b.size()) {
                return false;
            }
            C.e eVar = this.f59104b.get(this.f59107e);
            File b10 = this.f59105c.d().b(new c(eVar, this.f59105c.o()));
            this.f59112j = b10;
            if (b10 != null) {
                this.f59108f = eVar;
                this.f59109g = this.f59105c.j(b10);
                this.f59110h = 0;
            }
        }
    }

    @Override
    public void c(Object obj) {
        this.f59106d.a(this.f59108f, obj, this.f59111i.f10129c, C.a.DATA_DISK_CACHE, this.f59108f);
    }

    @Override
    public void cancel() {
        n.a<?> aVar = this.f59111i;
        if (aVar != null) {
            aVar.f10129c.cancel();
        }
    }

    @Override
    public void d(@NonNull Exception exc) {
        this.f59106d.c(this.f59108f, exc, this.f59111i.f10129c, C.a.DATA_DISK_CACHE);
    }

    public b(List<C.e> list, f<?> fVar, e.a aVar) {
        this.f59107e = -1;
        this.f59104b = list;
        this.f59105c = fVar;
        this.f59106d = aVar;
    }
}
