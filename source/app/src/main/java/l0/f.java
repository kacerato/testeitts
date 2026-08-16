package L0;

import G0.A;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public final class f {

    public final List f11503a;

    @Nullable
    public final L0.a f11504b;

    @Nullable
    public final Executor f11505c;

    public static class a {

        public final List f11506a = new ArrayList();

        @Nullable
        public L0.a f11507b;

        @Nullable
        public Executor f11508c;

        @I2.a
        @NonNull
        public a a(@NonNull com.google.android.gms.common.api.n nVar) {
            this.f11506a.add(nVar);
            return this;
        }

        @NonNull
        public f b() {
            return new f(this.f11506a, this.f11507b, this.f11508c, true, null);
        }

        @I2.a
        @NonNull
        public a c(@NonNull L0.a aVar) {
            return d(aVar, null);
        }

        @I2.a
        @NonNull
        public a d(@NonNull L0.a aVar, @Nullable Executor executor) {
            this.f11507b = aVar;
            this.f11508c = executor;
            return this;
        }
    }

    public f(List list, L0.a aVar, Executor executor, boolean z10, l lVar) {
        A.s(list, "APIs must not be null.");
        A.b(!list.isEmpty(), "APIs must not be empty.");
        if (executor != null) {
            A.s(aVar, "Listener must not be null when listener executor is set.");
        }
        this.f11503a = list;
        this.f11504b = aVar;
        this.f11505c = executor;
    }

    @NonNull
    public static a d() {
        return new a();
    }

    @NonNull
    public List<com.google.android.gms.common.api.n> a() {
        return this.f11503a;
    }

    @Nullable
    public L0.a b() {
        return this.f11504b;
    }

    @Nullable
    public Executor c() {
        return this.f11505c;
    }
}
