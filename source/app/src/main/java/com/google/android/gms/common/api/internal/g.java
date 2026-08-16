package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.f;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;

@C0.a
public class g {

    public final Set f61152a = Collections.newSetFromMap(new WeakHashMap());

    @NonNull
    @C0.a
    public static <L> f<L> a(@NonNull L l10, @NonNull Looper looper, @NonNull String str) {
        G0.A.s(l10, "Listener must not be null");
        G0.A.s(looper, "Looper must not be null");
        G0.A.s(str, "Listener type must not be null");
        return new f<>(looper, l10, str);
    }

    @NonNull
    @C0.a
    public static <L> f<L> b(@NonNull L l10, @NonNull Executor executor, @NonNull String str) {
        G0.A.s(l10, "Listener must not be null");
        G0.A.s(executor, "Executor must not be null");
        G0.A.s(str, "Listener type must not be null");
        return new f<>(executor, l10, str);
    }

    @NonNull
    @C0.a
    public static <L> f.a<L> c(@NonNull L l10, @NonNull String str) {
        G0.A.s(l10, "Listener must not be null");
        G0.A.s(str, "Listener type must not be null");
        G0.A.m(str, "Listener type must not be empty");
        return new f.a<>(l10, str);
    }

    @NonNull
    public final f d(@NonNull Object obj, @NonNull Looper looper, @NonNull String str) {
        Set set = this.f61152a;
        f a10 = a(obj, looper, "NO_TYPE");
        set.add(a10);
        return a10;
    }

    public final void e() {
        Iterator it = this.f61152a.iterator();
        while (it.hasNext()) {
            ((f) it.next()).a();
        }
        this.f61152a.clear();
    }
}
