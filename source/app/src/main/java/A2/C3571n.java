package a2;

import androidx.annotation.NonNull;

public class C3571n extends C3562e {

    public float f31749a;

    public C3571n() {
        this.f31749a = -1.0f;
    }

    @Override
    public void b(@NonNull C3574q c3574q, float f10, float f11, float f12) {
        c3574q.q(0.0f, f12 * f11, 180.0f, 180.0f - f10);
        float f13 = f12 * 2.0f * f11;
        c3574q.a(0.0f, 0.0f, f13, f13, 180.0f, f10);
    }

    @Deprecated
    public C3571n(float f10) {
        this.f31749a = f10;
    }
}
