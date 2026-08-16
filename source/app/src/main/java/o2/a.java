package O2;

import Mf.l;
import androidx.annotation.NonNull;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.internal.M;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class a {

    @Nullable
    public static volatile FirebaseAnalytics f16454a;

    @NotNull
    public static final Object f16455b = new Object();

    @androidx.annotation.Nullable
    public static final FirebaseAnalytics a() {
        return f16454a;
    }

    @NotNull
    public static final FirebaseAnalytics b(@NonNull j3.b bVar) {
        M.p(bVar, "<this>");
        if (f16454a == null) {
            synchronized (f16455b) {
                try {
                    if (f16454a == null) {
                        f16454a = FirebaseAnalytics.getInstance(j3.c.c(j3.b.f92558a).n());
                    }
                    P0 p02 = P0.f98194a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics = f16454a;
        M.m(firebaseAnalytics);
        return firebaseAnalytics;
    }

    @NotNull
    public static final Object c() {
        return f16455b;
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    public static final void d(@NonNull FirebaseAnalytics firebaseAnalytics, @NonNull String name, @NonNull l<? super c, P0> block) {
        M.p(firebaseAnalytics, "<this>");
        M.p(name, "name");
        M.p(block, "block");
        c cVar = new c();
        block.invoke(cVar);
        firebaseAnalytics.c(name, cVar.a());
    }

    public static final void e(@Nullable FirebaseAnalytics firebaseAnalytics) {
        f16454a = firebaseAnalytics;
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.")
    public static final void f(@NonNull FirebaseAnalytics firebaseAnalytics, @NonNull l<? super b, P0> block) {
        M.p(firebaseAnalytics, "<this>");
        M.p(block, "block");
        b bVar = new b();
        block.invoke(bVar);
        firebaseAnalytics.f(bVar.a());
    }
}
