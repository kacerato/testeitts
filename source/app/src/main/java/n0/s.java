package n0;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/MatrixKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 4 Vector.kt\ncom/google/android/filament/utils/Float3\n+ 5 Vector.kt\ncom/google/android/filament/utils/Float4\n+ 6 Matrix.kt\ncom/google/android/filament/utils/Mat4\n+ 7 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,908:1\n134#2:909\n134#2:911\n145#2:913\n145#2:915\n145#2:917\n145#2:919\n134#2:921\n134#2:923\n134#2:925\n134#2:927\n145#2:929\n145#2:931\n145#2:933\n145#2:935\n622#3:910\n622#3:912\n622#3:914\n622#3:916\n622#3:918\n622#3:920\n622#3:922\n622#3:924\n622#3:926\n622#3:928\n622#3:930\n622#3:932\n622#3:934\n622#3:936\n622#3:938\n622#3:940\n622#3:942\n622#3:943\n622#3:945\n622#3:947\n622#3:949\n622#3:951\n622#3:953\n622#3:955\n622#3:957\n622#3:959\n622#3:961\n622#3:963\n622#3:965\n622#3:967\n622#3:969\n622#3:971\n622#3:973\n622#3:975\n622#3:977\n622#3:979\n622#3:981\n622#3:983\n622#3:985\n622#3:987\n622#3:989\n622#3:991\n622#3:992\n622#3:994\n622#3:996\n622#3:998\n622#3:1000\n622#3:1002\n622#3:1004\n622#3:1006\n622#3:1008\n622#3:1010\n622#3:1012\n622#3:1014\n622#3:1016\n622#3:1018\n622#3:1020\n622#3:1022\n622#3:1024\n622#3:1026\n622#3:1028\n622#3:1030\n622#3:1032\n622#3:1034\n622#3:1036\n622#3:1038\n622#3:1040\n622#3:1042\n622#3:1044\n622#3:1046\n730#3:1049\n794#3:1060\n794#3:1073\n731#3:1081\n727#3:1088\n738#3:1090\n738#3:1091\n315#4:937\n315#4:939\n315#4:941\n315#4:944\n315#4:946\n333#4:948\n333#4:950\n333#4:952\n333#4:954\n333#4:956\n333#4:958\n315#4:960\n315#4:962\n315#4:964\n315#4:966\n315#4:968\n315#4:970\n333#4:972\n333#4:974\n333#4:976\n333#4:978\n333#4:980\n333#4:982\n336#4:1061\n337#4,3:1063\n336#4:1074\n337#4,3:1076\n323#4:1089\n575#5:984\n575#5:986\n575#5:988\n575#5:990\n575#5:993\n575#5:995\n575#5:997\n599#5:999\n599#5:1001\n599#5:1003\n599#5:1005\n599#5:1007\n599#5:1009\n599#5:1011\n599#5:1013\n575#5:1015\n575#5:1017\n575#5:1019\n575#5:1021\n575#5:1023\n575#5:1025\n575#5:1027\n575#5:1029\n599#5:1031\n599#5:1033\n599#5:1035\n599#5:1037\n599#5:1039\n599#5:1041\n599#5:1043\n599#5:1045\n424#5:1048\n424#5:1051\n424#5:1053\n424#5:1080\n287#6:1047\n289#6:1050\n266#6:1052\n271#6,6:1054\n266#6:1079\n271#6,6:1082\n48#7:1062\n48#7:1066\n34#7:1067\n34#7:1068\n34#7:1069\n34#7:1070\n34#7:1071\n34#7:1072\n46#7:1075\n48#7:1092\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/MatrixKt\n*L\n436#1:909\n437#1:911\n441#1:913\n442#1:915\n441#1:917\n442#1:919\n446#1:921\n447#1:923\n446#1:925\n447#1:927\n451#1:929\n452#1:931\n451#1:933\n452#1:935\n436#1:910\n437#1:912\n441#1:914\n442#1:916\n441#1:918\n442#1:920\n446#1:922\n447#1:924\n446#1:926\n447#1:928\n451#1:930\n452#1:932\n451#1:934\n452#1:936\n456#1:938\n457#1:940\n458#1:942\n456#1:943\n457#1:945\n458#1:947\n462#1:949\n463#1:951\n464#1:953\n462#1:955\n463#1:957\n464#1:959\n468#1:961\n469#1:963\n470#1:965\n468#1:967\n469#1:969\n470#1:971\n474#1:973\n475#1:975\n476#1:977\n474#1:979\n475#1:981\n476#1:983\n480#1:985\n481#1:987\n482#1:989\n483#1:991\n480#1:992\n481#1:994\n482#1:996\n483#1:998\n487#1:1000\n488#1:1002\n489#1:1004\n490#1:1006\n487#1:1008\n488#1:1010\n489#1:1012\n490#1:1014\n494#1:1016\n495#1:1018\n496#1:1020\n497#1:1022\n494#1:1024\n495#1:1026\n496#1:1028\n497#1:1030\n501#1:1032\n502#1:1034\n503#1:1036\n504#1:1038\n501#1:1040\n502#1:1042\n503#1:1044\n504#1:1046\n619#1:1049\n644#1:1060\n759#1:1073\n875#1:1081\n875#1:1088\n883#1:1090\n884#1:1091\n456#1:937\n457#1:939\n458#1:941\n457#1:944\n458#1:946\n462#1:948\n463#1:950\n464#1:952\n462#1:954\n463#1:956\n464#1:958\n468#1:960\n469#1:962\n470#1:964\n468#1:966\n469#1:968\n470#1:970\n474#1:972\n475#1:974\n476#1:976\n474#1:978\n475#1:980\n476#1:982\n644#1:1061\n644#1:1063,3\n759#1:1074\n759#1:1076,3\n878#1:1089\n480#1:984\n481#1:986\n482#1:988\n483#1:990\n481#1:993\n482#1:995\n483#1:997\n487#1:999\n488#1:1001\n489#1:1003\n490#1:1005\n487#1:1007\n488#1:1009\n489#1:1011\n490#1:1013\n494#1:1015\n495#1:1017\n496#1:1019\n497#1:1021\n494#1:1023\n495#1:1025\n496#1:1027\n497#1:1029\n501#1:1031\n502#1:1033\n503#1:1035\n504#1:1037\n501#1:1039\n502#1:1041\n503#1:1043\n504#1:1045\n619#1:1048\n622#1:1051\n624#1:1053\n875#1:1080\n619#1:1047\n622#1:1050\n624#1:1052\n624#1:1054,6\n875#1:1079\n875#1:1082,6\n644#1:1062\n707#1:1066\n762#1:1067\n772#1:1068\n782#1:1069\n792#1:1070\n802#1:1071\n812#1:1072\n822#1:1075\n889#1:1092\n*E\n"})
public final class s {

    public class a {

        public static final int[] f97676a;

        static {
            int[] iArr = new int[C.values().length];
            try {
                iArr[C.XZY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[C.XYZ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[C.YXZ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[C.YZX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[C.ZYX.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[C.ZXY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f97676a = iArr;
        }
    }

    @NotNull
    public static final C14338c A(@NotNull q a10, @NotNull q b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        C14342g D10 = a10.D();
        C14342g D11 = b10.D();
        boolean z10 = false;
        boolean z11 = !(Math.abs(D10.Q() - D11.Q()) < f10 && Math.abs(D10.U() - D11.U()) < f10 && Math.abs(D10.V() - D11.V()) < f10 && Math.abs(D10.P() - D11.P()) < f10);
        C14342g E10 = a10.E();
        C14342g E11 = b10.E();
        boolean z12 = !(Math.abs(E10.Q() - E11.Q()) < f10 && Math.abs(E10.U() - E11.U()) < f10 && Math.abs(E10.V() - E11.V()) < f10 && Math.abs(E10.P() - E11.P()) < f10);
        C14342g F10 = a10.F();
        C14342g F11 = b10.F();
        boolean z13 = !(Math.abs(F10.Q() - F11.Q()) < f10 && Math.abs(F10.U() - F11.U()) < f10 && Math.abs(F10.V() - F11.V()) < f10 && Math.abs(F10.P() - F11.P()) < f10);
        C14342g C10 = a10.C();
        C14342g C11 = b10.C();
        if (Math.abs(C10.Q() - C11.Q()) < f10 && Math.abs(C10.U() - C11.U()) < f10 && Math.abs(C10.V() - C11.V()) < f10 && Math.abs(C10.P() - C11.P()) < f10) {
            z10 = true;
        }
        return new C14338c(z11, z12, z13, !z10);
    }

    public static C14336a B(o a10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        M.p(a10, "a");
        C14340e s10 = a10.s();
        boolean z10 = false;
        boolean z11 = !(Math.abs(s10.z() - f10) < f11 && Math.abs(s10.B() - f10) < f11);
        C14340e t10 = a10.t();
        if (Math.abs(t10.z() - f10) < f11 && Math.abs(t10.B() - f10) < f11) {
            z10 = true;
        }
        return new C14336a(z11, !z10);
    }

    public static C14336a C(o a10, o b10, float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f10 = 0.0f;
        }
        M.p(a10, "a");
        M.p(b10, "b");
        C14340e s10 = a10.s();
        C14340e s11 = b10.s();
        boolean z10 = false;
        boolean z11 = !(Math.abs(s10.z() - s11.z()) < f10 && Math.abs(s10.B() - s11.B()) < f10);
        C14340e t10 = a10.t();
        C14340e t11 = b10.t();
        if (Math.abs(t10.z() - t11.z()) < f10 && Math.abs(t10.B() - t11.B()) < f10) {
            z10 = true;
        }
        return new C14336a(z11, !z10);
    }

    public static C14337b D(p a10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        M.p(a10, "a");
        C14341f t10 = a10.t();
        boolean z10 = false;
        boolean z11 = !(Math.abs(t10.H() - f10) < f11 && Math.abs(t10.K() - f10) < f11 && Math.abs(t10.L() - f10) < f11);
        C14341f u10 = a10.u();
        boolean z12 = !(Math.abs(u10.H() - f10) < f11 && Math.abs(u10.K() - f10) < f11 && Math.abs(u10.L() - f10) < f11);
        C14341f v10 = a10.v();
        if (Math.abs(v10.H() - f10) < f11 && Math.abs(v10.K() - f10) < f11 && Math.abs(v10.L() - f10) < f11) {
            z10 = true;
        }
        return new C14337b(z11, z12, !z10);
    }

    public static C14337b E(p a10, p b10, float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f10 = 0.0f;
        }
        M.p(a10, "a");
        M.p(b10, "b");
        C14341f t10 = a10.t();
        C14341f t11 = b10.t();
        boolean z10 = false;
        boolean z11 = !(Math.abs(t10.H() - t11.H()) < f10 && Math.abs(t10.K() - t11.K()) < f10 && Math.abs(t10.L() - t11.L()) < f10);
        C14341f u10 = a10.u();
        C14341f u11 = b10.u();
        boolean z12 = !(Math.abs(u10.H() - u11.H()) < f10 && Math.abs(u10.K() - u11.K()) < f10 && Math.abs(u10.L() - u11.L()) < f10);
        C14341f v10 = a10.v();
        C14341f v11 = b10.v();
        if (Math.abs(v10.H() - v11.H()) < f10 && Math.abs(v10.K() - v11.K()) < f10 && Math.abs(v10.L() - v11.L()) < f10) {
            z10 = true;
        }
        return new C14337b(z11, z12, !z10);
    }

    public static C14338c F(q a10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        M.p(a10, "a");
        C14342g D10 = a10.D();
        boolean z10 = false;
        boolean z11 = !(Math.abs(D10.Q() - f10) < f11 && Math.abs(D10.U() - f10) < f11 && Math.abs(D10.V() - f10) < f11 && Math.abs(D10.P() - f10) < f11);
        C14342g E10 = a10.E();
        boolean z12 = !(Math.abs(E10.Q() - f10) < f11 && Math.abs(E10.U() - f10) < f11 && Math.abs(E10.V() - f10) < f11 && Math.abs(E10.P() - f10) < f11);
        C14342g F10 = a10.F();
        boolean z13 = !(Math.abs(F10.Q() - f10) < f11 && Math.abs(F10.U() - f10) < f11 && Math.abs(F10.V() - f10) < f11 && Math.abs(F10.P() - f10) < f11);
        C14342g C10 = a10.C();
        if (Math.abs(C10.Q() - f10) < f11 && Math.abs(C10.U() - f10) < f11 && Math.abs(C10.V() - f10) < f11 && Math.abs(C10.P() - f10) < f11) {
            z10 = true;
        }
        return new C14338c(z11, z12, z13, !z10);
    }

    public static C14338c G(q a10, q b10, float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f10 = 0.0f;
        }
        M.p(a10, "a");
        M.p(b10, "b");
        C14342g D10 = a10.D();
        C14342g D11 = b10.D();
        boolean z10 = false;
        boolean z11 = !(Math.abs(D10.Q() - D11.Q()) < f10 && Math.abs(D10.U() - D11.U()) < f10 && Math.abs(D10.V() - D11.V()) < f10 && Math.abs(D10.P() - D11.P()) < f10);
        C14342g E10 = a10.E();
        C14342g E11 = b10.E();
        boolean z12 = !(Math.abs(E10.Q() - E11.Q()) < f10 && Math.abs(E10.U() - E11.U()) < f10 && Math.abs(E10.V() - E11.V()) < f10 && Math.abs(E10.P() - E11.P()) < f10);
        C14342g F10 = a10.F();
        C14342g F11 = b10.F();
        boolean z13 = !(Math.abs(F10.Q() - F11.Q()) < f10 && Math.abs(F10.U() - F11.U()) < f10 && Math.abs(F10.V() - F11.V()) < f10 && Math.abs(F10.P() - F11.P()) < f10);
        C14342g C10 = a10.C();
        C14342g C11 = b10.C();
        if (Math.abs(C10.Q() - C11.Q()) < f10 && Math.abs(C10.U() - C11.U()) < f10 && Math.abs(C10.V() - C11.V()) < f10 && Math.abs(C10.P() - C11.P()) < f10) {
            z10 = true;
        }
        return new C14338c(z11, z12, z13, !z10);
    }

    @NotNull
    public static final q H(float f10, float f11, float f12, float f13, float f14, float f15) {
        float f16 = f11 - f10;
        float f17 = f13 - f12;
        float f18 = f15 - f14;
        return new q(new C14342g(2.0f / f16, 0.0f, 0.0f, 0.0f, 14, null), new C14342g(0.0f, 2.0f / f17, 0.0f, 0.0f, 13, null), new C14342g(0.0f, 0.0f, (-2.0f) / f18, 0.0f, 11, null), new C14342g((-(f11 + f10)) / f16, (-(f13 + f12)) / f17, (-(f15 + f14)) / f18, 1.0f));
    }

    @NotNull
    public static final q I(float f10, float f11, float f12, float f13) {
        float tan = 1.0f / ((float) Math.tan((0.017453292f * f10) * 0.5f));
        float f14 = f13 - f12;
        return new q(new C14342g(tan / f11, 0.0f, 0.0f, 0.0f, 14, null), new C14342g(0.0f, tan, 0.0f, 0.0f, 13, null), new C14342g(0.0f, 0.0f, (f13 + f12) / f14, 1.0f, 3, null), new C14342g(0.0f, 0.0f, -(((2.0f * f13) * f12) / f14), 0.0f, 11, null));
    }

    @NotNull
    public static final w J(@NotNull q m10) {
        w wVar;
        M.p(m10, "m");
        if (m10.D().Q() + m10.E().U() + m10.F().V() > 0.0f) {
            float sqrt = ((float) Math.sqrt(r0 + 1.0f)) * 2.0f;
            wVar = new w((m10.E().V() - m10.F().U()) / sqrt, (m10.F().Q() - m10.D().V()) / sqrt, (m10.D().U() - m10.E().Q()) / sqrt, sqrt * 0.25f);
        } else if (m10.D().Q() > m10.E().U() && m10.D().Q() > m10.F().V()) {
            float sqrt2 = ((float) Math.sqrt(((m10.D().Q() + 1.0f) - m10.E().U()) - m10.F().V())) * 2.0f;
            wVar = new w(0.25f * sqrt2, (m10.E().Q() + m10.D().U()) / sqrt2, (m10.F().Q() + m10.D().V()) / sqrt2, (m10.E().V() - m10.F().U()) / sqrt2);
        } else if (m10.E().U() > m10.F().V()) {
            float sqrt3 = ((float) Math.sqrt(((m10.E().U() + 1.0f) - m10.D().Q()) - m10.F().V())) * 2.0f;
            wVar = new w((m10.E().Q() + m10.D().U()) / sqrt3, 0.25f * sqrt3, (m10.F().U() + m10.E().V()) / sqrt3, (m10.F().Q() - m10.D().V()) / sqrt3);
        } else {
            float sqrt4 = ((float) Math.sqrt(((m10.F().V() + 1.0f) - m10.D().Q()) - m10.E().U())) * 2.0f;
            wVar = new w((m10.F().Q() + m10.D().V()) / sqrt4, (m10.F().U() + m10.E().V()) / sqrt4, 0.25f * sqrt4, (m10.D().U() - m10.E().Q()) / sqrt4);
        }
        return y.M(wVar);
    }

    @NotNull
    public static final q K(float f10, float f11, float f12, @NotNull C order) {
        M.p(order, "order");
        double d10 = f10;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        double d11 = f11;
        float cos2 = (float) Math.cos(d11);
        float sin2 = (float) Math.sin(d11);
        double d12 = f12;
        float cos3 = (float) Math.cos(d12);
        float sin3 = (float) Math.sin(d12);
        switch (a.f97676a[order.ordinal()]) {
            case 1:
                float f13 = cos * cos3;
                float f14 = cos3 * sin;
                return q.f97666e.b(cos2 * cos3, -sin2, cos2 * sin3, 0.0f, (sin * sin3) + (f13 * sin2), cos * cos2, ((cos * sin2) * sin3) - f14, 0.0f, (f14 * sin2) - (cos * sin3), cos2 * sin, f13 + (sin * sin2 * sin3), 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);
            case 2:
                float f15 = -cos2;
                float f16 = cos3 * sin;
                float f17 = cos3 * cos;
                return q.f97666e.b(cos2 * cos3, f15 * sin3, sin2, 0.0f, (cos * sin3) + (f16 * sin2), f17 - ((sin * sin2) * sin3), f15 * sin, 0.0f, (sin * sin3) - (f17 * sin2), f16 + (cos * sin2 * sin3), cos * cos2, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);
            case 3:
                float f18 = cos * cos3;
                float f19 = cos3 * sin;
                return q.f97666e.b(f18 + (sin * sin2 * sin3), (f19 * sin2) - (cos * sin3), cos2 * sin, 0.0f, cos2 * sin3, cos3 * cos2, -sin2, 0.0f, ((cos * sin2) * sin3) - f19, (f18 * sin2) + (sin * sin3), cos * cos2, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);
            case 4:
                float f20 = cos * cos3;
                float f21 = cos3 * sin;
                float f22 = cos3 * cos2;
                float f23 = -cos2;
                return q.f97666e.b(cos * cos2, (sin * sin3) - (f20 * sin2), f21 + (cos * sin2 * sin3), 0.0f, sin2, f22, f23 * sin3, 0.0f, f23 * sin, (cos * sin3) + (f21 * sin2), f20 - ((sin * sin2) * sin3), 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);
            case 5:
                float f24 = cos3 * sin;
                float f25 = cos * cos3;
                return q.f97666e.b(cos * cos2, ((cos * sin2) * sin3) - f24, (sin * sin3) + (f25 * sin2), 0.0f, cos2 * sin, f25 + (sin * sin2 * sin3), (f24 * sin2) - (cos * sin3), 0.0f, -sin2, sin3 * cos2, cos2 * cos3, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);
            case 6:
                float f26 = cos * cos3;
                float f27 = -cos2;
                float f28 = cos3 * sin;
                return q.f97666e.b(f26 - ((sin * sin2) * sin3), f27 * sin, (cos * sin3) + (f28 * sin2), 0.0f, f28 + (cos * sin2 * sin3), cos * cos2, (sin * sin3) - (f26 * sin2), 0.0f, f27 * sin3, sin2, cos2 * cos3, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @NotNull
    public static final q L(@NotNull C14341f axis, float f10) {
        M.p(axis, "axis");
        float H10 = axis.H();
        float K10 = axis.K();
        float L10 = axis.L();
        double d10 = f10 * 0.017453292f;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float f11 = 1.0f - cos;
        float f12 = H10 * K10 * f11;
        float f13 = L10 * sin;
        float f14 = H10 * L10 * f11;
        float f15 = K10 * sin;
        float f16 = f12 + f13;
        float f17 = (K10 * K10 * f11) + cos;
        float f18 = K10 * L10 * f11;
        float f19 = H10 * sin;
        return q.f97666e.b((H10 * H10 * f11) + cos, f12 - f13, f14 + f15, 0.0f, f16, f17, f18 - f19, 0.0f, f14 - f15, f18 + f19, (L10 * L10 * f11) + cos, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f);
    }

    @NotNull
    public static final q M(@NotNull C14341f d10, @NotNull C order) {
        M.p(d10, "d");
        M.p(order, "order");
        C14341f i10 = C14341f.i(d10, 0.0f, 0.0f, 0.0f, 7, null);
        i10.k0(i10.H() * 0.017453292f);
        i10.n0(i10.K() * 0.017453292f);
        i10.o0(i10.L() * 0.017453292f);
        return K(i10.s(order.e()), i10.s(order.c()), i10.s(order.d()), order);
    }

    @NotNull
    public static final q N(@NotNull q m10) {
        M.p(m10, "m");
        C14342g D10 = m10.D();
        C14341f w32 = I.w3(new C14341f(D10.Q(), D10.U(), D10.V()));
        C14342g E10 = m10.E();
        C14341f w33 = I.w3(new C14341f(E10.Q(), E10.U(), E10.V()));
        C14342g F10 = m10.F();
        return new q(w32, w33, I.w3(new C14341f(F10.Q(), F10.U(), F10.V())), (C14341f) null, 8, (C14026x) null);
    }

    @NotNull
    public static final q O(@NotNull w quaternion) {
        M.p(quaternion, "quaternion");
        w M10 = y.M(quaternion);
        return new q(new C14342g(1.0f - (((M10.B() * M10.B()) + (M10.C() * M10.C())) * 2.0f), ((M10.y() * M10.B()) + (M10.C() * M10.x())) * 2.0f, ((M10.y() * M10.C()) - (M10.B() * M10.x())) * 2.0f, 0.0f, 8, null), new C14342g(((M10.y() * M10.B()) - (M10.C() * M10.x())) * 2.0f, 1.0f - (((M10.y() * M10.y()) + (M10.C() * M10.C())) * 2.0f), ((M10.B() * M10.C()) + (M10.y() * M10.x())) * 2.0f, 0.0f, 8, null), new C14342g(((M10.y() * M10.C()) + (M10.B() * M10.x())) * 2.0f, ((M10.B() * M10.C()) - (M10.y() * M10.x())) * 2.0f, 1.0f - (((M10.y() * M10.y()) + (M10.B() * M10.B())) * 2.0f), 0.0f, 8, null), (C14342g) null, 8, (C14026x) null);
    }

    public static q P(float f10, float f11, float f12, C c10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            f12 = 0.0f;
        }
        if ((i10 & 8) != 0) {
            c10 = C.ZYX;
        }
        return K(f10, f11, f12, c10);
    }

    public static q Q(C14341f c14341f, C c10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            c10 = C.ZYX;
        }
        return M(c14341f, c10);
    }

    @NotNull
    public static final q R(@NotNull C14341f s10) {
        M.p(s10, "s");
        return new q(new C14342g(s10.H(), 0.0f, 0.0f, 0.0f, 14, null), new C14342g(0.0f, s10.K(), 0.0f, 0.0f, 13, null), new C14342g(0.0f, 0.0f, s10.L(), 0.0f, 11, null), (C14342g) null, 8, (C14026x) null);
    }

    @NotNull
    public static final q S(@NotNull q m10) {
        M.p(m10, "m");
        C14342g D10 = m10.D();
        C14341f c14341f = new C14341f(D10.Q(), D10.U(), D10.V());
        float sqrt = (float) Math.sqrt((c14341f.H() * c14341f.H()) + (c14341f.K() * c14341f.K()) + (c14341f.L() * c14341f.L()));
        C14342g E10 = m10.E();
        C14341f c14341f2 = new C14341f(E10.Q(), E10.U(), E10.V());
        float sqrt2 = (float) Math.sqrt((c14341f2.H() * c14341f2.H()) + (c14341f2.K() * c14341f2.K()) + (c14341f2.L() * c14341f2.L()));
        C14342g F10 = m10.F();
        C14341f c14341f3 = new C14341f(F10.Q(), F10.U(), F10.V());
        return R(new C14341f(sqrt, sqrt2, (float) Math.sqrt((c14341f3.H() * c14341f3.H()) + (c14341f3.K() * c14341f3.K()) + (c14341f3.L() * c14341f3.L()))));
    }

    @NotNull
    public static final q T(@NotNull C14341f t10) {
        M.p(t10, "t");
        return new q((C14342g) null, (C14342g) null, (C14342g) null, new C14342g(t10, 1.0f), 7, (C14026x) null);
    }

    @NotNull
    public static final q U(@NotNull q m10) {
        M.p(m10, "m");
        C14342g C10 = m10.C();
        return T(new C14341f(C10.Q(), C10.U(), C10.V()));
    }

    @NotNull
    public static final o V(@NotNull o m10) {
        M.p(m10, "m");
        return new o(new C14340e(m10.s().z(), m10.t().z()), new C14340e(m10.s().B(), m10.t().B()));
    }

    @NotNull
    public static final p W(@NotNull p m10) {
        M.p(m10, "m");
        return new p(new C14341f(m10.t().H(), m10.u().H(), m10.v().H()), new C14341f(m10.t().K(), m10.u().K(), m10.v().K()), new C14341f(m10.t().L(), m10.u().L(), m10.v().L()));
    }

    @NotNull
    public static final q X(@NotNull q m10) {
        M.p(m10, "m");
        return new q(new C14342g(m10.D().Q(), m10.E().Q(), m10.F().Q(), m10.C().Q()), new C14342g(m10.D().U(), m10.E().U(), m10.F().U(), m10.C().U()), new C14342g(m10.D().V(), m10.E().V(), m10.F().V(), m10.C().V()), new C14342g(m10.D().P(), m10.E().P(), m10.F().P(), m10.C().P()));
    }

    @NotNull
    public static final C14336a a(@NotNull o a10, float f10, float f11) {
        M.p(a10, "a");
        C14340e s10 = a10.s();
        boolean z10 = false;
        boolean z11 = Math.abs(s10.z() - f10) < f11 && Math.abs(s10.B() - f10) < f11;
        C14340e t10 = a10.t();
        if (Math.abs(t10.z() - f10) < f11 && Math.abs(t10.B() - f10) < f11) {
            z10 = true;
        }
        return new C14336a(z11, z10);
    }

    @NotNull
    public static final C14336a b(@NotNull o a10, @NotNull o b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        C14340e s10 = a10.s();
        C14340e s11 = b10.s();
        boolean z10 = false;
        boolean z11 = Math.abs(s10.z() - s11.z()) < f10 && Math.abs(s10.B() - s11.B()) < f10;
        C14340e t10 = a10.t();
        C14340e t11 = b10.t();
        if (Math.abs(t10.z() - t11.z()) < f10 && Math.abs(t10.B() - t11.B()) < f10) {
            z10 = true;
        }
        return new C14336a(z11, z10);
    }

    @NotNull
    public static final C14337b c(@NotNull p a10, float f10, float f11) {
        M.p(a10, "a");
        C14341f t10 = a10.t();
        boolean z10 = false;
        boolean z11 = Math.abs(t10.H() - f10) < f11 && Math.abs(t10.K() - f10) < f11 && Math.abs(t10.L() - f10) < f11;
        C14341f u10 = a10.u();
        boolean z12 = Math.abs(u10.H() - f10) < f11 && Math.abs(u10.K() - f10) < f11 && Math.abs(u10.L() - f10) < f11;
        C14341f v10 = a10.v();
        if (Math.abs(v10.H() - f10) < f11 && Math.abs(v10.K() - f10) < f11 && Math.abs(v10.L() - f10) < f11) {
            z10 = true;
        }
        return new C14337b(z11, z12, z10);
    }

    @NotNull
    public static final C14337b d(@NotNull p a10, @NotNull p b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        C14341f t10 = a10.t();
        C14341f t11 = b10.t();
        boolean z10 = false;
        boolean z11 = Math.abs(t10.H() - t11.H()) < f10 && Math.abs(t10.K() - t11.K()) < f10 && Math.abs(t10.L() - t11.L()) < f10;
        C14341f u10 = a10.u();
        C14341f u11 = b10.u();
        boolean z12 = Math.abs(u10.H() - u11.H()) < f10 && Math.abs(u10.K() - u11.K()) < f10 && Math.abs(u10.L() - u11.L()) < f10;
        C14341f v10 = a10.v();
        C14341f v11 = b10.v();
        if (Math.abs(v10.H() - v11.H()) < f10 && Math.abs(v10.K() - v11.K()) < f10 && Math.abs(v10.L() - v11.L()) < f10) {
            z10 = true;
        }
        return new C14337b(z11, z12, z10);
    }

    @NotNull
    public static final C14338c e(@NotNull q a10, float f10, float f11) {
        M.p(a10, "a");
        C14342g D10 = a10.D();
        boolean z10 = false;
        boolean z11 = Math.abs(D10.Q() - f10) < f11 && Math.abs(D10.U() - f10) < f11 && Math.abs(D10.V() - f10) < f11 && Math.abs(D10.P() - f10) < f11;
        C14342g E10 = a10.E();
        boolean z12 = Math.abs(E10.Q() - f10) < f11 && Math.abs(E10.U() - f10) < f11 && Math.abs(E10.V() - f10) < f11 && Math.abs(E10.P() - f10) < f11;
        C14342g F10 = a10.F();
        boolean z13 = Math.abs(F10.Q() - f10) < f11 && Math.abs(F10.U() - f10) < f11 && Math.abs(F10.V() - f10) < f11 && Math.abs(F10.P() - f10) < f11;
        C14342g C10 = a10.C();
        if (Math.abs(C10.Q() - f10) < f11 && Math.abs(C10.U() - f10) < f11 && Math.abs(C10.V() - f10) < f11 && Math.abs(C10.P() - f10) < f11) {
            z10 = true;
        }
        return new C14338c(z11, z12, z13, z10);
    }

    @NotNull
    public static final C14338c f(@NotNull q a10, @NotNull q b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        C14342g D10 = a10.D();
        C14342g D11 = b10.D();
        boolean z10 = false;
        boolean z11 = Math.abs(D10.Q() - D11.Q()) < f10 && Math.abs(D10.U() - D11.U()) < f10 && Math.abs(D10.V() - D11.V()) < f10 && Math.abs(D10.P() - D11.P()) < f10;
        C14342g E10 = a10.E();
        C14342g E11 = b10.E();
        boolean z12 = Math.abs(E10.Q() - E11.Q()) < f10 && Math.abs(E10.U() - E11.U()) < f10 && Math.abs(E10.V() - E11.V()) < f10 && Math.abs(E10.P() - E11.P()) < f10;
        C14342g F10 = a10.F();
        C14342g F11 = b10.F();
        boolean z13 = Math.abs(F10.Q() - F11.Q()) < f10 && Math.abs(F10.U() - F11.U()) < f10 && Math.abs(F10.V() - F11.V()) < f10 && Math.abs(F10.P() - F11.P()) < f10;
        C14342g C10 = a10.C();
        C14342g C11 = b10.C();
        if (Math.abs(C10.Q() - C11.Q()) < f10 && Math.abs(C10.U() - C11.U()) < f10 && Math.abs(C10.V() - C11.V()) < f10 && Math.abs(C10.P() - C11.P()) < f10) {
            z10 = true;
        }
        return new C14338c(z11, z12, z13, z10);
    }

    public static C14336a g(o a10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        M.p(a10, "a");
        C14340e s10 = a10.s();
        boolean z10 = false;
        boolean z11 = Math.abs(s10.z() - f10) < f11 && Math.abs(s10.B() - f10) < f11;
        C14340e t10 = a10.t();
        if (Math.abs(t10.z() - f10) < f11 && Math.abs(t10.B() - f10) < f11) {
            z10 = true;
        }
        return new C14336a(z11, z10);
    }

    public static C14336a h(o a10, o b10, float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f10 = 0.0f;
        }
        M.p(a10, "a");
        M.p(b10, "b");
        C14340e s10 = a10.s();
        C14340e s11 = b10.s();
        boolean z10 = false;
        boolean z11 = Math.abs(s10.z() - s11.z()) < f10 && Math.abs(s10.B() - s11.B()) < f10;
        C14340e t10 = a10.t();
        C14340e t11 = b10.t();
        if (Math.abs(t10.z() - t11.z()) < f10 && Math.abs(t10.B() - t11.B()) < f10) {
            z10 = true;
        }
        return new C14336a(z11, z10);
    }

    public static C14337b i(p a10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        M.p(a10, "a");
        C14341f t10 = a10.t();
        boolean z10 = false;
        boolean z11 = Math.abs(t10.H() - f10) < f11 && Math.abs(t10.K() - f10) < f11 && Math.abs(t10.L() - f10) < f11;
        C14341f u10 = a10.u();
        boolean z12 = Math.abs(u10.H() - f10) < f11 && Math.abs(u10.K() - f10) < f11 && Math.abs(u10.L() - f10) < f11;
        C14341f v10 = a10.v();
        if (Math.abs(v10.H() - f10) < f11 && Math.abs(v10.K() - f10) < f11 && Math.abs(v10.L() - f10) < f11) {
            z10 = true;
        }
        return new C14337b(z11, z12, z10);
    }

    public static C14337b j(p a10, p b10, float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f10 = 0.0f;
        }
        M.p(a10, "a");
        M.p(b10, "b");
        C14341f t10 = a10.t();
        C14341f t11 = b10.t();
        boolean z10 = false;
        boolean z11 = Math.abs(t10.H() - t11.H()) < f10 && Math.abs(t10.K() - t11.K()) < f10 && Math.abs(t10.L() - t11.L()) < f10;
        C14341f u10 = a10.u();
        C14341f u11 = b10.u();
        boolean z12 = Math.abs(u10.H() - u11.H()) < f10 && Math.abs(u10.K() - u11.K()) < f10 && Math.abs(u10.L() - u11.L()) < f10;
        C14341f v10 = a10.v();
        C14341f v11 = b10.v();
        if (Math.abs(v10.H() - v11.H()) < f10 && Math.abs(v10.K() - v11.K()) < f10 && Math.abs(v10.L() - v11.L()) < f10) {
            z10 = true;
        }
        return new C14337b(z11, z12, z10);
    }

    public static C14338c k(q a10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        M.p(a10, "a");
        C14342g D10 = a10.D();
        boolean z10 = false;
        boolean z11 = Math.abs(D10.Q() - f10) < f11 && Math.abs(D10.U() - f10) < f11 && Math.abs(D10.V() - f10) < f11 && Math.abs(D10.P() - f10) < f11;
        C14342g E10 = a10.E();
        boolean z12 = Math.abs(E10.Q() - f10) < f11 && Math.abs(E10.U() - f10) < f11 && Math.abs(E10.V() - f10) < f11 && Math.abs(E10.P() - f10) < f11;
        C14342g F10 = a10.F();
        boolean z13 = Math.abs(F10.Q() - f10) < f11 && Math.abs(F10.U() - f10) < f11 && Math.abs(F10.V() - f10) < f11 && Math.abs(F10.P() - f10) < f11;
        C14342g C10 = a10.C();
        if (Math.abs(C10.Q() - f10) < f11 && Math.abs(C10.U() - f10) < f11 && Math.abs(C10.V() - f10) < f11 && Math.abs(C10.P() - f10) < f11) {
            z10 = true;
        }
        return new C14338c(z11, z12, z13, z10);
    }

    public static C14338c l(q a10, q b10, float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f10 = 0.0f;
        }
        M.p(a10, "a");
        M.p(b10, "b");
        C14342g D10 = a10.D();
        C14342g D11 = b10.D();
        boolean z10 = false;
        boolean z11 = Math.abs(D10.Q() - D11.Q()) < f10 && Math.abs(D10.U() - D11.U()) < f10 && Math.abs(D10.V() - D11.V()) < f10 && Math.abs(D10.P() - D11.P()) < f10;
        C14342g E10 = a10.E();
        C14342g E11 = b10.E();
        boolean z12 = Math.abs(E10.Q() - E11.Q()) < f10 && Math.abs(E10.U() - E11.U()) < f10 && Math.abs(E10.V() - E11.V()) < f10 && Math.abs(E10.P() - E11.P()) < f10;
        C14342g F10 = a10.F();
        C14342g F11 = b10.F();
        boolean z13 = Math.abs(F10.Q() - F11.Q()) < f10 && Math.abs(F10.U() - F11.U()) < f10 && Math.abs(F10.V() - F11.V()) < f10 && Math.abs(F10.P() - F11.P()) < f10;
        C14342g C10 = a10.C();
        C14342g C11 = b10.C();
        if (Math.abs(C10.Q() - C11.Q()) < f10 && Math.abs(C10.U() - C11.U()) < f10 && Math.abs(C10.V() - C11.V()) < f10 && Math.abs(C10.P() - C11.P()) < f10) {
            z10 = true;
        }
        return new C14338c(z11, z12, z13, z10);
    }

    @NotNull
    public static final C14341f m(@NotNull q m10, @NotNull C order) {
        M.p(m10, "m");
        M.p(order, "order");
        C14341f c14341f = new C14341f(0.0f, 0.0f, 0.0f, 7, null);
        float f10 = 1.0f;
        switch (a.f97676a[order.ordinal()]) {
            case 1:
                H c10 = order.c();
                float Q10 = m10.E().Q();
                if (Q10 < -1.0f) {
                    f10 = -1.0f;
                } else if (Q10 <= 1.0f) {
                    f10 = Q10;
                }
                c14341f.X(c10, (float) Math.asin(-f10));
                if (Math.abs(m10.E().Q()) >= 0.9999999f) {
                    c14341f.X(order.e(), (float) Math.atan2(-m10.F().U(), m10.F().V()));
                    c14341f.X(order.d(), 0.0f);
                    break;
                } else {
                    c14341f.X(order.e(), (float) Math.atan2(m10.E().V(), m10.E().U()));
                    c14341f.X(order.d(), (float) Math.atan2(m10.F().Q(), m10.D().Q()));
                    break;
                }
            case 2:
                H c11 = order.c();
                float Q11 = m10.F().Q();
                if (Q11 < -1.0f) {
                    f10 = -1.0f;
                } else if (Q11 <= 1.0f) {
                    f10 = Q11;
                }
                c14341f.X(c11, (float) Math.asin(f10));
                if (Math.abs(m10.F().Q()) >= 0.9999999f) {
                    c14341f.X(order.e(), (float) Math.atan2(m10.E().V(), m10.E().U()));
                    c14341f.X(order.d(), 0.0f);
                    break;
                } else {
                    c14341f.X(order.e(), (float) Math.atan2(-m10.F().U(), m10.F().V()));
                    c14341f.X(order.d(), (float) Math.atan2(-m10.E().Q(), m10.D().Q()));
                    break;
                }
            case 3:
                H c12 = order.c();
                float U10 = m10.F().U();
                if (U10 < -1.0f) {
                    f10 = -1.0f;
                } else if (U10 <= 1.0f) {
                    f10 = U10;
                }
                c14341f.X(c12, (float) Math.asin(-f10));
                if (Math.abs(m10.F().U()) >= 0.9999999f) {
                    c14341f.X(order.e(), (float) Math.atan2(-m10.D().V(), m10.D().Q()));
                    c14341f.X(order.d(), 0.0f);
                    break;
                } else {
                    c14341f.X(order.e(), (float) Math.atan2(m10.F().Q(), m10.F().V()));
                    c14341f.X(order.d(), (float) Math.atan2(m10.D().U(), m10.E().U()));
                    break;
                }
            case 4:
                H c13 = order.c();
                float U11 = m10.D().U();
                if (U11 < -1.0f) {
                    f10 = -1.0f;
                } else if (U11 <= 1.0f) {
                    f10 = U11;
                }
                c14341f.X(c13, (float) Math.asin(f10));
                if (Math.abs(m10.D().U()) >= 0.9999999f) {
                    c14341f.X(order.d(), 0.0f);
                    c14341f.X(order.e(), (float) Math.atan2(m10.F().Q(), m10.F().V()));
                    break;
                } else {
                    c14341f.X(order.d(), (float) Math.atan2(-m10.F().U(), m10.E().U()));
                    c14341f.X(order.e(), (float) Math.atan2(-m10.D().V(), m10.D().Q()));
                    break;
                }
            case 5:
                H c14 = order.c();
                float V10 = m10.D().V();
                if (V10 < -1.0f) {
                    f10 = -1.0f;
                } else if (V10 <= 1.0f) {
                    f10 = V10;
                }
                c14341f.X(c14, (float) Math.asin(-f10));
                if (Math.abs(m10.D().V()) >= 0.9999999f) {
                    c14341f.X(order.d(), 0.0f);
                    c14341f.X(order.e(), (float) Math.atan2(-m10.E().Q(), m10.E().U()));
                    break;
                } else {
                    c14341f.X(order.d(), (float) Math.atan2(m10.E().V(), m10.F().V()));
                    c14341f.X(order.e(), (float) Math.atan2(m10.D().U(), m10.D().Q()));
                    break;
                }
            case 6:
                H c15 = order.c();
                float V11 = m10.E().V();
                if (V11 < -1.0f) {
                    f10 = -1.0f;
                } else if (V11 <= 1.0f) {
                    f10 = V11;
                }
                c14341f.X(c15, (float) Math.asin(f10));
                if (Math.abs(m10.E().V()) >= 0.9999999f) {
                    c14341f.X(order.d(), 0.0f);
                    c14341f.X(order.e(), (float) Math.atan2(m10.D().U(), m10.D().Q()));
                    break;
                } else {
                    c14341f.X(order.d(), (float) Math.atan2(-m10.D().V(), m10.F().V()));
                    c14341f.X(order.e(), (float) Math.atan2(-m10.E().Q(), m10.E().U()));
                    break;
                }
            default:
                throw new NoWhenBranchMatchedException();
        }
        C14341f i10 = C14341f.i(c14341f, 0.0f, 0.0f, 0.0f, 7, null);
        i10.k0(i10.H() * 57.295776f);
        i10.n0(i10.K() * 57.295776f);
        i10.o0(i10.L() * 57.295776f);
        return i10;
    }

    public static C14341f n(q qVar, C c10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            c10 = C.ZYX;
        }
        return m(qVar, c10);
    }

    @NotNull
    public static final p o(@NotNull p m10) {
        M.p(m10, "m");
        float H10 = m10.t().H();
        float K10 = m10.t().K();
        float L10 = m10.t().L();
        float H11 = m10.u().H();
        float K11 = m10.u().K();
        float L11 = m10.u().L();
        float H12 = m10.v().H();
        float K12 = m10.v().K();
        float L12 = m10.v().L();
        float f10 = (K11 * L12) - (L11 * K12);
        float f11 = (L11 * H12) - (H11 * L12);
        float f12 = (H11 * K12) - (K11 * H12);
        float f13 = (H10 * f10) + (K10 * f11) + (L10 * f12);
        return p.f97661d.b(f10 / f13, f11 / f13, f12 / f13, ((L10 * K12) - (K10 * L12)) / f13, ((L12 * H10) - (L10 * H12)) / f13, ((H12 * K10) - (K12 * H10)) / f13, ((K10 * L11) - (L10 * K11)) / f13, ((L10 * H11) - (L11 * H10)) / f13, ((H10 * K11) - (K10 * H11)) / f13);
    }

    @NotNull
    public static final q p(@NotNull q m10) {
        M.p(m10, "m");
        q qVar = new q((C14342g) null, (C14342g) null, (C14342g) null, (C14342g) null, 15, (C14026x) null);
        float V10 = m10.F().V() * m10.C().P();
        float V11 = m10.C().V() * m10.F().P();
        float V12 = m10.E().V() * m10.C().P();
        float V13 = m10.C().V() * m10.E().P();
        float V14 = m10.E().V() * m10.F().P();
        float V15 = m10.F().V() * m10.E().P();
        float V16 = m10.D().V() * m10.C().P();
        float V17 = m10.C().V() * m10.D().P();
        float V18 = m10.D().V() * m10.F().P();
        float V19 = m10.F().V() * m10.D().P();
        float V20 = m10.D().V() * m10.E().P();
        float V21 = m10.E().V() * m10.D().P();
        qVar.D().D0((m10.E().U() * V10) + (m10.F().U() * V13) + (m10.C().U() * V14));
        C14342g D10 = qVar.D();
        D10.D0(D10.Q() - (((m10.E().U() * V11) + (m10.F().U() * V12)) + (m10.C().U() * V15)));
        qVar.D().H0((m10.D().U() * V11) + (m10.F().U() * V16) + (m10.C().U() * V19));
        C14342g D11 = qVar.D();
        D11.H0(D11.U() - (((m10.D().U() * V10) + (m10.F().U() * V17)) + (m10.C().U() * V18)));
        qVar.D().I0((m10.D().U() * V12) + (m10.E().U() * V17) + (m10.C().U() * V20));
        C14342g D12 = qVar.D();
        D12.I0(D12.V() - (((m10.D().U() * V13) + (m10.E().U() * V16)) + (m10.C().U() * V21)));
        qVar.D().C0((m10.D().U() * V15) + (m10.E().U() * V18) + (m10.F().U() * V21));
        C14342g D13 = qVar.D();
        D13.C0(D13.P() - (((m10.D().U() * V14) + (m10.E().U() * V19)) + (m10.F().U() * V20)));
        qVar.E().D0((m10.E().Q() * V11) + (m10.F().Q() * V12) + (m10.C().Q() * V15));
        C14342g E10 = qVar.E();
        E10.D0(E10.Q() - (((m10.E().Q() * V10) + (m10.F().Q() * V13)) + (m10.C().Q() * V14)));
        qVar.E().H0((V10 * m10.D().Q()) + (m10.F().Q() * V17) + (m10.C().Q() * V18));
        C14342g E11 = qVar.E();
        E11.H0(E11.U() - (((V11 * m10.D().Q()) + (m10.F().Q() * V16)) + (m10.C().Q() * V19)));
        qVar.E().I0((V13 * m10.D().Q()) + (V16 * m10.E().Q()) + (m10.C().Q() * V21));
        C14342g E12 = qVar.E();
        E12.I0(E12.V() - (((V12 * m10.D().Q()) + (V17 * m10.E().Q())) + (m10.C().Q() * V20)));
        qVar.E().C0((V14 * m10.D().Q()) + (V19 * m10.E().Q()) + (V20 * m10.F().Q()));
        C14342g E13 = qVar.E();
        E13.C0(E13.P() - (((V15 * m10.D().Q()) + (V18 * m10.E().Q())) + (V21 * m10.F().Q())));
        float Q10 = m10.F().Q() * m10.C().U();
        float Q11 = m10.C().Q() * m10.F().U();
        float Q12 = m10.E().Q() * m10.C().U();
        float Q13 = m10.C().Q() * m10.E().U();
        float Q14 = m10.E().Q() * m10.F().U();
        float Q15 = m10.F().Q() * m10.E().U();
        float Q16 = m10.D().Q() * m10.C().U();
        float Q17 = m10.C().Q() * m10.D().U();
        float Q18 = m10.D().Q() * m10.F().U();
        float Q19 = m10.F().Q() * m10.D().U();
        float Q20 = m10.D().Q() * m10.E().U();
        float Q21 = m10.E().Q() * m10.D().U();
        qVar.F().D0((m10.E().P() * Q10) + (m10.F().P() * Q13) + (m10.C().P() * Q14));
        C14342g F10 = qVar.F();
        F10.D0(F10.Q() - (((m10.E().P() * Q11) + (m10.F().P() * Q12)) + (m10.C().P() * Q15)));
        qVar.F().H0((m10.D().P() * Q11) + (m10.F().P() * Q16) + (m10.C().P() * Q19));
        C14342g F11 = qVar.F();
        F11.H0(F11.U() - (((m10.D().P() * Q10) + (m10.F().P() * Q17)) + (m10.C().P() * Q18)));
        qVar.F().I0((m10.D().P() * Q12) + (m10.E().P() * Q17) + (m10.C().P() * Q20));
        C14342g F12 = qVar.F();
        F12.I0(F12.V() - (((m10.D().P() * Q13) + (m10.E().P() * Q16)) + (m10.C().P() * Q21)));
        qVar.F().C0((m10.D().P() * Q15) + (m10.E().P() * Q18) + (m10.F().P() * Q21));
        C14342g F13 = qVar.F();
        F13.C0(F13.P() - (((m10.D().P() * Q14) + (m10.E().P() * Q19)) + (m10.F().P() * Q20)));
        qVar.C().D0((m10.F().V() * Q12) + (m10.C().V() * Q15) + (m10.E().V() * Q11));
        C14342g C10 = qVar.C();
        C10.D0(C10.Q() - (((m10.C().V() * Q14) + (m10.E().V() * Q10)) + (m10.F().V() * Q13)));
        qVar.C().H0((m10.C().V() * Q18) + (Q10 * m10.D().V()) + (m10.F().V() * Q17));
        C14342g C11 = qVar.C();
        C11.H0(C11.U() - (((m10.F().V() * Q16) + (m10.C().V() * Q19)) + (Q11 * m10.D().V())));
        qVar.C().I0((Q16 * m10.E().V()) + (m10.C().V() * Q21) + (Q13 * m10.D().V()));
        C14342g C12 = qVar.C();
        C12.I0(C12.V() - (((m10.C().V() * Q20) + (Q12 * m10.D().V())) + (Q17 * m10.E().V())));
        qVar.C().C0((Q20 * m10.F().V()) + (Q14 * m10.D().V()) + (Q19 * m10.E().V()));
        C14342g C13 = qVar.C();
        C13.C0(C13.P() - (((Q18 * m10.E().V()) + (Q21 * m10.F().V())) + (Q15 * m10.D().V())));
        return qVar.l((m10.D().Q() * qVar.D().Q()) + (m10.E().Q() * qVar.D().U()) + (m10.F().Q() * qVar.D().V()) + (m10.C().Q() * qVar.D().P()));
    }

    @NotNull
    public static final q q(@NotNull C14341f eye, @NotNull C14341f target, @NotNull C14341f up) {
        M.p(eye, "eye");
        M.p(target, "target");
        M.p(up, "up");
        return s(eye, new C14341f(target.H() - eye.H(), target.K() - eye.K(), target.L() - eye.L()), up);
    }

    public static q r(C14341f c14341f, C14341f c14341f2, C14341f c14341f3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            c14341f3 = new C14341f(0.0f, 0.0f, 1.0f, 3, null);
        }
        return q(c14341f, c14341f2, c14341f3);
    }

    @NotNull
    public static final q s(@NotNull C14341f eye, @NotNull C14341f forward, @NotNull C14341f up) {
        M.p(eye, "eye");
        M.p(forward, "forward");
        M.p(up, "up");
        C14341f w32 = I.w3(forward);
        C14341f w33 = I.w3(new C14341f((w32.K() * up.L()) - (w32.L() * up.K()), (w32.L() * up.H()) - (w32.H() * up.L()), (w32.H() * up.K()) - (w32.K() * up.H())));
        return new q(new C14342g(w33, 0.0f, 2, (C14026x) null), new C14342g(I.w3(new C14341f((w33.K() * w32.L()) - (w33.L() * w32.K()), (w33.L() * w32.H()) - (w33.H() * w32.L()), (w33.H() * w32.K()) - (w33.K() * w32.H()))), 0.0f, 2, (C14026x) null), new C14342g(w32.u0(), 0.0f, 2, (C14026x) null), new C14342g(eye, 1.0f));
    }

    public static q t(C14341f c14341f, C14341f c14341f2, C14341f c14341f3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            c14341f3 = new C14341f(0.0f, 0.0f, 1.0f, 3, null);
        }
        return s(c14341f, c14341f2, c14341f3);
    }

    @NotNull
    public static final q u(@NotNull q m10) {
        M.p(m10, "m");
        C14342g D10 = m10.D();
        C14341f c14341f = new C14341f(D10.Q(), D10.U(), D10.V());
        float H10 = (c14341f.H() * c14341f.H()) + (c14341f.K() * c14341f.K()) + (c14341f.L() * c14341f.L());
        C14342g E10 = m10.E();
        C14341f c14341f2 = new C14341f(E10.Q(), E10.U(), E10.V());
        float H11 = (c14341f2.H() * c14341f2.H()) + (c14341f2.K() * c14341f2.K()) + (c14341f2.L() * c14341f2.L());
        C14342g F10 = m10.F();
        C14341f c14341f3 = new C14341f(F10.Q(), F10.U(), F10.V());
        C14341f c14341f4 = new C14341f(H10, H11, (c14341f3.H() * c14341f3.H()) + (c14341f3.K() * c14341f3.K()) + (c14341f3.L() * c14341f3.L()));
        return R(new C14341f(1.0f / c14341f4.H(), 1.0f / c14341f4.K(), 1.0f / c14341f4.L())).X(m10);
    }

    @NotNull
    public static final C14336a v(@NotNull o a10, float f10, float f11) {
        M.p(a10, "a");
        C14340e s10 = a10.s();
        boolean z10 = false;
        boolean z11 = !(Math.abs(s10.z() - f10) < f11 && Math.abs(s10.B() - f10) < f11);
        C14340e t10 = a10.t();
        if (Math.abs(t10.z() - f10) < f11 && Math.abs(t10.B() - f10) < f11) {
            z10 = true;
        }
        return new C14336a(z11, !z10);
    }

    @NotNull
    public static final C14336a w(@NotNull o a10, @NotNull o b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        C14340e s10 = a10.s();
        C14340e s11 = b10.s();
        boolean z10 = false;
        boolean z11 = !(Math.abs(s10.z() - s11.z()) < f10 && Math.abs(s10.B() - s11.B()) < f10);
        C14340e t10 = a10.t();
        C14340e t11 = b10.t();
        if (Math.abs(t10.z() - t11.z()) < f10 && Math.abs(t10.B() - t11.B()) < f10) {
            z10 = true;
        }
        return new C14336a(z11, !z10);
    }

    @NotNull
    public static final C14337b x(@NotNull p a10, float f10, float f11) {
        M.p(a10, "a");
        C14341f t10 = a10.t();
        boolean z10 = false;
        boolean z11 = !(Math.abs(t10.H() - f10) < f11 && Math.abs(t10.K() - f10) < f11 && Math.abs(t10.L() - f10) < f11);
        C14341f u10 = a10.u();
        boolean z12 = !(Math.abs(u10.H() - f10) < f11 && Math.abs(u10.K() - f10) < f11 && Math.abs(u10.L() - f10) < f11);
        C14341f v10 = a10.v();
        if (Math.abs(v10.H() - f10) < f11 && Math.abs(v10.K() - f10) < f11 && Math.abs(v10.L() - f10) < f11) {
            z10 = true;
        }
        return new C14337b(z11, z12, !z10);
    }

    @NotNull
    public static final C14337b y(@NotNull p a10, @NotNull p b10, float f10) {
        M.p(a10, "a");
        M.p(b10, "b");
        C14341f t10 = a10.t();
        C14341f t11 = b10.t();
        boolean z10 = false;
        boolean z11 = !(Math.abs(t10.H() - t11.H()) < f10 && Math.abs(t10.K() - t11.K()) < f10 && Math.abs(t10.L() - t11.L()) < f10);
        C14341f u10 = a10.u();
        C14341f u11 = b10.u();
        boolean z12 = !(Math.abs(u10.H() - u11.H()) < f10 && Math.abs(u10.K() - u11.K()) < f10 && Math.abs(u10.L() - u11.L()) < f10);
        C14341f v10 = a10.v();
        C14341f v11 = b10.v();
        if (Math.abs(v10.H() - v11.H()) < f10 && Math.abs(v10.K() - v11.K()) < f10 && Math.abs(v10.L() - v11.L()) < f10) {
            z10 = true;
        }
        return new C14337b(z11, z12, !z10);
    }

    @NotNull
    public static final C14338c z(@NotNull q a10, float f10, float f11) {
        M.p(a10, "a");
        C14342g D10 = a10.D();
        boolean z10 = false;
        boolean z11 = !(Math.abs(D10.Q() - f10) < f11 && Math.abs(D10.U() - f10) < f11 && Math.abs(D10.V() - f10) < f11 && Math.abs(D10.P() - f10) < f11);
        C14342g E10 = a10.E();
        boolean z12 = !(Math.abs(E10.Q() - f10) < f11 && Math.abs(E10.U() - f10) < f11 && Math.abs(E10.V() - f10) < f11 && Math.abs(E10.P() - f10) < f11);
        C14342g F10 = a10.F();
        boolean z13 = !(Math.abs(F10.Q() - f10) < f11 && Math.abs(F10.U() - f10) < f11 && Math.abs(F10.V() - f10) < f11 && Math.abs(F10.P() - f10) < f11);
        C14342g C10 = a10.C();
        if (Math.abs(C10.Q() - f10) < f11 && Math.abs(C10.U() - f10) < f11 && Math.abs(C10.V() - f10) < f11 && Math.abs(C10.P() - f10) < f11) {
            z10 = true;
        }
        return new C14338c(z11, z12, z13, !z10);
    }
}
