package M2;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import java.util.List;
import java.util.Map;
import java.util.Set;

public interface a {

    @C0.a
    public interface InterfaceC0406a {
        @C0.a
        void a();

        @C0.a
        void b();

        @C0.a
        void c(@NonNull Set<String> set);
    }

    @C0.a
    public interface b {
        @C0.a
        void a(int i10, @Nullable Bundle bundle);
    }

    @C0.a
    public static class c {

        @NonNull
        @C0.a
        public String f14491a;

        @NonNull
        @C0.a
        public String f14492b;

        @Nullable
        @C0.a
        public Object f14493c;

        @Nullable
        @C0.a
        public String f14494d;

        @C0.a
        public long f14495e;

        @Nullable
        @C0.a
        public String f14496f;

        @Nullable
        @C0.a
        public Bundle f14497g;

        @Nullable
        @C0.a
        public String f14498h;

        @Nullable
        @C0.a
        public Bundle f14499i;

        @C0.a
        public long f14500j;

        @Nullable
        @C0.a
        public String f14501k;

        @Nullable
        @C0.a
        public Bundle f14502l;

        @C0.a
        public long f14503m;

        @C0.a
        public boolean f14504n;

        @C0.a
        public long f14505o;
    }

    @C0.a
    void a(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle);

    @C0.a
    void b(@NonNull String str, @NonNull String str2, @NonNull Object obj);

    @C0.a
    @WorkerThread
    int c(@NonNull @Size(min = 1) String str);

    @C0.a
    void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle);

    @NonNull
    @C0.a
    @WorkerThread
    List<c> d(@NonNull String str, @Nullable @Size(max = 23, min = 1) String str2);

    @NonNull
    @C0.a
    @WorkerThread
    Map<String, Object> e(boolean z10);

    @C0.a
    void f(@NonNull c cVar);

    @Nullable
    @R2.a
    @C0.a
    InterfaceC0406a g(@NonNull String str, @NonNull b bVar);
}
