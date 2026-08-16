package a2;

import androidx.annotation.NonNull;

public final class C3569l extends C3564g {

    public final C3564g f31746b;

    public final float f31747c;

    public C3569l(@NonNull C3564g c3564g, float f10) {
        this.f31746b = c3564g;
        this.f31747c = f10;
    }

    @Override
    public boolean a() {
        return this.f31746b.a();
    }

    @Override
    public void b(float f10, float f11, float f12, @NonNull C3574q c3574q) {
        this.f31746b.b(f10, f11 - this.f31747c, f12, c3574q);
    }
}
