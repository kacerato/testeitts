package n0;

import ag.C3610D;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat4\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float4\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,908:1\n266#1:932\n271#1:934\n276#1:936\n424#2:909\n426#2,4:910\n424#2:914\n426#2,4:915\n424#2:919\n426#2,4:920\n424#2:924\n426#2,4:925\n424#2:929\n424#2:931\n424#2:933\n424#2:935\n424#2:937\n424#2:941\n449#2,5:942\n563#2:947\n564#2:948\n565#2:949\n566#2:950\n567#2,2:951\n569#2,4:959\n567#2,2:963\n569#2,4:971\n567#2,2:975\n569#2,4:983\n567#2,2:987\n569#2,4:995\n567#2,2:999\n569#2,4:1007\n567#2,2:1011\n569#2,4:1019\n567#2,2:1023\n569#2,4:1031\n567#2,2:1035\n569#2,4:1043\n575#2:1047\n591#2,2:1049\n593#2,4:1057\n591#2,2:1061\n593#2,4:1069\n591#2,2:1073\n593#2,4:1081\n591#2,2:1085\n593#2,4:1093\n591#2,2:1097\n593#2,4:1105\n591#2,2:1109\n593#2,4:1117\n591#2,2:1121\n593#2,4:1129\n591#2,2:1133\n593#2,4:1141\n599#2:1145\n730#3:930\n617#3,6:953\n617#3,6:965\n617#3,6:977\n617#3,6:989\n617#3,6:1001\n617#3,6:1013\n617#3,6:1025\n617#3,6:1037\n622#3:1048\n617#3,6:1051\n617#3,6:1063\n617#3,6:1075\n617#3,6:1087\n617#3,6:1099\n617#3,6:1111\n617#3,6:1123\n617#3,6:1135\n622#3:1146\n46#4:938\n46#4:939\n46#4:940\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/google/android/filament/utils/Mat4\n*L\n292#1:932\n293#1:934\n294#1:936\n266#1:909\n268#1:910,4\n271#1:914\n273#1:915,4\n276#1:919\n278#1:920,4\n281#1:924\n283#1:925,4\n287#1:929\n289#1:931\n292#1:933\n293#1:935\n294#1:937\n305#1:941\n328#1:942,5\n338#1:947\n339#1:948\n340#1:949\n341#1:950\n343#1:951,2\n343#1:959,4\n344#1:963,2\n344#1:971,4\n345#1:975,2\n345#1:983,4\n346#1:987,2\n346#1:995,4\n343#1:999,2\n343#1:1007,4\n344#1:1011,2\n344#1:1019,4\n345#1:1023,2\n345#1:1031,4\n346#1:1035,2\n346#1:1043,4\n350#1:1047\n380#1:1049,2\n380#1:1057,4\n381#1:1061,2\n381#1:1069,4\n382#1:1073,2\n382#1:1081,4\n383#1:1085,2\n383#1:1093,4\n380#1:1097,2\n380#1:1105,4\n381#1:1109,2\n381#1:1117,4\n382#1:1121,2\n382#1:1129,4\n383#1:1133,2\n383#1:1141,4\n387#1:1145\n287#1:930\n343#1:953,6\n344#1:965,6\n345#1:977,6\n346#1:989,6\n343#1:1001,6\n344#1:1013,6\n345#1:1025,6\n346#1:1037,6\n350#1:1048\n380#1:1051,6\n381#1:1063,6\n382#1:1075,6\n383#1:1087,6\n380#1:1099,6\n381#1:1111,6\n382#1:1123,6\n383#1:1135,6\n387#1:1146\n297#1:938\n298#1:939\n300#1:940\n*E\n"})
public final class q {

    @NotNull
    public static final a f97666e = new a(null);

    @NotNull
    public C14342g f97667a;

    @NotNull
    public C14342g f97668b;

    @NotNull
    public C14342g f97669c;

    @NotNull
    public C14342g f97670d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final q a() {
            return new q((C14342g) null, (C14342g) null, (C14342g) null, (C14342g) null, 15, (C14026x) null);
        }

        @NotNull
        public final q b(@NotNull float... a10) {
            M.p(a10, "a");
            if (a10.length >= 16) {
                return new q(new C14342g(a10[0], a10[4], a10[8], a10[12]), new C14342g(a10[1], a10[5], a10[9], a10[13]), new C14342g(a10[2], a10[6], a10[10], a10[14]), new C14342g(a10[3], a10[7], a10[11], a10[15]));
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        public a() {
        }
    }

    public class b {

        public static final int[] f97671a;

        static {
            int[] iArr = new int[r.values().length];
            try {
                iArr[r.f97673X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[r.f97674Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[r.f97675Z.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[r.f97672W.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f97671a = iArr;
        }
    }

    public q() {
        this((C14342g) null, (C14342g) null, (C14342g) null, (C14342g) null, 15, (C14026x) null);
    }

    public static C14341f Z(q qVar, C c10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c10 = C.ZYX;
        }
        return qVar.Y(c10);
    }

    public static q c(q qVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        C14342g D10 = qVar.D();
        C14342g c14342g = new C14342g(Math.abs(D10.Q() - f10) < f11 ? 0.0f : Float.compare(r2, f10), Math.abs(D10.U() - f10) < f11 ? 0.0f : Float.compare(r3, f10), Math.abs(D10.V() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(D10.P() - f10) < f11 ? 0.0f : Float.compare(r0, f10));
        C14342g E10 = qVar.E();
        C14342g c14342g2 = new C14342g(Math.abs(E10.Q() - f10) < f11 ? 0.0f : Float.compare(r3, f10), Math.abs(E10.U() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(E10.V() - f10) < f11 ? 0.0f : Float.compare(r5, f10), Math.abs(E10.P() - f10) < f11 ? 0.0f : Float.compare(r0, f10));
        C14342g F10 = qVar.F();
        C14342g c14342g3 = new C14342g(Math.abs(F10.Q() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(F10.U() - f10) < f11 ? 0.0f : Float.compare(r5, f10), Math.abs(F10.V() - f10) < f11 ? 0.0f : Float.compare(r6, f10), Math.abs(F10.P() - f10) < f11 ? 0.0f : Float.compare(r0, f10));
        C14342g C10 = qVar.C();
        return new q(c14342g, c14342g2, c14342g3, new C14342g(Math.abs(C10.Q() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(C10.U() - f10) < f11 ? 0.0f : Float.compare(r5, f10), Math.abs(C10.V() - f10) < f11 ? 0.0f : Float.compare(r6, f10), Math.abs(C10.P() - f10) >= f11 ? Float.compare(r8, f10) : 0.0f));
    }

    public static q d(q qVar, q m10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(m10, "m");
        C14342g D10 = qVar.D();
        C14342g D11 = m10.D();
        C14342g c14342g = new C14342g(Math.abs(D10.Q() - D11.Q()) < f10 ? 0.0f : Float.compare(r3, r4), Math.abs(D10.U() - D11.U()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(D10.V() - D11.V()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(D10.P() - D11.P()) < f10 ? 0.0f : Float.compare(r0, r1));
        C14342g E10 = qVar.E();
        C14342g E11 = m10.E();
        C14342g c14342g2 = new C14342g(Math.abs(E10.Q() - E11.Q()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(E10.U() - E11.U()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(E10.V() - E11.V()) < f10 ? 0.0f : Float.compare(r6, r7), Math.abs(E10.P() - E11.P()) < f10 ? 0.0f : Float.compare(r0, r1));
        C14342g F10 = qVar.F();
        C14342g F11 = m10.F();
        C14342g c14342g3 = new C14342g(Math.abs(F10.Q() - F11.Q()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(F10.U() - F11.U()) < f10 ? 0.0f : Float.compare(r6, r7), Math.abs(F10.V() - F11.V()) < f10 ? 0.0f : Float.compare(r7, r8), Math.abs(F10.P() - F11.P()) < f10 ? 0.0f : Float.compare(r0, r1));
        C14342g C10 = qVar.C();
        C14342g C11 = m10.C();
        return new q(c14342g, c14342g2, c14342g3, new C14342g(Math.abs(C10.Q() - C11.Q()) < f10 ? 0.0f : Float.compare(r1, r5), Math.abs(C10.U() - C11.U()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(C10.V() - C11.V()) < f10 ? 0.0f : Float.compare(r6, r7), Math.abs(C10.P() - C11.P()) >= f10 ? Float.compare(r10, r11) : 0.0f));
    }

    public static q j(q qVar, C14342g c14342g, C14342g c14342g2, C14342g c14342g3, C14342g c14342g4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c14342g = qVar.f97667a;
        }
        if ((i10 & 2) != 0) {
            c14342g2 = qVar.f97668b;
        }
        if ((i10 & 4) != 0) {
            c14342g3 = qVar.f97669c;
        }
        if ((i10 & 8) != 0) {
            c14342g4 = qVar.f97670d;
        }
        return qVar.i(c14342g, c14342g2, c14342g3, c14342g4);
    }

    public static boolean o(q qVar, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        C14342g D10 = qVar.D();
        if (Math.abs(D10.Q() - f10) < f11 && Math.abs(D10.U() - f10) < f11 && Math.abs(D10.V() - f10) < f11 && Math.abs(D10.P() - f10) < f11) {
            C14342g E10 = qVar.E();
            if (Math.abs(E10.Q() - f10) < f11 && Math.abs(E10.U() - f10) < f11 && Math.abs(E10.V() - f10) < f11 && Math.abs(E10.P() - f10) < f11) {
                C14342g F10 = qVar.F();
                if (Math.abs(F10.Q() - f10) < f11 && Math.abs(F10.U() - f10) < f11 && Math.abs(F10.V() - f10) < f11 && Math.abs(F10.P() - f10) < f11) {
                    C14342g C10 = qVar.C();
                    if (Math.abs(C10.Q() - f10) < f11 && Math.abs(C10.U() - f10) < f11 && Math.abs(C10.V() - f10) < f11 && Math.abs(C10.P() - f10) < f11) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean p(q qVar, q m10, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        M.p(m10, "m");
        C14342g D10 = qVar.D();
        C14342g D11 = m10.D();
        if (Math.abs(D10.Q() - D11.Q()) < f10 && Math.abs(D10.U() - D11.U()) < f10 && Math.abs(D10.V() - D11.V()) < f10 && Math.abs(D10.P() - D11.P()) < f10) {
            C14342g E10 = qVar.E();
            C14342g E11 = m10.E();
            if (Math.abs(E10.Q() - E11.Q()) < f10 && Math.abs(E10.U() - E11.U()) < f10 && Math.abs(E10.V() - E11.V()) < f10 && Math.abs(E10.P() - E11.P()) < f10) {
                C14342g F10 = qVar.F();
                C14342g F11 = m10.F();
                if (Math.abs(F10.Q() - F11.Q()) < f10 && Math.abs(F10.U() - F11.U()) < f10 && Math.abs(F10.V() - F11.V()) < f10 && Math.abs(F10.P() - F11.P()) < f10) {
                    C14342g C10 = qVar.C();
                    C14342g C11 = m10.C();
                    if (Math.abs(C10.Q() - C11.Q()) < f10 && Math.abs(C10.U() - C11.U()) < f10 && Math.abs(C10.V() - C11.V()) < f10 && Math.abs(C10.P() - C11.P()) < f10) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @NotNull
    public final C14341f A() {
        C14342g E10 = E();
        return new C14341f(E10.Q(), E10.U(), E10.V());
    }

    @NotNull
    public final p B() {
        C14342g D10 = D();
        C14341f c14341f = new C14341f(D10.Q(), D10.U(), D10.V());
        C14342g E10 = E();
        C14341f c14341f2 = new C14341f(E10.Q(), E10.U(), E10.V());
        C14342g F10 = F();
        return new p(c14341f, c14341f2, new C14341f(F10.Q(), F10.U(), F10.V()));
    }

    @NotNull
    public final C14342g C() {
        return this.f97670d;
    }

    @NotNull
    public final C14342g D() {
        return this.f97667a;
    }

    @NotNull
    public final C14342g E() {
        return this.f97668b;
    }

    @NotNull
    public final C14342g F() {
        return this.f97669c;
    }

    @NotNull
    public final q G() {
        C14342g c14342g = this.f97667a;
        this.f97667a = c14342g.W();
        C14342g c14342g2 = this.f97668b;
        this.f97668b = c14342g2.W();
        C14342g c14342g3 = this.f97669c;
        this.f97669c = c14342g3.W();
        C14342g c14342g4 = this.f97670d;
        this.f97670d = c14342g4.W();
        return new q(c14342g, c14342g2, c14342g3, c14342g4);
    }

    public final float H(int i10, int i11) {
        return s(i11 - 1).t(i10 - 1);
    }

    public final void I(int i10, int i11, float f10) {
        L(i11 - 1, i10 - 1, f10);
    }

    @NotNull
    public final q J(float f10) {
        C14342g c14342g = this.f97667a;
        C14342g c14342g2 = new C14342g(c14342g.Q() - f10, c14342g.U() - f10, c14342g.V() - f10, c14342g.P() - f10);
        C14342g c14342g3 = this.f97668b;
        C14342g c14342g4 = new C14342g(c14342g3.Q() - f10, c14342g3.U() - f10, c14342g3.V() - f10, c14342g3.P() - f10);
        C14342g c14342g5 = this.f97669c;
        C14342g c14342g6 = new C14342g(c14342g5.Q() - f10, c14342g5.U() - f10, c14342g5.V() - f10, c14342g5.P() - f10);
        C14342g c14342g7 = this.f97670d;
        return new q(c14342g2, c14342g4, c14342g6, new C14342g(c14342g7.Q() - f10, c14342g7.U() - f10, c14342g7.V() - f10, c14342g7.P() - f10));
    }

    @NotNull
    public final q K(float f10) {
        C14342g c14342g = this.f97667a;
        C14342g c14342g2 = new C14342g(c14342g.Q() + f10, c14342g.U() + f10, c14342g.V() + f10, c14342g.P() + f10);
        C14342g c14342g3 = this.f97668b;
        C14342g c14342g4 = new C14342g(c14342g3.Q() + f10, c14342g3.U() + f10, c14342g3.V() + f10, c14342g3.P() + f10);
        C14342g c14342g5 = this.f97669c;
        C14342g c14342g6 = new C14342g(c14342g5.Q() + f10, c14342g5.U() + f10, c14342g5.V() + f10, c14342g5.P() + f10);
        C14342g c14342g7 = this.f97670d;
        return new q(c14342g2, c14342g4, c14342g6, new C14342g(c14342g7.Q() + f10, c14342g7.U() + f10, c14342g7.V() + f10, c14342g7.P() + f10));
    }

    public final void L(int i10, int i11, float f10) {
        s(i10).g0(i11, f10);
    }

    public final void M(int i10, @NotNull C14342g v10) {
        M.p(v10, "v");
        C14342g s10 = s(i10);
        s10.D0(v10.Q());
        s10.H0(v10.U());
        s10.I0(v10.V());
        s10.C0(v10.P());
    }

    public final void N(@NotNull C14341f value) {
        M.p(value, "value");
        C14342g F10 = F();
        F10.D0(value.H());
        F10.H0(value.K());
        F10.I0(value.L());
    }

    public final void O(@NotNull C14341f value) {
        M.p(value, "value");
        C14342g C10 = C();
        C10.D0(value.H());
        C10.H0(value.K());
        C10.I0(value.L());
    }

    public final void P(@NotNull C14341f value) {
        M.p(value, "value");
        C14342g D10 = D();
        D10.D0(value.H());
        D10.H0(value.K());
        D10.I0(value.L());
    }

    public final void Q(@NotNull C14341f value) {
        M.p(value, "value");
        C14342g E10 = E();
        E10.D0(value.H());
        E10.H0(value.K());
        E10.I0(value.L());
    }

    public final void R(@NotNull C14342g c14342g) {
        M.p(c14342g, "<set-?>");
        this.f97670d = c14342g;
    }

    public final void S(@NotNull C14342g c14342g) {
        M.p(c14342g, "<set-?>");
        this.f97667a = c14342g;
    }

    public final void T(@NotNull C14342g c14342g) {
        M.p(c14342g, "<set-?>");
        this.f97668b = c14342g;
    }

    public final void U(@NotNull C14342g c14342g) {
        M.p(c14342g, "<set-?>");
        this.f97669c = c14342g;
    }

    @NotNull
    public final C14342g V(@NotNull C14342g v10) {
        M.p(v10, "v");
        return new C14342g((this.f97667a.Q() * v10.Q()) + (this.f97668b.Q() * v10.U()) + (this.f97669c.Q() * v10.V()) + (this.f97670d.Q() * v10.P()), (this.f97667a.U() * v10.Q()) + (this.f97668b.U() * v10.U()) + (this.f97669c.U() * v10.V()) + (this.f97670d.U() * v10.P()), (this.f97667a.V() * v10.Q()) + (this.f97668b.V() * v10.U()) + (this.f97669c.V() * v10.V()) + (this.f97670d.V() * v10.P()), (this.f97667a.P() * v10.Q()) + (this.f97668b.P() * v10.U()) + (this.f97669c.P() * v10.V()) + (this.f97670d.P() * v10.P()));
    }

    @NotNull
    public final q W(float f10) {
        C14342g c14342g = this.f97667a;
        C14342g c14342g2 = new C14342g(c14342g.Q() * f10, c14342g.U() * f10, c14342g.V() * f10, c14342g.P() * f10);
        C14342g c14342g3 = this.f97668b;
        C14342g c14342g4 = new C14342g(c14342g3.Q() * f10, c14342g3.U() * f10, c14342g3.V() * f10, c14342g3.P() * f10);
        C14342g c14342g5 = this.f97669c;
        C14342g c14342g6 = new C14342g(c14342g5.Q() * f10, c14342g5.U() * f10, c14342g5.V() * f10, c14342g5.P() * f10);
        C14342g c14342g7 = this.f97670d;
        return new q(c14342g2, c14342g4, c14342g6, new C14342g(c14342g7.Q() * f10, c14342g7.U() * f10, c14342g7.V() * f10, c14342g7.P() * f10));
    }

    @NotNull
    public final q X(@NotNull q m10) {
        M.p(m10, "m");
        return new q(new C14342g((this.f97667a.Q() * m10.f97667a.Q()) + (this.f97668b.Q() * m10.f97667a.U()) + (this.f97669c.Q() * m10.f97667a.V()) + (this.f97670d.Q() * m10.f97667a.P()), (this.f97667a.U() * m10.f97667a.Q()) + (this.f97668b.U() * m10.f97667a.U()) + (this.f97669c.U() * m10.f97667a.V()) + (this.f97670d.U() * m10.f97667a.P()), (this.f97667a.V() * m10.f97667a.Q()) + (this.f97668b.V() * m10.f97667a.U()) + (this.f97669c.V() * m10.f97667a.V()) + (this.f97670d.V() * m10.f97667a.P()), (this.f97667a.P() * m10.f97667a.Q()) + (this.f97668b.P() * m10.f97667a.U()) + (this.f97669c.P() * m10.f97667a.V()) + (this.f97670d.P() * m10.f97667a.P())), new C14342g((this.f97667a.Q() * m10.f97668b.Q()) + (this.f97668b.Q() * m10.f97668b.U()) + (this.f97669c.Q() * m10.f97668b.V()) + (this.f97670d.Q() * m10.f97668b.P()), (this.f97667a.U() * m10.f97668b.Q()) + (this.f97668b.U() * m10.f97668b.U()) + (this.f97669c.U() * m10.f97668b.V()) + (this.f97670d.U() * m10.f97668b.P()), (this.f97667a.V() * m10.f97668b.Q()) + (this.f97668b.V() * m10.f97668b.U()) + (this.f97669c.V() * m10.f97668b.V()) + (this.f97670d.V() * m10.f97668b.P()), (this.f97667a.P() * m10.f97668b.Q()) + (this.f97668b.P() * m10.f97668b.U()) + (this.f97669c.P() * m10.f97668b.V()) + (this.f97670d.P() * m10.f97668b.P())), new C14342g((this.f97667a.Q() * m10.f97669c.Q()) + (this.f97668b.Q() * m10.f97669c.U()) + (this.f97669c.Q() * m10.f97669c.V()) + (this.f97670d.Q() * m10.f97669c.P()), (this.f97667a.U() * m10.f97669c.Q()) + (this.f97668b.U() * m10.f97669c.U()) + (this.f97669c.U() * m10.f97669c.V()) + (this.f97670d.U() * m10.f97669c.P()), (this.f97667a.V() * m10.f97669c.Q()) + (this.f97668b.V() * m10.f97669c.U()) + (this.f97669c.V() * m10.f97669c.V()) + (this.f97670d.V() * m10.f97669c.P()), (this.f97667a.P() * m10.f97669c.Q()) + (this.f97668b.P() * m10.f97669c.U()) + (this.f97669c.P() * m10.f97669c.V()) + (this.f97670d.P() * m10.f97669c.P())), new C14342g((this.f97667a.Q() * m10.f97670d.Q()) + (this.f97668b.Q() * m10.f97670d.U()) + (this.f97669c.Q() * m10.f97670d.V()) + (this.f97670d.Q() * m10.f97670d.P()), (this.f97667a.U() * m10.f97670d.Q()) + (this.f97668b.U() * m10.f97670d.U()) + (this.f97669c.U() * m10.f97670d.V()) + (this.f97670d.U() * m10.f97670d.P()), (this.f97667a.V() * m10.f97670d.Q()) + (this.f97668b.V() * m10.f97670d.U()) + (this.f97669c.V() * m10.f97670d.V()) + (this.f97670d.V() * m10.f97670d.P()), (this.f97667a.P() * m10.f97670d.Q()) + (this.f97668b.P() * m10.f97670d.U()) + (this.f97669c.P() * m10.f97670d.V()) + (this.f97670d.P() * m10.f97670d.P())));
    }

    @NotNull
    public final C14341f Y(@NotNull C order) {
        M.p(order, "order");
        return s.m(this, order);
    }

    @NotNull
    public final q a(float f10, float f11) {
        C14342g D10 = D();
        C14342g c14342g = new C14342g(Math.abs(D10.Q() - f10) < f11 ? 0.0f : Float.compare(r3, f10), Math.abs(D10.U() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(D10.V() - f10) < f11 ? 0.0f : Float.compare(r6, f10), Math.abs(D10.P() - f10) < f11 ? 0.0f : Float.compare(r1, f10));
        C14342g E10 = E();
        C14342g c14342g2 = new C14342g(Math.abs(E10.Q() - f10) < f11 ? 0.0f : Float.compare(r4, f10), Math.abs(E10.U() - f10) < f11 ? 0.0f : Float.compare(r6, f10), Math.abs(E10.V() - f10) < f11 ? 0.0f : Float.compare(r7, f10), Math.abs(E10.P() - f10) < f11 ? 0.0f : Float.compare(r1, f10));
        C14342g F10 = F();
        C14342g c14342g3 = new C14342g(Math.abs(F10.Q() - f10) < f11 ? 0.0f : Float.compare(r6, f10), Math.abs(F10.U() - f10) < f11 ? 0.0f : Float.compare(r7, f10), Math.abs(F10.V() - f10) < f11 ? 0.0f : Float.compare(r8, f10), Math.abs(F10.P() - f10) < f11 ? 0.0f : Float.compare(r1, f10));
        C14342g C10 = C();
        return new q(c14342g, c14342g2, c14342g3, new C14342g(Math.abs(C10.Q() - f10) < f11 ? 0.0f : Float.compare(r7, f10), Math.abs(C10.U() - f10) < f11 ? 0.0f : Float.compare(r8, f10), Math.abs(C10.V() - f10) < f11 ? 0.0f : Float.compare(r9, f10), Math.abs(C10.P() - f10) >= f11 ? Float.compare(r1, f10) : 0.0f));
    }

    @NotNull
    public final float[] a0() {
        return new float[]{this.f97667a.Q(), this.f97668b.Q(), this.f97669c.Q(), this.f97670d.Q(), this.f97667a.U(), this.f97668b.U(), this.f97669c.U(), this.f97670d.U(), this.f97667a.V(), this.f97668b.V(), this.f97669c.V(), this.f97670d.V(), this.f97667a.P(), this.f97668b.P(), this.f97669c.P(), this.f97670d.P()};
    }

    @NotNull
    public final q b(@NotNull q m10, float f10) {
        M.p(m10, "m");
        C14342g D10 = D();
        C14342g D11 = m10.D();
        C14342g c14342g = new C14342g(Math.abs(D10.Q() - D11.Q()) < f10 ? 0.0f : Float.compare(r4, r5), Math.abs(D10.U() - D11.U()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(D10.V() - D11.V()) < f10 ? 0.0f : Float.compare(r6, r8), Math.abs(D10.P() - D11.P()) < f10 ? 0.0f : Float.compare(r1, r2));
        C14342g E10 = E();
        C14342g E11 = m10.E();
        C14342g c14342g2 = new C14342g(Math.abs(E10.Q() - E11.Q()) < f10 ? 0.0f : Float.compare(r5, r6), Math.abs(E10.U() - E11.U()) < f10 ? 0.0f : Float.compare(r6, r8), Math.abs(E10.V() - E11.V()) < f10 ? 0.0f : Float.compare(r8, r9), Math.abs(E10.P() - E11.P()) < f10 ? 0.0f : Float.compare(r1, r2));
        C14342g F10 = F();
        C14342g F11 = m10.F();
        C14342g c14342g3 = new C14342g(Math.abs(F10.Q() - F11.Q()) < f10 ? 0.0f : Float.compare(r6, r8), Math.abs(F10.U() - F11.U()) < f10 ? 0.0f : Float.compare(r8, r9), Math.abs(F10.V() - F11.V()) < f10 ? 0.0f : Float.compare(r9, r10), Math.abs(F10.P() - F11.P()) < f10 ? 0.0f : Float.compare(r1, r2));
        C14342g C10 = C();
        C14342g C11 = m10.C();
        return new q(c14342g, c14342g2, c14342g3, new C14342g(Math.abs(C10.Q() - C11.Q()) < f10 ? 0.0f : Float.compare(r6, r8), Math.abs(C10.U() - C11.U()) < f10 ? 0.0f : Float.compare(r8, r9), Math.abs(C10.V() - C11.V()) < f10 ? 0.0f : Float.compare(r9, r10), Math.abs(C10.P() - C11.P()) >= f10 ? Float.compare(r1, r13) : 0.0f));
    }

    @NotNull
    public final w b0() {
        return s.J(this);
    }

    @NotNull
    public final q c0() {
        return new q(this.f97667a.P0(), this.f97668b.P0(), this.f97669c.P0(), this.f97670d.P0());
    }

    @NotNull
    public final C14342g e() {
        return this.f97667a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return M.g(this.f97667a, qVar.f97667a) && M.g(this.f97668b, qVar.f97668b) && M.g(this.f97669c, qVar.f97669c) && M.g(this.f97670d, qVar.f97670d);
    }

    @NotNull
    public final C14342g f() {
        return this.f97668b;
    }

    @NotNull
    public final C14342g g() {
        return this.f97669c;
    }

    @NotNull
    public final C14342g h() {
        return this.f97670d;
    }

    public int hashCode() {
        return (((((this.f97667a.hashCode() * 31) + this.f97668b.hashCode()) * 31) + this.f97669c.hashCode()) * 31) + this.f97670d.hashCode();
    }

    @NotNull
    public final q i(@NotNull C14342g x10, @NotNull C14342g y10, @NotNull C14342g z10, @NotNull C14342g w10) {
        M.p(x10, "x");
        M.p(y10, "y");
        M.p(z10, "z");
        M.p(w10, "w");
        return new q(x10, y10, z10, w10);
    }

    @NotNull
    public final q k() {
        C14342g c14342g = this.f97667a;
        this.f97667a = c14342g.k();
        C14342g c14342g2 = this.f97668b;
        this.f97668b = c14342g2.k();
        C14342g c14342g3 = this.f97669c;
        this.f97669c = c14342g3.k();
        C14342g c14342g4 = this.f97670d;
        this.f97670d = c14342g4.k();
        return new q(c14342g, c14342g2, c14342g3, c14342g4);
    }

    @NotNull
    public final q l(float f10) {
        C14342g c14342g = this.f97667a;
        C14342g c14342g2 = new C14342g(c14342g.Q() / f10, c14342g.U() / f10, c14342g.V() / f10, c14342g.P() / f10);
        C14342g c14342g3 = this.f97668b;
        C14342g c14342g4 = new C14342g(c14342g3.Q() / f10, c14342g3.U() / f10, c14342g3.V() / f10, c14342g3.P() / f10);
        C14342g c14342g5 = this.f97669c;
        C14342g c14342g6 = new C14342g(c14342g5.Q() / f10, c14342g5.U() / f10, c14342g5.V() / f10, c14342g5.P() / f10);
        C14342g c14342g7 = this.f97670d;
        return new q(c14342g2, c14342g4, c14342g6, new C14342g(c14342g7.Q() / f10, c14342g7.U() / f10, c14342g7.V() / f10, c14342g7.P() / f10));
    }

    public final boolean m(float f10, float f11) {
        C14342g D10 = D();
        if (Math.abs(D10.Q() - f10) < f11 && Math.abs(D10.U() - f10) < f11 && Math.abs(D10.V() - f10) < f11 && Math.abs(D10.P() - f10) < f11) {
            C14342g E10 = E();
            if (Math.abs(E10.Q() - f10) < f11 && Math.abs(E10.U() - f10) < f11 && Math.abs(E10.V() - f10) < f11 && Math.abs(E10.P() - f10) < f11) {
                C14342g F10 = F();
                if (Math.abs(F10.Q() - f10) < f11 && Math.abs(F10.U() - f10) < f11 && Math.abs(F10.V() - f10) < f11 && Math.abs(F10.P() - f10) < f11) {
                    C14342g C10 = C();
                    if (Math.abs(C10.Q() - f10) < f11 && Math.abs(C10.U() - f10) < f11 && Math.abs(C10.V() - f10) < f11 && Math.abs(C10.P() - f10) < f11) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean n(@NotNull q m10, float f10) {
        M.p(m10, "m");
        C14342g D10 = D();
        C14342g D11 = m10.D();
        if (Math.abs(D10.Q() - D11.Q()) < f10 && Math.abs(D10.U() - D11.U()) < f10 && Math.abs(D10.V() - D11.V()) < f10 && Math.abs(D10.P() - D11.P()) < f10) {
            C14342g E10 = E();
            C14342g E11 = m10.E();
            if (Math.abs(E10.Q() - E11.Q()) < f10 && Math.abs(E10.U() - E11.U()) < f10 && Math.abs(E10.V() - E11.V()) < f10 && Math.abs(E10.P() - E11.P()) < f10) {
                C14342g F10 = F();
                C14342g F11 = m10.F();
                if (Math.abs(F10.Q() - F11.Q()) < f10 && Math.abs(F10.U() - F11.U()) < f10 && Math.abs(F10.V() - F11.V()) < f10 && Math.abs(F10.P() - F11.P()) < f10) {
                    C14342g C10 = C();
                    C14342g C11 = m10.C();
                    if (Math.abs(C10.Q() - C11.Q()) < f10 && Math.abs(C10.U() - C11.U()) < f10 && Math.abs(C10.V() - C11.V()) < f10 && Math.abs(C10.P() - C11.P()) < f10) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final float q(int i10, int i11) {
        return s(i10).t(i11);
    }

    public final float r(@NotNull r column, int i10) {
        M.p(column, "column");
        return t(column).t(i10);
    }

    @NotNull
    public final C14342g s(int i10) {
        if (i10 == 0) {
            return this.f97667a;
        }
        if (i10 == 1) {
            return this.f97668b;
        }
        if (i10 == 2) {
            return this.f97669c;
        }
        if (i10 == 3) {
            return this.f97670d;
        }
        throw new IllegalArgumentException("column must be in 0..3");
    }

    @NotNull
    public final C14342g t(@NotNull r column) {
        M.p(column, "column");
        int i10 = b.f97671a[column.ordinal()];
        if (i10 == 1) {
            return this.f97667a;
        }
        if (i10 == 2) {
            return this.f97668b;
        }
        if (i10 == 3) {
            return this.f97669c;
        }
        if (i10 == 4) {
            return this.f97670d;
        }
        throw new NoWhenBranchMatchedException();
    }

    @NotNull
    public String toString() {
        return C3610D.v("\n            |" + this.f97667a.Q() + " " + this.f97668b.Q() + " " + this.f97669c.Q() + " " + this.f97670d.Q() + "|\n            |" + this.f97667a.U() + " " + this.f97668b.U() + " " + this.f97669c.U() + " " + this.f97670d.U() + "|\n            |" + this.f97667a.V() + " " + this.f97668b.V() + " " + this.f97669c.V() + " " + this.f97670d.V() + "|\n            |" + this.f97667a.P() + " " + this.f97668b.P() + " " + this.f97669c.P() + " " + this.f97670d.P() + "|\n            ");
    }

    @NotNull
    public final C14341f u() {
        C14342g F10 = F();
        return new C14341f(F10.Q(), F10.U(), F10.V());
    }

    @NotNull
    public final C14341f v() {
        C14342g C10 = C();
        return new C14341f(C10.Q(), C10.U(), C10.V());
    }

    @NotNull
    public final C14341f w() {
        C14342g D10 = D();
        return new C14341f(D10.Q(), D10.U(), D10.V());
    }

    @NotNull
    public final C14341f x() {
        C14342g D10 = D();
        C14341f w32 = I.w3(new C14341f(D10.Q(), D10.U(), D10.V()));
        C14342g E10 = E();
        C14341f w33 = I.w3(new C14341f(E10.Q(), E10.U(), E10.V()));
        C14342g F10 = F();
        C14341f w34 = I.w3(new C14341f(F10.Q(), F10.U(), F10.V()));
        return w34.K() <= -1.0f ? new C14341f(-90.0f, 0.0f, ((float) Math.atan2(w32.L(), w33.L())) * 57.295776f) : w34.K() >= 1.0f ? new C14341f(90.0f, 0.0f, ((float) Math.atan2(-w32.L(), -w33.L())) * 57.295776f) : new C14341f((-((float) Math.asin(w34.K()))) * 57.295776f, (-((float) Math.atan2(w34.H(), w34.L()))) * 57.295776f, ((float) Math.atan2(w32.K(), w33.K())) * 57.295776f);
    }

    @NotNull
    public final C14341f y() {
        C14342g D10 = D();
        C14341f c14341f = new C14341f(D10.Q(), D10.U(), D10.V());
        float sqrt = (float) Math.sqrt((c14341f.H() * c14341f.H()) + (c14341f.K() * c14341f.K()) + (c14341f.L() * c14341f.L()));
        C14342g E10 = E();
        C14341f c14341f2 = new C14341f(E10.Q(), E10.U(), E10.V());
        float sqrt2 = (float) Math.sqrt((c14341f2.H() * c14341f2.H()) + (c14341f2.K() * c14341f2.K()) + (c14341f2.L() * c14341f2.L()));
        C14342g F10 = F();
        C14341f c14341f3 = new C14341f(F10.Q(), F10.U(), F10.V());
        return new C14341f(sqrt, sqrt2, (float) Math.sqrt((c14341f3.H() * c14341f3.H()) + (c14341f3.K() * c14341f3.K()) + (c14341f3.L() * c14341f3.L())));
    }

    @NotNull
    public final C14341f z() {
        C14342g C10 = C();
        return new C14341f(C10.Q(), C10.U(), C10.V());
    }

    public q(@NotNull C14342g x10, @NotNull C14342g y10, @NotNull C14342g z10, @NotNull C14342g w10) {
        M.p(x10, "x");
        M.p(y10, "y");
        M.p(z10, "z");
        M.p(w10, "w");
        this.f97667a = x10;
        this.f97668b = y10;
        this.f97669c = z10;
        this.f97670d = w10;
    }

    public q(C14342g c14342g, C14342g c14342g2, C14342g c14342g3, C14342g c14342g4, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? new C14342g(1.0f, 0.0f, 0.0f, 0.0f, 14, null) : c14342g, (i10 & 2) != 0 ? new C14342g(0.0f, 1.0f, 0.0f, 0.0f, 13, null) : c14342g2, (i10 & 4) != 0 ? new C14342g(0.0f, 0.0f, 1.0f, 0.0f, 11, null) : c14342g3, (i10 & 8) != 0 ? new C14342g(0.0f, 0.0f, 0.0f, 1.0f, 7, null) : c14342g4);
    }

    public q(C14341f c14341f, C14341f c14341f2, C14341f c14341f3, C14341f c14341f4, int i10, C14026x c14026x) {
        this(c14341f, c14341f2, c14341f3, (i10 & 8) != 0 ? new C14341f(0.0f, 0.0f, 0.0f, 7, null) : c14341f4);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q(@NotNull C14341f right, @NotNull C14341f up, @NotNull C14341f forward, @NotNull C14341f position) {
        this(new C14342g(right, 0.0f, 2, (C14026x) null), new C14342g(up, 0.0f, 2, (C14026x) null), new C14342g(forward, 0.0f, 2, (C14026x) null), new C14342g(position, 1.0f));
        M.p(right, "right");
        M.p(up, "up");
        M.p(forward, "forward");
        M.p(position, "position");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q(@NotNull q m10) {
        this(C14342g.j(m10.f97667a, 0.0f, 0.0f, 0.0f, 0.0f, 15, null), C14342g.j(m10.f97668b, 0.0f, 0.0f, 0.0f, 0.0f, 15, null), C14342g.j(m10.f97669c, 0.0f, 0.0f, 0.0f, 0.0f, 15, null), C14342g.j(m10.f97670d, 0.0f, 0.0f, 0.0f, 0.0f, 15, null));
        M.p(m10, "m");
    }
}
