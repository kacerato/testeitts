package n0;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,509:1\n137#1:510\n285#1,6:561\n137#1:567\n617#2,6:511\n617#2,6:517\n617#2,6:523\n617#2,6:529\n617#2,6:535\n617#2,6:541\n617#2,6:547\n622#2:553\n622#2:554\n622#2:555\n622#2:556\n622#2:557\n622#2:558\n622#2:559\n622#2:560\n617#2,6:568\n617#2,6:574\n617#2,6:580\n617#2,6:586\n617#2,6:592\n617#2,6:598\n617#2,6:604\n617#2,6:610\n622#2:616\n622#2:617\n622#2:618\n622#2:619\n622#2:620\n622#2:621\n622#2:622\n622#2:623\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n*L\n145#1:510\n281#1:561,6\n281#1:567\n268#1:511,6\n269#1:517,6\n270#1:523,6\n271#1:529,6\n269#1:535,6\n270#1:541,6\n271#1:547,6\n275#1:553\n276#1:554\n277#1:555\n278#1:556\n275#1:557\n276#1:558\n277#1:559\n278#1:560\n293#1:568,6\n294#1:574,6\n295#1:580,6\n296#1:586,6\n293#1:592,6\n294#1:598,6\n295#1:604,6\n296#1:610,6\n300#1:616\n301#1:617\n302#1:618\n303#1:619\n300#1:620\n301#1:621\n302#1:622\n303#1:623\n*E\n"})
public final class w {

    @NotNull
    public static final a f97688e = new a(null);

    public float f97689a;

    public float f97690b;

    public float f97691c;

    public float f97692d;

    @t0({"SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion$Companion\n+ 2 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 4 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,509:1\n48#2:510\n48#2:514\n726#3:511\n794#3:512\n336#4:513\n337#4,3:515\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion$Companion\n*L\n50#1:510\n70#1:514\n51#1:511\n70#1:512\n70#1:513\n70#1:515,3\n*E\n"})
    public static final class a {

        public class C1878a {

            public static final int[] f97693a;

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
                f97693a = iArr;
            }
        }

        public a(C14026x c14026x) {
            this();
        }

        public static w d(a aVar, float f10, float f11, float f12, C c10, int i10, Object obj) {
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
            return aVar.b(f10, f11, f12, c10);
        }

        public static w e(a aVar, C14341f c14341f, C c10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                c10 = C.ZYX;
            }
            return aVar.c(c14341f, c10);
        }

        @NotNull
        public final w a(@NotNull C14341f axis, float f10) {
            M.p(axis, "axis");
            double d10 = f10 * 0.017453292f * 0.5f;
            float sin = (float) Math.sin(d10);
            C14341f w32 = I.w3(axis);
            return new w(new C14341f(w32.H() * sin, w32.K() * sin, sin * w32.L()), (float) Math.cos(d10));
        }

        @NotNull
        public final w b(float f10, float f11, float f12, @NotNull C order) {
            M.p(order, "order");
            double d10 = f10 * 0.5f;
            float cos = (float) Math.cos(d10);
            float sin = (float) Math.sin(d10);
            double d11 = f11 * 0.5f;
            float cos2 = (float) Math.cos(d11);
            float sin2 = (float) Math.sin(d11);
            double d12 = f12 * 0.5f;
            float cos3 = (float) Math.cos(d12);
            float sin3 = (float) Math.sin(d12);
            switch (C1878a.f97693a[order.ordinal()]) {
                case 1:
                    float f13 = sin * cos2;
                    float f14 = cos * sin2;
                    float f15 = cos * cos2;
                    float f16 = sin * sin2;
                    return new w((f13 * cos3) - (f14 * sin3), (f15 * sin3) - (f16 * cos3), (f13 * sin3) + (f14 * cos3), (f16 * sin3) + (f15 * cos3));
                case 2:
                    float f17 = (sin * cos2 * cos3) + (sin2 * sin3 * cos);
                    float f18 = ((sin2 * cos) * cos3) - ((sin * sin3) * cos2);
                    float f19 = sin * sin2;
                    return new w(f17, f18, (f19 * cos3) + (sin3 * cos * cos2), ((cos * cos2) * cos3) - (f19 * sin3));
                case 3:
                    float f20 = sin * cos2;
                    float f21 = cos * sin2;
                    float f22 = cos * cos2;
                    float f23 = sin * sin2;
                    return new w((f20 * sin3) + (f21 * cos3), (f20 * cos3) - (f21 * sin3), (f22 * sin3) - (f23 * cos3), (f23 * sin3) + (f22 * cos3));
                case 4:
                    float f24 = sin * sin2;
                    float f25 = cos * cos2;
                    float f26 = sin * cos2;
                    float f27 = cos * sin2;
                    return new w((f24 * cos3) + (f25 * sin3), (f26 * cos3) + (f27 * sin3), (f27 * cos3) - (f26 * sin3), (f25 * cos3) - (f24 * sin3));
                case 5:
                    float f28 = cos * cos2;
                    float f29 = sin * sin2;
                    float f30 = sin * cos2;
                    float f31 = cos * sin2;
                    return new w((f28 * sin3) - (f29 * cos3), (f30 * sin3) + (f31 * cos3), (f30 * cos3) - (f31 * sin3), (f29 * sin3) + (f28 * cos3));
                case 6:
                    float f32 = cos * sin2;
                    float f33 = sin * cos2;
                    float f34 = sin * sin2;
                    float f35 = cos * cos2;
                    return new w((f32 * cos3) - (f33 * sin3), (f34 * cos3) + (f35 * sin3), (f33 * cos3) + (f32 * sin3), (f35 * cos3) - (f34 * sin3));
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        @NotNull
        public final w c(@NotNull C14341f d10, @NotNull C order) {
            M.p(d10, "d");
            M.p(order, "order");
            C14341f i10 = C14341f.i(d10, 0.0f, 0.0f, 0.0f, 7, null);
            i10.k0(i10.H() * 0.017453292f);
            i10.n0(i10.K() * 0.017453292f);
            i10.o0(i10.L() * 0.017453292f);
            return b(i10.s(order.e()), i10.s(order.c()), i10.s(order.d()), order);
        }

        public a() {
        }
    }

    public class b {

        public static final int[] f97694a;

        static {
            int[] iArr = new int[x.values().length];
            try {
                iArr[x.f97696X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[x.f97697Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[x.f97698Z.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[x.f97695W.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f97694a = iArr;
        }
    }

    public w() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 15, null);
    }

    public static C14342g c(w wVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return new C14342g(Math.abs(wVar.y() - f10) < f11 ? 0.0f : Float.compare(r0, f10), Math.abs(wVar.B() - f10) < f11 ? 0.0f : Float.compare(r1, f10), Math.abs(wVar.C() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(wVar.x() - f10) >= f11 ? Float.compare(r4, f10) : 0.0f);
    }

    public static C14342g d(w wVar, C14342g v10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(v10, "v");
        return new C14342g(Math.abs(wVar.y() - v10.Q()) < f10 ? 0.0f : Float.compare(r0, r1), Math.abs(wVar.B() - v10.U()) < f10 ? 0.0f : Float.compare(r1, r2), Math.abs(wVar.C() - v10.V()) < f10 ? 0.0f : Float.compare(r2, r3), Math.abs(wVar.x() - v10.P()) >= f10 ? Float.compare(r5, r6) : 0.0f);
    }

    public static w j(w wVar, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = wVar.f97689a;
        }
        if ((i10 & 2) != 0) {
            f11 = wVar.f97690b;
        }
        if ((i10 & 4) != 0) {
            f12 = wVar.f97691c;
        }
        if ((i10 & 8) != 0) {
            f13 = wVar.f97692d;
        }
        return wVar.i(f10, f11, f12, f13);
    }

    public static C14338c n(w wVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return new C14338c(Math.abs(wVar.y() - f10) < f11, Math.abs(wVar.B() - f10) < f11, Math.abs(wVar.C() - f10) < f11, Math.abs(wVar.x() - f10) < f11);
    }

    public static C14338c o(w wVar, C14342g v10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(v10, "v");
        return new C14338c(Math.abs(wVar.y() - v10.Q()) < f10, Math.abs(wVar.B() - v10.U()) < f10, Math.abs(wVar.C() - v10.V()) < f10, Math.abs(wVar.x() - v10.P()) < f10);
    }

    @NotNull
    public final C14342g A() {
        return new C14342g(y(), B(), C(), x());
    }

    public final float B() {
        return this.f97690b;
    }

    public final float C() {
        return this.f97691c;
    }

    public final float D(int i10) {
        return p(i10 - 1);
    }

    @NotNull
    public final w E(float f10) {
        return new w(y() - f10, B() - f10, C() - f10, x() - f10);
    }

    @NotNull
    public final w F(@NotNull w q10) {
        M.p(q10, "q");
        return new w(y() - q10.y(), B() - q10.B(), C() - q10.C(), x() - q10.x());
    }

    @NotNull
    public final w G(float f10) {
        return new w(y() + f10, B() + f10, C() + f10, x() + f10);
    }

    @NotNull
    public final w H(@NotNull w q10) {
        M.p(q10, "q");
        return new w(y() + q10.y(), B() + q10.B(), C() + q10.C(), x() + q10.x());
    }

    public final void I(int i10, float f10) {
        if (i10 == 0) {
            this.f97689a = f10;
            return;
        }
        if (i10 == 1) {
            this.f97690b = f10;
        } else if (i10 == 2) {
            this.f97691c = f10;
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("index must be in 0..3");
            }
            this.f97692d = f10;
        }
    }

    public final void J(int i10, int i11, float f10) {
        I(i10, f10);
        I(i11, f10);
    }

    public final void K(int i10, int i11, int i12, float f10) {
        I(i10, f10);
        I(i11, f10);
        I(i12, f10);
    }

    public final void L(int i10, int i11, int i12, int i13, float f10) {
        I(i10, f10);
        I(i11, f10);
        I(i12, f10);
        I(i13, f10);
    }

    public final void M(@NotNull x index, float f10) {
        M.p(index, "index");
        int i10 = b.f97694a[index.ordinal()];
        if (i10 == 1) {
            this.f97689a = f10;
            return;
        }
        if (i10 == 2) {
            this.f97690b = f10;
        } else if (i10 == 3) {
            this.f97691c = f10;
        } else {
            if (i10 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            this.f97692d = f10;
        }
    }

    public final void N(@NotNull x index1, @NotNull x index2, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M(index1, f10);
        M(index2, f10);
    }

    public final void O(@NotNull x index1, @NotNull x index2, @NotNull x index3, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M(index1, f10);
        M(index2, f10);
        M(index3, f10);
    }

    public final void P(@NotNull x index1, @NotNull x index2, @NotNull x index3, @NotNull x index4, float f10) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M.p(index4, "index4");
        M(index1, f10);
        M(index2, f10);
        M(index3, f10);
        M(index4, f10);
    }

    public final void Q(@NotNull C14341f value) {
        M.p(value, "value");
        T(value.H());
        W(value.K());
        X(value.L());
    }

    public final void R(float f10) {
        S(f10);
    }

    public final void S(float f10) {
        this.f97692d = f10;
    }

    public final void T(float f10) {
        this.f97689a = f10;
    }

    public final void U(@NotNull C14341f value) {
        M.p(value, "value");
        T(value.H());
        W(value.K());
        X(value.L());
    }

    public final void V(@NotNull C14342g value) {
        M.p(value, "value");
        T(value.Q());
        W(value.U());
        X(value.V());
        S(value.P());
    }

    public final void W(float f10) {
        this.f97690b = f10;
    }

    public final void X(float f10) {
        this.f97691c = f10;
    }

    @NotNull
    public final C14341f Y(@NotNull C14341f v10) {
        M.p(v10, "v");
        w wVar = new w(v10, 0.0f);
        w wVar2 = new w((((x() * wVar.y()) + (y() * wVar.x())) + (B() * wVar.C())) - (C() * wVar.B()), ((x() * wVar.B()) - (y() * wVar.C())) + (B() * wVar.x()) + (C() * wVar.y()), (((x() * wVar.C()) + (y() * wVar.B())) - (B() * wVar.y())) + (C() * wVar.x()), (((x() * wVar.x()) - (y() * wVar.y())) - (B() * wVar.B())) - (C() * wVar.C()));
        w w10 = y.w(this);
        w wVar3 = new w((((wVar2.x() * w10.y()) + (wVar2.y() * w10.x())) + (wVar2.B() * w10.C())) - (wVar2.C() * w10.B()), ((wVar2.x() * w10.B()) - (wVar2.y() * w10.C())) + (wVar2.B() * w10.x()) + (wVar2.C() * w10.y()), (((wVar2.x() * w10.C()) + (wVar2.y() * w10.B())) - (wVar2.B() * w10.y())) + (wVar2.C() * w10.x()), (((wVar2.x() * w10.x()) - (wVar2.y() * w10.y())) - (wVar2.B() * w10.B())) - (wVar2.C() * w10.C()));
        return new C14341f(wVar3.y(), wVar3.B(), wVar3.C());
    }

    @NotNull
    public final w Z(float f10) {
        return new w(y() * f10, B() * f10, C() * f10, x() * f10);
    }

    @NotNull
    public final C14342g a(float f10, float f11) {
        return new C14342g(Math.abs(y() - f10) < f11 ? 0.0f : Float.compare(r1, f10), Math.abs(B() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(C() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(x() - f10) >= f11 ? Float.compare(r5, f10) : 0.0f);
    }

    @NotNull
    public final w a0(@NotNull w q10) {
        M.p(q10, "q");
        return new w((((x() * q10.y()) + (y() * q10.x())) + (B() * q10.C())) - (C() * q10.B()), ((x() * q10.B()) - (y() * q10.C())) + (B() * q10.x()) + (C() * q10.y()), (((x() * q10.C()) + (y() * q10.B())) - (B() * q10.y())) + (C() * q10.x()), (((x() * q10.x()) - (y() * q10.y())) - (B() * q10.B())) - (C() * q10.C()));
    }

    @NotNull
    public final C14342g b(@NotNull C14342g v10, float f10) {
        M.p(v10, "v");
        return new C14342g(Math.abs(y() - v10.Q()) < f10 ? 0.0f : Float.compare(r1, r2), Math.abs(B() - v10.U()) < f10 ? 0.0f : Float.compare(r2, r3), Math.abs(C() - v10.V()) < f10 ? 0.0f : Float.compare(r3, r5), Math.abs(x() - v10.P()) >= f10 ? Float.compare(r5, r8) : 0.0f);
    }

    @NotNull
    public final C14341f b0() {
        return y.n(this, null, 2, null);
    }

    @NotNull
    public final float[] c0() {
        return new float[]{this.f97689a, this.f97690b, this.f97691c, this.f97692d};
    }

    @NotNull
    public final q d0() {
        return s.O(this);
    }

    public final float e() {
        return this.f97689a;
    }

    @NotNull
    public final w e0(@NotNull Mf.l<? super Float, Float> block) {
        M.p(block, "block");
        T(block.invoke(Float.valueOf(y())).floatValue());
        W(block.invoke(Float.valueOf(B())).floatValue());
        X(block.invoke(Float.valueOf(C())).floatValue());
        S(block.invoke(Float.valueOf(x())).floatValue());
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return Float.compare(this.f97689a, wVar.f97689a) == 0 && Float.compare(this.f97690b, wVar.f97690b) == 0 && Float.compare(this.f97691c, wVar.f97691c) == 0 && Float.compare(this.f97692d, wVar.f97692d) == 0;
    }

    public final float f() {
        return this.f97690b;
    }

    @NotNull
    public final w f0() {
        return new w(-this.f97689a, -this.f97690b, -this.f97691c, -this.f97692d);
    }

    public final float g() {
        return this.f97691c;
    }

    public final float h() {
        return this.f97692d;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.f97689a) * 31) + Float.hashCode(this.f97690b)) * 31) + Float.hashCode(this.f97691c)) * 31) + Float.hashCode(this.f97692d);
    }

    @NotNull
    public final w i(float f10, float f11, float f12, float f13) {
        return new w(f10, f11, f12, f13);
    }

    @NotNull
    public final w k(float f10) {
        return new w(y() / f10, B() / f10, C() / f10, x() / f10);
    }

    @NotNull
    public final C14338c l(float f10, float f11) {
        return new C14338c(Math.abs(y() - f10) < f11, Math.abs(B() - f10) < f11, Math.abs(C() - f10) < f11, Math.abs(x() - f10) < f11);
    }

    @NotNull
    public final C14338c m(@NotNull C14342g v10, float f10) {
        M.p(v10, "v");
        return new C14338c(Math.abs(y() - v10.Q()) < f10, Math.abs(B() - v10.U()) < f10, Math.abs(C() - v10.V()) < f10, Math.abs(x() - v10.P()) < f10);
    }

    public final float p(int i10) {
        if (i10 == 0) {
            return this.f97689a;
        }
        if (i10 == 1) {
            return this.f97690b;
        }
        if (i10 == 2) {
            return this.f97691c;
        }
        if (i10 == 3) {
            return this.f97692d;
        }
        throw new IllegalArgumentException("index must be in 0..3");
    }

    public final float q(@NotNull x index) {
        M.p(index, "index");
        int i10 = b.f97694a[index.ordinal()];
        if (i10 == 1) {
            return this.f97689a;
        }
        if (i10 == 2) {
            return this.f97690b;
        }
        if (i10 == 3) {
            return this.f97691c;
        }
        if (i10 == 4) {
            return this.f97692d;
        }
        throw new NoWhenBranchMatchedException();
    }

    @NotNull
    public final C14341f r(int i10, int i11, int i12) {
        return new C14341f(p(i10), p(i11), p(i12));
    }

    @NotNull
    public final C14341f s(@NotNull x index1, @NotNull x index2, @NotNull x index3) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        return new C14341f(q(index1), q(index2), q(index3));
    }

    @NotNull
    public final w t(int i10, int i11, int i12, int i13) {
        return new w(p(i10), p(i11), p(i12), p(i13));
    }

    @NotNull
    public String toString() {
        return "Quaternion(x=" + this.f97689a + ", y=" + this.f97690b + ", z=" + this.f97691c + ", w=" + this.f97692d + ")";
    }

    @NotNull
    public final w u(@NotNull x index1, @NotNull x index2, @NotNull x index3, @NotNull x index4) {
        M.p(index1, "index1");
        M.p(index2, "index2");
        M.p(index3, "index3");
        M.p(index4, "index4");
        return new w(q(index1), q(index2), q(index3), q(index4));
    }

    @NotNull
    public final C14341f v() {
        return new C14341f(y(), B(), C());
    }

    public final float w() {
        return x();
    }

    public final float x() {
        return this.f97692d;
    }

    public final float y() {
        return this.f97689a;
    }

    @NotNull
    public final C14341f z() {
        return new C14341f(y(), B(), C());
    }

    public w(float f10, float f11, float f12, float f13) {
        this.f97689a = f10;
        this.f97690b = f11;
        this.f97691c = f12;
        this.f97692d = f13;
    }

    public w(float f10, float f11, float f12, float f13, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11, (i10 & 4) != 0 ? 0.0f : f12, (i10 & 8) != 0 ? 1.0f : f13);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w(@NotNull C14341f v10, float f10) {
        this(v10.H(), v10.K(), v10.L(), f10);
        M.p(v10, "v");
    }

    public w(C14341f c14341f, float f10, int i10, C14026x c14026x) {
        this(c14341f, (i10 & 2) != 0 ? 1.0f : f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w(@NotNull C14342g v10) {
        this(v10.Q(), v10.U(), v10.V(), v10.P());
        M.p(v10, "v");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w(@NotNull w q10) {
        this(q10.f97689a, q10.f97690b, q10.f97691c, q10.f97692d);
        M.p(q10, "q");
    }
}
