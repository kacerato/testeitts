package j3;

import K2.g;
import K2.p;
import T2.C3049g;
import T2.F;
import T2.InterfaceC3050h;
import T2.k;
import T2.v;
import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import eg.AbstractC13100M;
import eg.C13151y0;
import java.lang.annotation.Annotation;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class c {

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,158:1\n*E\n"})
    public static final class a<T> implements k {

        public static final a<T> f92559a = new a<>();

        @Override
        public final AbstractC13100M a(InterfaceC3050h interfaceC3050h) {
            M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
            Object j10 = interfaceC3050h.j(F.a(Annotation.class, Executor.class));
            M.o(j10, "c.get(Qualified.qualifie\u2026a, Executor::class.java))");
            return C13151y0.c((Executor) j10);
        }
    }

    @NotNull
    public static final g a(@NotNull b bVar, @NotNull String name) {
        M.p(bVar, "<this>");
        M.p(name, "name");
        g q10 = g.q(name);
        M.o(q10, "getInstance(name)");
        return q10;
    }

    public static final <T extends Annotation> C3049g<AbstractC13100M> b() {
        M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
        C3049g.b f10 = C3049g.f(F.a(Annotation.class, AbstractC13100M.class));
        M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
        C3049g.b b10 = f10.b(v.l(F.a(Annotation.class, Executor.class)));
        M.w();
        C3049g<AbstractC13100M> d10 = b10.f(a.f92559a).d();
        M.o(d10, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        return d10;
    }

    @NotNull
    public static final g c(@NotNull b bVar) {
        M.p(bVar, "<this>");
        g p10 = g.p();
        M.o(p10, "getInstance()");
        return p10;
    }

    @NotNull
    public static final p d(@NotNull b bVar) {
        M.p(bVar, "<this>");
        p s10 = c(b.f92558a).s();
        M.o(s10, "Firebase.app.options");
        return s10;
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.", replaceWith = @InterfaceC14412g0(expression = "", imports = {}))
    @Nullable
    public static final g e(@NotNull b bVar, @NotNull Context context) {
        M.p(bVar, "<this>");
        M.p(context, "context");
        return g.x(context);
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.", replaceWith = @InterfaceC14412g0(expression = "", imports = {}))
    @NotNull
    public static final g f(@NotNull b bVar, @NotNull Context context, @NotNull p options) {
        M.p(bVar, "<this>");
        M.p(context, "context");
        M.p(options, "options");
        g y10 = g.y(context, options);
        M.o(y10, "initializeApp(context, options)");
        return y10;
    }

    @InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.", replaceWith = @InterfaceC14412g0(expression = "", imports = {}))
    @NotNull
    public static final g g(@NotNull b bVar, @NotNull Context context, @NotNull p options, @NotNull String name) {
        M.p(bVar, "<this>");
        M.p(context, "context");
        M.p(options, "options");
        M.p(name, "name");
        g z10 = g.z(context, options, name);
        M.o(z10, "initializeApp(context, options, name)");
        return z10;
    }
}
