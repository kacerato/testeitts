package n0;

import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/QuaternionKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,509:1\n424#1:541\n426#1:542\n426#1:549\n426#1:551\n323#1:555\n622#2:510\n622#2:511\n622#2:512\n622#2:513\n622#2:514\n622#2:515\n622#2:516\n622#2:517\n622#2:518\n622#2:519\n622#2:520\n622#2:521\n622#2:522\n622#2:523\n622#2:524\n622#2:525\n622#2:526\n622#2:527\n622#2:528\n622#2:529\n622#2:530\n622#2:531\n622#2:532\n622#2:533\n622#2:534\n622#2:535\n622#2:536\n622#2:537\n622#2:538\n622#2:539\n622#2:540\n285#3,6:543\n265#3,2:552\n283#3:554\n283#3:556\n34#4:550\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/QuaternionKt\n*L\n432#1:541\n439#1:542\n449#1:549\n469#1:551\n492#1:555\n383#1:510\n384#1:511\n385#1:512\n386#1:513\n384#1:514\n385#1:515\n386#1:516\n390#1:517\n391#1:518\n392#1:519\n393#1:520\n390#1:521\n391#1:522\n392#1:523\n393#1:524\n397#1:525\n398#1:526\n399#1:527\n400#1:528\n397#1:529\n398#1:530\n399#1:531\n400#1:532\n404#1:533\n405#1:534\n406#1:535\n407#1:536\n404#1:537\n405#1:538\n406#1:539\n407#1:540\n444#1:543,6\n484#1:552,2\n484#1:554\n492#1:556\n449#1:550\n*E\n"})
public final class y {
    @NotNull
    public static final C14338c A(@NotNull w a10, float f10) {
        M.p(a10, "a");
        return new C14338c(a10.y() < f10, a10.B() < f10, a10.C() < f10, a10.x() < f10);
    }

    @NotNull
    public static final C14338c B(@NotNull w a10, @NotNull w b10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return new C14338c(a10.y() < b10.y(), a10.B() < b10.B(), a10.C() < b10.C(), a10.x() < b10.x());
    }

    @NotNull
    public static final C14338c C(@NotNull w a10, float f10) {
        M.p(a10, "a");
        return new C14338c(a10.y() <= f10, a10.B() <= f10, a10.C() <= f10, a10.x() <= f10);
    }

    @NotNull
    public static final C14338c D(@NotNull w a10, @NotNull w b10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return new C14338c(a10.y() <= b10.y(), a10.B() <= b10.B(), a10.C() <= b10.C(), a10.x() <= b10.x());
    }

    @NotNull
    public static final C14338c E(@NotNull w wVar, float f10) {
        M.p(wVar, "<this>");
        return new C14338c(wVar.y() < f10, wVar.B() < f10, wVar.C() < f10, wVar.x() < f10);
    }

    @NotNull
    public static final C14338c F(@NotNull w wVar, @NotNull C14342g b10) {
        M.p(wVar, "<this>");
        M.p(b10, "b");
        return new C14338c(wVar.y() < b10.Q(), wVar.B() < b10.U(), wVar.C() < b10.V(), wVar.x() < b10.P());
    }

    @NotNull
    public static final C14338c G(@NotNull w wVar, float f10) {
        M.p(wVar, "<this>");
        return new C14338c(wVar.y() <= f10, wVar.B() <= f10, wVar.C() <= f10, wVar.x() <= f10);
    }

    @NotNull
    public static final C14338c H(@NotNull w wVar, @NotNull C14342g b10) {
        M.p(wVar, "<this>");
        M.p(b10, "b");
        return new C14338c(wVar.y() <= b10.Q(), wVar.B() <= b10.U(), wVar.C() <= b10.V(), wVar.x() <= b10.P());
    }

    @NotNull
    public static final w I(float f10, @NotNull w q10) {
        M.p(q10, "q");
        return new w(f10 - q10.y(), f10 - q10.B(), f10 - q10.C(), f10 - q10.x());
    }

    @NotNull
    public static final C14338c J(@NotNull w wVar, float f10) {
        M.p(wVar, "<this>");
        return new C14338c(!(wVar.y() == f10), !(wVar.B() == f10), !(wVar.C() == f10), !(wVar.x() == f10));
    }

    @NotNull
    public static final C14338c K(@NotNull w wVar, @NotNull C14342g b10) {
        M.p(wVar, "<this>");
        M.p(b10, "b");
        return new C14338c(!(wVar.y() == b10.Q()), !(wVar.B() == b10.U()), !(wVar.C() == b10.V()), !(wVar.x() == b10.P()));
    }

    @NotNull
    public static final w L(@NotNull w a10, @NotNull w b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return M(z(a10, b10, f10));
    }

    @NotNull
    public static final w M(@NotNull w q10) {
        M.p(q10, "q");
        float sqrt = 1.0f / ((float) Math.sqrt((((q10.y() * q10.y()) + (q10.B() * q10.B())) + (q10.C() * q10.C())) + (q10.x() * q10.x())));
        return new w(q10.y() * sqrt, q10.B() * sqrt, q10.C() * sqrt, q10.x() * sqrt);
    }

    @NotNull
    public static final C14338c N(@NotNull w a10, float f10, float f11) {
        M.p(a10, "a");
        return new C14338c(!(Math.abs(a10.y() - f10) < f11), !(Math.abs(a10.B() - f10) < f11), !(Math.abs(a10.C() - f10) < f11), !(Math.abs(a10.x() - f10) < f11));
    }

    @NotNull
    public static final C14338c O(@NotNull w a10, @NotNull w b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return new C14338c(!(Math.abs(a10.y() - b10.y()) < f10), !(Math.abs(a10.B() - b10.B()) < f10), !(Math.abs(a10.C() - b10.C()) < f10), !(Math.abs(a10.x() - b10.x()) < f10));
    }

    public static C14338c P(w a10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        M.p(a10, "a");
        return new C14338c(!(Math.abs(a10.y() - f10) < f11), !(Math.abs(a10.B() - f10) < f11), !(Math.abs(a10.C() - f10) < f11), !(Math.abs(a10.x() - f10) < f11));
    }

    public static C14338c Q(w a10, w b10, float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f10 = 0.0f;
        }
        M.p(a10, "a");
        M.p(b10, "b");
        return new C14338c(!(Math.abs(a10.y() - b10.y()) < f10), !(Math.abs(a10.B() - b10.B()) < f10), !(Math.abs(a10.C() - b10.C()) < f10), !(Math.abs(a10.x() - b10.x()) < f10));
    }

    @NotNull
    public static final w R(float f10, @NotNull w q10) {
        M.p(q10, "q");
        return new w(q10.y() + f10, q10.B() + f10, q10.C() + f10, f10 + q10.x());
    }

    @NotNull
    public static final w S(@NotNull w a10, @NotNull w b10, float f10, float f11) {
        M.p(a10, "a");
        M.p(b10, "b");
        float y10 = (a10.y() * b10.y()) + (a10.B() * b10.B()) + (a10.C() * b10.C()) + (a10.x() * b10.x());
        if (y10 < 0.0f) {
            y10 = -y10;
            b10 = b10.f0();
        }
        if (y10 >= f11) {
            return L(a10, b10, f10);
        }
        float sin = (float) Math.sin((float) Math.acos(y10));
        float sin2 = (float) Math.sin((1.0f - f10) * r9);
        w wVar = new w(a10.y() * sin2, a10.B() * sin2, a10.C() * sin2, a10.x() * sin2);
        w wVar2 = new w(wVar.y() / sin, wVar.B() / sin, wVar.C() / sin, wVar.x() / sin);
        float sin3 = (float) Math.sin(f10 * r9);
        w wVar3 = new w(b10.y() * sin3, b10.B() * sin3, b10.C() * sin3, b10.x() * sin3);
        w wVar4 = new w(wVar3.y() / sin, wVar3.B() / sin, wVar3.C() / sin, wVar3.x() / sin);
        return new w(wVar2.y() + wVar4.y(), wVar2.B() + wVar4.B(), wVar2.C() + wVar4.C(), wVar2.x() + wVar4.x());
    }

    public static w T(w wVar, w wVar2, float f10, float f11, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            f11 = 0.9995f;
        }
        return S(wVar, wVar2, f10, f11);
    }

    @NotNull
    public static final w U(float f10, @NotNull w q10) {
        M.p(q10, "q");
        return new w(q10.y() * f10, q10.B() * f10, q10.C() * f10, f10 * q10.x());
    }

    @NotNull
    public static final w a(@NotNull w q10) {
        M.p(q10, "q");
        return new w(Math.abs(q10.y()), Math.abs(q10.B()), Math.abs(q10.C()), Math.abs(q10.x()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x003d, code lost:
    
        if (r0 > 1.0f) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final float b(@NotNull w a10, @NotNull w b10) {
        M.p(a10, "a");
        M.p(b10, "b");
        float y10 = (a10.y() * b10.y()) + (a10.B() * b10.B()) + (a10.C() * b10.C()) + (a10.x() * b10.x());
        float f10 = y10 >= -1.0f ? 1.0f : -1.0f;
        y10 = f10;
        return ((float) Math.acos(Math.abs(y10))) * 2.0f;
    }

    @NotNull
    public static final w c(@NotNull w q10) {
        M.p(q10, "q");
        return new w(-q10.y(), -q10.B(), -q10.C(), q10.x());
    }

    @NotNull
    public static final w d(@NotNull w a10, @NotNull w b10) {
        M.p(a10, "a");
        M.p(b10, "b");
        w wVar = new w((((a10.x() * b10.y()) + (a10.y() * b10.x())) + (a10.B() * b10.C())) - (a10.C() * b10.B()), ((a10.x() * b10.B()) - (a10.y() * b10.C())) + (a10.B() * b10.x()) + (a10.C() * b10.y()), (((a10.x() * b10.C()) + (a10.y() * b10.B())) - (a10.B() * b10.y())) + (a10.C() * b10.x()), (((a10.x() * b10.x()) - (a10.y() * b10.y())) - (a10.B() * b10.B())) - (a10.C() * b10.C()));
        return new w(wVar.y(), wVar.B(), wVar.C(), 0.0f);
    }

    @NotNull
    public static final w e(float f10, @NotNull w q10) {
        M.p(q10, "q");
        return new w(f10 / q10.y(), f10 / q10.B(), f10 / q10.C(), f10 / q10.x());
    }

    public static final float f(@NotNull w a10, @NotNull w b10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return (a10.y() * b10.y()) + (a10.B() * b10.B()) + (a10.C() * b10.C()) + (a10.x() * b10.x());
    }

    @NotNull
    public static final C14338c g(@NotNull w wVar, float f10) {
        M.p(wVar, "<this>");
        return new C14338c(wVar.y() == f10, wVar.B() == f10, wVar.C() == f10, wVar.x() == f10);
    }

    @NotNull
    public static final C14338c h(@NotNull w wVar, @NotNull C14342g b10) {
        M.p(wVar, "<this>");
        M.p(b10, "b");
        return new C14338c(wVar.y() == b10.Q(), wVar.B() == b10.U(), wVar.C() == b10.V(), wVar.x() == b10.P());
    }

    @NotNull
    public static final C14338c i(@NotNull w a10, float f10, float f11) {
        M.p(a10, "a");
        return new C14338c(Math.abs(a10.y() - f10) < f11, Math.abs(a10.B() - f10) < f11, Math.abs(a10.C() - f10) < f11, Math.abs(a10.x() - f10) < f11);
    }

    @NotNull
    public static final C14338c j(@NotNull w a10, @NotNull w b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return new C14338c(Math.abs(a10.y() - b10.y()) < f10, Math.abs(a10.B() - b10.B()) < f10, Math.abs(a10.C() - b10.C()) < f10, Math.abs(a10.x() - b10.x()) < f10);
    }

    public static C14338c k(w a10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        M.p(a10, "a");
        return new C14338c(Math.abs(a10.y() - f10) < f11, Math.abs(a10.B() - f10) < f11, Math.abs(a10.C() - f10) < f11, Math.abs(a10.x() - f10) < f11);
    }

    public static C14338c l(w a10, w b10, float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f10 = 0.0f;
        }
        M.p(a10, "a");
        M.p(b10, "b");
        return new C14338c(Math.abs(a10.y() - b10.y()) < f10, Math.abs(a10.B() - b10.B()) < f10, Math.abs(a10.C() - b10.C()) < f10, Math.abs(a10.x() - b10.x()) < f10);
    }

    @NotNull
    public static final C14341f m(@NotNull w q10, @NotNull C order) {
        M.p(q10, "q");
        M.p(order, "order");
        return s.m(s.O(q10), order);
    }

    public static C14341f n(w wVar, C c10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            c10 = C.ZYX;
        }
        return m(wVar, c10);
    }

    @NotNull
    public static final C14338c o(@NotNull w a10, float f10) {
        M.p(a10, "a");
        return new C14338c(a10.y() > f10, a10.B() > f10, a10.C() > f10, a10.x() > f10);
    }

    @NotNull
    public static final C14338c p(@NotNull w a10, @NotNull w b10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return new C14338c(a10.y() > b10.B(), a10.B() > b10.B(), a10.C() > b10.C(), a10.x() > b10.x());
    }

    @NotNull
    public static final C14338c q(@NotNull w a10, float f10) {
        M.p(a10, "a");
        return new C14338c(a10.y() >= f10, a10.B() >= f10, a10.C() >= f10, a10.x() >= f10);
    }

    @NotNull
    public static final C14338c r(@NotNull w a10, @NotNull w b10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return new C14338c(a10.y() >= b10.y(), a10.B() >= b10.B(), a10.C() >= b10.C(), a10.x() >= b10.x());
    }

    @NotNull
    public static final C14338c s(@NotNull w wVar, float f10) {
        M.p(wVar, "<this>");
        return new C14338c(wVar.y() > f10, wVar.B() > f10, wVar.C() > f10, wVar.x() > f10);
    }

    @NotNull
    public static final C14338c t(@NotNull w wVar, @NotNull C14342g b10) {
        M.p(wVar, "<this>");
        M.p(b10, "b");
        return new C14338c(wVar.y() > b10.Q(), wVar.B() > b10.U(), wVar.C() > b10.V(), wVar.x() > b10.P());
    }

    @NotNull
    public static final C14338c u(@NotNull w wVar, float f10) {
        M.p(wVar, "<this>");
        return new C14338c(wVar.y() >= f10, wVar.B() >= f10, wVar.C() >= f10, wVar.x() >= f10);
    }

    @NotNull
    public static final C14338c v(@NotNull w wVar, @NotNull C14342g b10) {
        M.p(wVar, "<this>");
        M.p(b10, "b");
        return new C14338c(wVar.y() >= b10.Q(), wVar.B() >= b10.U(), wVar.C() >= b10.V(), wVar.x() >= b10.P());
    }

    @NotNull
    public static final w w(@NotNull w q10) {
        M.p(q10, "q");
        float y10 = 1.0f / ((((q10.y() * q10.y()) + (q10.B() * q10.B())) + (q10.C() * q10.C())) + (q10.x() * q10.x()));
        return new w((-q10.y()) * y10, (-q10.B()) * y10, (-q10.C()) * y10, q10.x() * y10);
    }

    public static final float x(@NotNull w q10) {
        M.p(q10, "q");
        return (float) Math.sqrt((q10.y() * q10.y()) + (q10.B() * q10.B()) + (q10.C() * q10.C()) + (q10.x() * q10.x()));
    }

    public static final float y(@NotNull w q10) {
        M.p(q10, "q");
        return (q10.y() * q10.y()) + (q10.B() * q10.B()) + (q10.C() * q10.C()) + (q10.x() * q10.x());
    }

    @NotNull
    public static final w z(@NotNull w a10, @NotNull w b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        float f11 = 1.0f - f10;
        w wVar = new w(a10.y() * f11, a10.B() * f11, a10.C() * f11, f11 * a10.x());
        w wVar2 = new w(b10.y() * f10, b10.B() * f10, b10.C() * f10, f10 * b10.x());
        return new w(wVar.y() + wVar2.y(), wVar.B() + wVar2.B(), wVar.C() + wVar2.C(), wVar.x() + wVar2.x());
    }
}
