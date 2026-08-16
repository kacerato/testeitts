package a2;

import androidx.annotation.NonNull;

public class C3577t extends C3564g {

    public final float f31832b;

    public final boolean f31833c;

    public C3577t(float f10, boolean z10) {
        this.f31832b = f10;
        this.f31833c = z10;
    }

    @Override
    public void b(float f10, float f11, float f12, @NonNull C3574q c3574q) {
        c3574q.n(f11 - (this.f31832b * f12), 0.0f);
        c3574q.n(f11, (this.f31833c ? this.f31832b : -this.f31832b) * f12);
        c3574q.n(f11 + (this.f31832b * f12), 0.0f);
        c3574q.n(f10, 0.0f);
    }
}
