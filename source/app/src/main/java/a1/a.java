package A1;

import a2.C3564g;
import a2.C3574q;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

public class a extends C3564g implements Cloneable {

    public static final int f129h = 90;

    public static final int f130i = 180;

    public static final int f131j = 270;

    public static final int f132k = 180;

    public static final float f133l = 1.75f;

    public float f134b;

    public float f135c;

    public float f136d;

    public float f137e;

    public float f138f;

    public float f139g = -1.0f;

    public a(float f10, float f11, float f12) {
        this.f135c = f10;
        this.f134b = f11;
        j(f12);
        this.f138f = 0.0f;
    }

    @Override
    public void b(float f10, float f11, float f12, @NonNull C3574q c3574q) {
        float f13;
        float f14;
        float f15 = this.f136d;
        if (f15 == 0.0f) {
            c3574q.n(f10, 0.0f);
            return;
        }
        float f16 = ((this.f135c * 2.0f) + f15) / 2.0f;
        float f17 = f12 * this.f134b;
        float f18 = f11 + this.f138f;
        float f19 = (this.f137e * f12) + ((1.0f - f12) * f16);
        if (f19 / f16 >= 1.0f) {
            c3574q.n(f10, 0.0f);
            return;
        }
        float f20 = this.f139g;
        float f21 = f20 * f12;
        boolean z10 = f20 == -1.0f || Math.abs((f20 * 2.0f) - f15) < 0.1f;
        if (z10) {
            f13 = f19;
            f14 = 0.0f;
        } else {
            f14 = 1.75f;
            f13 = 0.0f;
        }
        float f22 = f16 + f17;
        float f23 = f13 + f17;
        float sqrt = (float) Math.sqrt((f22 * f22) - (f23 * f23));
        float f24 = f18 - sqrt;
        float f25 = f18 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f23));
        float f26 = (90.0f - degrees) + f14;
        c3574q.n(f24, 0.0f);
        float f27 = f17 * 2.0f;
        c3574q.a(f24 - f17, 0.0f, f24 + f17, f27, 270.0f, degrees);
        if (z10) {
            c3574q.a(f18 - f16, (-f16) - f13, f18 + f16, f16 - f13, 180.0f - f26, (f26 * 2.0f) - 180.0f);
        } else {
            float f28 = this.f135c;
            float f29 = f21 * 2.0f;
            float f30 = f18 - f16;
            c3574q.a(f30, -(f21 + f28), f30 + f28 + f29, f28 + f21, 180.0f - f26, ((f26 * 2.0f) - 180.0f) / 2.0f);
            float f31 = f18 + f16;
            float f32 = this.f135c;
            c3574q.n(f31 - ((f32 / 2.0f) + f21), f32 + f21);
            float f33 = this.f135c;
            c3574q.a(f31 - (f29 + f33), -(f21 + f33), f31, f33 + f21, 90.0f, f26 - 90.0f);
        }
        c3574q.a(f25 - f17, 0.0f, f25 + f17, f27, 270.0f - degrees, degrees);
        c3574q.n(f10, 0.0f);
    }

    public float d() {
        return this.f137e;
    }

    public float e() {
        return this.f139g;
    }

    public float f() {
        return this.f135c;
    }

    public float g() {
        return this.f134b;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float h() {
        return this.f136d;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float i() {
        return this.f138f;
    }

    public void j(@FloatRange(from = 0.0d) float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f137e = f10;
    }

    public void k(float f10) {
        this.f139g = f10;
    }

    public void l(float f10) {
        this.f135c = f10;
    }

    public void m(float f10) {
        this.f134b = f10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void n(float f10) {
        this.f136d = f10;
    }

    public void o(float f10) {
        this.f138f = f10;
    }
}
