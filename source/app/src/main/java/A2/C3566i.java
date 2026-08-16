package a2;

import androidx.annotation.NonNull;

public final class C3566i extends C3564g {

    public final float f31691b;

    public C3566i(float f10) {
        this.f31691b = f10 - 0.001f;
    }

    @Override
    public boolean a() {
        return true;
    }

    @Override
    public void b(float f10, float f11, float f12, @NonNull C3574q c3574q) {
        float sqrt = (float) ((this.f31691b * Math.sqrt(2.0d)) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.f31691b, 2.0d) - Math.pow(sqrt, 2.0d));
        c3574q.p(f11 - sqrt, ((float) (-((this.f31691b * Math.sqrt(2.0d)) - this.f31691b))) + sqrt2);
        c3574q.n(f11, (float) (-((this.f31691b * Math.sqrt(2.0d)) - this.f31691b)));
        c3574q.n(f11 + sqrt, ((float) (-((this.f31691b * Math.sqrt(2.0d)) - this.f31691b))) + sqrt2);
    }
}
