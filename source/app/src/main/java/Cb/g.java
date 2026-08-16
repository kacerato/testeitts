package cb;

public abstract class g {

    public static final u f34535A;

    public static final v f34536B;

    public static final w f34537C;

    public static final u f34538D;

    public static final v f34539E;

    public static final w f34540F;

    public static final g f34541G;

    public static final g f34542H;

    public static final g f34543I;

    public static final r f34544J;

    public static final s f34545K;

    public static final t f34546L;

    public static final A f34547M;

    public static final B f34548N;

    public static final C f34549O;

    public static final o f34550P;

    public static final p f34551Q;

    public static final q f34552R;

    public static final g f34553a = new f();

    public static final g f34554b = new C0907g();

    public static final g f34555c = new h();

    public static final g f34556d;

    public static final g f34557e;

    public static final x f34558f;

    public static final y f34559g;

    public static final y f34560h;

    public static final z f34561i;

    public static final z f34562j;

    public static final g f34563k;

    public static final g f34564l;

    public static final x f34565m;

    public static final y f34566n;

    public static final z f34567o;

    public static final g f34568p;

    public static final g f34569q;

    public static final x f34570r;

    public static final y f34571s;

    public static final z f34572t;

    public static final x f34573u;

    public static final y f34574v;

    public static final z f34575w;

    public static final g f34576x;

    public static final g f34577y;

    public static final g f34578z;

    public static class A extends g {

        public final float f34579S;

        public A(float scale) {
            this.f34579S = scale * 2.0f;
        }

        @Override
        public float a(float a10) {
            if (a10 <= 0.5f) {
                float f10 = a10 * 2.0f;
                float f11 = this.f34579S;
                return ((f10 * f10) * (((1.0f + f11) * f10) - f11)) / 2.0f;
            }
            float f12 = (a10 - 1.0f) * 2.0f;
            float f13 = this.f34579S;
            return (((f12 * f12) * (((f13 + 1.0f) * f12) + f13)) / 2.0f) + 1.0f;
        }
    }

    public static class B extends g {

        public final float f34580S;

        public B(float scale) {
            this.f34580S = scale;
        }

        @Override
        public float a(float a10) {
            float f10 = this.f34580S;
            return a10 * a10 * (((1.0f + f10) * a10) - f10);
        }
    }

    public static class C extends g {

        public final float f34581S;

        public C(float scale) {
            this.f34581S = scale;
        }

        @Override
        public float a(float a10) {
            float f10 = a10 - 1.0f;
            float f11 = this.f34581S;
            return (f10 * f10 * (((f11 + 1.0f) * f10) + f11)) + 1.0f;
        }
    }

    public class C4167a extends g {
        @Override
        public float a(float a10) {
            return 1.0f - cb.h.m(a10 * 1.5707964f);
        }
    }

    public class C4168b extends g {
        @Override
        public float a(float a10) {
            return cb.h.T(a10 * 1.5707964f);
        }
    }

    public class C4169c extends g {
        @Override
        public float a(float a10) {
            if (a10 <= 0.5f) {
                float f10 = a10 * 2.0f;
                return (1.0f - ((float) Math.sqrt(1.0f - (f10 * f10)))) / 2.0f;
            }
            float f11 = (a10 - 1.0f) * 2.0f;
            return (((float) Math.sqrt(1.0f - (f11 * f11))) + 1.0f) / 2.0f;
        }
    }

    public class d extends g {
        @Override
        public float a(float a10) {
            return 1.0f - ((float) Math.sqrt(1.0f - (a10 * a10)));
        }
    }

    public class e extends g {
        @Override
        public float a(float a10) {
            float f10 = a10 - 1.0f;
            return (float) Math.sqrt(1.0f - (f10 * f10));
        }
    }

    public class f extends g {
        @Override
        public float a(float a10) {
            return a10;
        }
    }

    public class C0907g extends g {
        @Override
        public float a(float a10) {
            return a10 * a10 * (3.0f - (a10 * 2.0f));
        }
    }

    public class h extends g {
        @Override
        public float a(float a10) {
            float f10 = a10 * a10 * (3.0f - (a10 * 2.0f));
            return f10 * f10 * (3.0f - (f10 * 2.0f));
        }
    }

    public class i extends g {
        @Override
        public float a(float a10) {
            return a10 * a10 * a10 * ((a10 * ((6.0f * a10) - 15.0f)) + 10.0f);
        }
    }

    public class j extends g {
        @Override
        public float a(float a10) {
            if (a10 < 1.0E-6f) {
                return 0.0f;
            }
            return (float) Math.sqrt(a10);
        }
    }

    public class k extends g {
        @Override
        public float a(float a10) {
            if (a10 < 1.0E-6f) {
                return 0.0f;
            }
            if (a10 > 1.0f) {
                return 1.0f;
            }
            return 1.0f - ((float) Math.sqrt(-(a10 - 1.0f)));
        }
    }

    public class l extends g {
        @Override
        public float a(float a10) {
            return (float) Math.cbrt(a10);
        }
    }

    public class m extends g {
        @Override
        public float a(float a10) {
            return 1.0f - ((float) Math.cbrt(-(a10 - 1.0f)));
        }
    }

    public class n extends g {
        @Override
        public float a(float a10) {
            return (1.0f - cb.h.m(a10 * 3.1415927f)) / 2.0f;
        }
    }

    public static class o extends q {
        public o(float[] widths, float[] heights) {
            super(widths, heights);
        }

        @Override
        public float a(float a10) {
            return a10 <= 0.5f ? (1.0f - c(1.0f - (a10 * 2.0f))) / 2.0f : (c((a10 * 2.0f) - 1.0f) / 2.0f) + 0.5f;
        }

        public final float c(float a10) {
            float f10 = this.f34582S[0];
            float f11 = (f10 / 2.0f) + a10;
            return f11 < f10 ? (f11 / (f10 / 2.0f)) - 1.0f : super.a(a10);
        }

        public o(int bounces) {
            super(bounces);
        }
    }

    public static class p extends q {
        public p(float[] widths, float[] heights) {
            super(widths, heights);
        }

        @Override
        public float a(float a10) {
            return 1.0f - super.a(1.0f - a10);
        }

        public p(int bounces) {
            super(bounces);
        }
    }

    public static class r extends g {

        public final float f34584S;

        public final float f34585T;

        public final float f34586U;

        public final float f34587V;

        public r(float value, float power, int bounces, float scale) {
            this.f34584S = value;
            this.f34585T = power;
            this.f34586U = scale;
            this.f34587V = bounces * 3.1415927f * (bounces % 2 == 0 ? 1 : -1);
        }

        @Override
        public float a(float a10) {
            if (a10 <= 0.5f) {
                return ((((float) Math.pow(this.f34584S, this.f34585T * (r8 - 1.0f))) * cb.h.T((a10 * 2.0f) * this.f34587V)) * this.f34586U) / 2.0f;
            }
            return 1.0f - (((((float) Math.pow(this.f34584S, this.f34585T * (r8 - 1.0f))) * cb.h.T(((1.0f - a10) * 2.0f) * this.f34587V)) * this.f34586U) / 2.0f);
        }
    }

    public static class s extends r {
        public s(float value, float power, int bounces, float scale) {
            super(value, power, bounces, scale);
        }

        @Override
        public float a(float a10) {
            if (a10 >= 0.99d) {
                return 1.0f;
            }
            return ((float) Math.pow(this.f34584S, this.f34585T * (a10 - 1.0f))) * cb.h.T(a10 * this.f34587V) * this.f34586U;
        }
    }

    public static class t extends r {
        public t(float value, float power, int bounces, float scale) {
            super(value, power, bounces, scale);
        }

        @Override
        public float a(float a10) {
            if (a10 == 0.0f) {
                return 0.0f;
            }
            return 1.0f - ((((float) Math.pow(this.f34584S, this.f34585T * (r6 - 1.0f))) * cb.h.T((1.0f - a10) * this.f34587V)) * this.f34586U);
        }
    }

    public static class u extends g {

        public final float f34588S;

        public final float f34589T;

        public final float f34590U;

        public final float f34591V;

        public u(float value, float power) {
            this.f34588S = value;
            this.f34589T = power;
            float pow = (float) Math.pow(value, -power);
            this.f34590U = pow;
            this.f34591V = 1.0f / (1.0f - pow);
        }

        @Override
        public float a(float a10) {
            return (a10 <= 0.5f ? (((float) Math.pow(this.f34588S, this.f34589T * ((a10 * 2.0f) - 1.0f))) - this.f34590U) * this.f34591V : 2.0f - ((((float) Math.pow(this.f34588S, (-this.f34589T) * ((a10 * 2.0f) - 1.0f))) - this.f34590U) * this.f34591V)) / 2.0f;
        }
    }

    public static class v extends u {
        public v(float value, float power) {
            super(value, power);
        }

        @Override
        public float a(float a10) {
            return (((float) Math.pow(this.f34588S, this.f34589T * (a10 - 1.0f))) - this.f34590U) * this.f34591V;
        }
    }

    public static class w extends u {
        public w(float value, float power) {
            super(value, power);
        }

        @Override
        public float a(float a10) {
            return 1.0f - ((((float) Math.pow(this.f34588S, (-this.f34589T) * a10)) - this.f34590U) * this.f34591V);
        }
    }

    public static class x extends g {

        public final int f34592S;

        public x(int power) {
            this.f34592S = power;
        }

        @Override
        public float a(float a10) {
            if (a10 <= 0.5f) {
                return ((float) Math.pow(a10 * 2.0f, this.f34592S)) / 2.0f;
            }
            return (((float) Math.pow((a10 - 1.0f) * 2.0f, this.f34592S)) / (this.f34592S % 2 == 0 ? -2 : 2)) + 1.0f;
        }
    }

    public static class y extends x {
        public y(int power) {
            super(power);
        }

        @Override
        public float a(float a10) {
            return (float) Math.pow(a10, this.f34592S);
        }
    }

    public static class z extends x {
        public z(int power) {
            super(power);
        }

        @Override
        public float a(float a10) {
            return (((float) Math.pow(a10 - 1.0f, this.f34592S)) * (this.f34592S % 2 == 0 ? -1 : 1)) + 1.0f;
        }
    }

    static {
        i iVar = new i();
        f34556d = iVar;
        f34557e = iVar;
        f34558f = new x(2);
        y yVar = new y(2);
        f34559g = yVar;
        f34560h = yVar;
        z zVar = new z(2);
        f34561i = zVar;
        f34562j = zVar;
        f34563k = new j();
        f34564l = new k();
        f34565m = new x(3);
        f34566n = new y(3);
        f34567o = new z(3);
        f34568p = new l();
        f34569q = new m();
        f34570r = new x(4);
        f34571s = new y(4);
        f34572t = new z(4);
        f34573u = new x(5);
        f34574v = new y(5);
        f34575w = new z(5);
        f34576x = new n();
        f34577y = new C4167a();
        f34578z = new C4168b();
        f34535A = new u(2.0f, 10.0f);
        f34536B = new v(2.0f, 10.0f);
        f34537C = new w(2.0f, 10.0f);
        f34538D = new u(2.0f, 5.0f);
        f34539E = new v(2.0f, 5.0f);
        f34540F = new w(2.0f, 5.0f);
        f34541G = new C4169c();
        f34542H = new d();
        f34543I = new e();
        f34544J = new r(2.0f, 10.0f, 7, 1.0f);
        f34545K = new s(2.0f, 10.0f, 6, 1.0f);
        f34546L = new t(2.0f, 10.0f, 7, 1.0f);
        f34547M = new A(1.5f);
        f34548N = new B(2.0f);
        f34549O = new C(2.0f);
        f34550P = new o(4);
        f34551Q = new p(4);
        f34552R = new q(4);
    }

    public abstract float a(float a10);

    public float b(float start, float end, float a10) {
        return start + ((end - start) * a(a10));
    }

    public static class q extends g {

        public final float[] f34582S;

        public final float[] f34583T;

        public q(float[] widths, float[] heights) {
            if (widths.length == heights.length) {
                this.f34582S = widths;
                this.f34583T = heights;
                return;
            }
            throw new IllegalArgumentException("Must be the same number of widths and heights.");
        }

        @Override
        public float a(float a10) {
            if (a10 == 1.0f) {
                return 1.0f;
            }
            float[] fArr = this.f34582S;
            int i10 = 0;
            float f10 = a10 + (fArr[0] / 2.0f);
            int length = fArr.length;
            float f11 = 0.0f;
            float f12 = 0.0f;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                f12 = this.f34582S[i10];
                if (f10 <= f12) {
                    f11 = this.f34583T[i10];
                    break;
                }
                f10 -= f12;
                i10++;
            }
            float f13 = f10 / f12;
            float f14 = (4.0f / f12) * f11 * f13;
            return 1.0f - ((f14 - (f13 * f14)) * f12);
        }

        public q(int bounces) {
            if (bounces >= 2 && bounces <= 5) {
                float[] fArr = new float[bounces];
                this.f34582S = fArr;
                float[] fArr2 = new float[bounces];
                this.f34583T = fArr2;
                fArr2[0] = 1.0f;
                if (bounces == 2) {
                    fArr[0] = 0.6f;
                    fArr[1] = 0.4f;
                    fArr2[1] = 0.33f;
                } else if (bounces == 3) {
                    fArr[0] = 0.4f;
                    fArr[1] = 0.4f;
                    fArr[2] = 0.2f;
                    fArr2[1] = 0.33f;
                    fArr2[2] = 0.1f;
                } else if (bounces == 4) {
                    fArr[0] = 0.34f;
                    fArr[1] = 0.34f;
                    fArr[2] = 0.2f;
                    fArr[3] = 0.15f;
                    fArr2[1] = 0.26f;
                    fArr2[2] = 0.11f;
                    fArr2[3] = 0.03f;
                } else if (bounces == 5) {
                    fArr[0] = 0.3f;
                    fArr[1] = 0.3f;
                    fArr[2] = 0.2f;
                    fArr[3] = 0.1f;
                    fArr[4] = 0.1f;
                    fArr2[1] = 0.45f;
                    fArr2[2] = 0.3f;
                    fArr2[3] = 0.15f;
                    fArr2[4] = 0.06f;
                }
                fArr[0] = fArr[0] * 2.0f;
                return;
            }
            throw new IllegalArgumentException("bounces cannot be < 2 or > 5: " + bounces);
        }
    }
}
