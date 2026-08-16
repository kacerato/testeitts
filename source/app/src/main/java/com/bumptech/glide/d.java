package com.bumptech.glide;

import V.r;
import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.b;
import java.util.List;
import java.util.Map;

public class d extends ContextWrapper {

    @VisibleForTesting
    public static final l<?, ?> f58853k = new a();

    public final F.b f58854a;

    public final Registry f58855b;

    public final V.k f58856c;

    public final b.a f58857d;

    public final List<U.g<Object>> f58858e;

    public final Map<Class<?>, l<?, ?>> f58859f;

    public final com.bumptech.glide.load.engine.j f58860g;

    public final boolean f58861h;

    public final int f58862i;

    @Nullable
    @GuardedBy("this")
    public U.h f58863j;

    public d(@NonNull Context context, @NonNull F.b bVar, @NonNull Registry registry, @NonNull V.k kVar, @NonNull b.a aVar, @NonNull Map<Class<?>, l<?, ?>> map, @NonNull List<U.g<Object>> list, @NonNull com.bumptech.glide.load.engine.j jVar, boolean z10, int i10) {
        super(context.getApplicationContext());
        this.f58854a = bVar;
        this.f58855b = registry;
        this.f58856c = kVar;
        this.f58857d = aVar;
        this.f58858e = list;
        this.f58859f = map;
        this.f58860g = jVar;
        this.f58861h = z10;
        this.f58862i = i10;
    }

    @NonNull
    public <X> r<ImageView, X> a(@NonNull ImageView imageView, @NonNull Class<X> cls) {
        return this.f58856c.a(imageView, cls);
    }

    @NonNull
    public F.b b() {
        return this.f58854a;
    }

    public List<U.g<Object>> c() {
        return this.f58858e;
    }

    public synchronized U.h d() {
        try {
            if (this.f58863j == null) {
                this.f58863j = this.f58857d.build().j0();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f58863j;
    }

    @NonNull
    public <T> l<?, T> e(@NonNull Class<T> cls) {
        l<?, T> lVar = (l) this.f58859f.get(cls);
        if (lVar == null) {
            for (Map.Entry<Class<?>, l<?, ?>> entry : this.f58859f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    lVar = (l) entry.getValue();
                }
            }
        }
        return lVar == null ? (l<?, T>) f58853k : lVar;
    }

    @NonNull
    public com.bumptech.glide.load.engine.j f() {
        return this.f58860g;
    }

    public int g() {
        return this.f58862i;
    }

    @NonNull
    public Registry h() {
        return this.f58855b;
    }

    public boolean i() {
        return this.f58861h;
    }
}
