package a2;

import androidx.annotation.NonNull;

public class C3563f extends C3562e {

    public float f31683a;

    public C3563f() {
        this.f31683a = -1.0f;
    }

    @Override
    public void b(@NonNull C3574q c3574q, float f10, float f11, float f12) {
        c3574q.q(0.0f, f12 * f11, 180.0f, 180.0f - f10);
        double d10 = f12;
        double d11 = f11;
        c3574q.n((float) (Math.sin(Math.toRadians(f10)) * d10 * d11), (float) (Math.sin(Math.toRadians(90.0f - f10)) * d10 * d11));
    }

    @Deprecated
    public C3563f(float f10) {
        this.f31683a = f10;
    }
}
