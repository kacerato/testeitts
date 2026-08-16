package L2;

import K2.o;
import Mf.l;
import androidx.annotation.NonNull;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class a {

    @Nullable
    public static volatile FirebaseAnalytics f11548a;

    @NotNull
    public static final Object f11549b = new Object();

    @androidx.annotation.Nullable
    public static final FirebaseAnalytics a() {
        return f11548a;
    }

    @NotNull
    public static final FirebaseAnalytics b(@NonNull K2.d dVar) {
        M.p(dVar, "<this>");
        if (f11548a == null) {
            synchronized (f11549b) {
                try {
                    if (f11548a == null) {
                        f11548a = FirebaseAnalytics.getInstance(o.c(K2.d.f10715a).n());
                    }
                    P0 p02 = P0.f98194a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics = f11548a;
        M.m(firebaseAnalytics);
        return firebaseAnalytics;
    }

    @NotNull
    public static final Object c() {
        return f11549b;
    }

    public static final void d(@NonNull FirebaseAnalytics firebaseAnalytics, @NonNull String name, @NonNull l<? super c, P0> block) {
        M.p(firebaseAnalytics, "<this>");
        M.p(name, "name");
        M.p(block, "block");
        c cVar = new c();
        block.invoke(cVar);
        firebaseAnalytics.c(name, cVar.a());
    }

    public static final void e(@Nullable FirebaseAnalytics firebaseAnalytics) {
        f11548a = firebaseAnalytics;
    }

    public static final void f(@NonNull FirebaseAnalytics firebaseAnalytics, @NonNull l<? super com.google.firebase.analytics.a, P0> block) {
        M.p(firebaseAnalytics, "<this>");
        M.p(block, "block");
        com.google.firebase.analytics.a aVar = new com.google.firebase.analytics.a();
        block.invoke(aVar);
        firebaseAnalytics.f(aVar.a());
    }
}
