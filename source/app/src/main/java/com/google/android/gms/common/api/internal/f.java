package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

@C0.a
public final class f<L> {

    public final Executor f61147a;

    @Nullable
    public volatile Object f61148b;

    @Nullable
    public volatile a f61149c;

    @C0.a
    public static final class a<L> {

        public final Object f61150a;

        public final String f61151b;

        @C0.a
        public a(L l10, String str) {
            this.f61150a = l10;
            this.f61151b = str;
        }

        @NonNull
        @C0.a
        public String a() {
            return this.f61151b + "@" + System.identityHashCode(this.f61150a);
        }

        @C0.a
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f61150a == aVar.f61150a && this.f61151b.equals(aVar.f61151b);
        }

        @C0.a
        public int hashCode() {
            return (System.identityHashCode(this.f61150a) * 31) + this.f61151b.hashCode();
        }
    }

    @C0.a
    public interface b<L> {
        @C0.a
        void a(@NonNull L l10);

        @C0.a
        void b();
    }

    @C0.a
    public f(@NonNull Looper looper, @NonNull L l10, @NonNull String str) {
        this.f61147a = new U0.a(looper);
        this.f61148b = G0.A.s(l10, "Listener must not be null");
        this.f61149c = new a(l10, G0.A.l(str));
    }

    @C0.a
    public void a() {
        this.f61148b = null;
        this.f61149c = null;
    }

    @Nullable
    @C0.a
    public a<L> b() {
        return this.f61149c;
    }

    @C0.a
    public boolean c() {
        return this.f61148b != null;
    }

    @C0.a
    public void d(@NonNull final b<? super L> bVar) {
        G0.A.s(bVar, "Notifier must not be null");
        this.f61147a.execute(new Runnable() {
            @Override
            public final void run() {
                com.google.android.gms.common.api.internal.f.this.e(bVar);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(b bVar) {
        Object obj = this.f61148b;
        if (obj == null) {
            bVar.b();
            return;
        }
        try {
            bVar.a(obj);
        } catch (RuntimeException e10) {
            bVar.b();
            throw e10;
        }
    }

    @C0.a
    public f(@NonNull Executor executor, @NonNull L l10, @NonNull String str) {
        this.f61147a = (Executor) G0.A.s(executor, "Executor must not be null");
        this.f61148b = G0.A.s(l10, "Listener must not be null");
        this.f61149c = new a(l10, G0.A.l(str));
    }
}
