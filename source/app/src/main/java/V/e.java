package V;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class e<T> implements p<T> {

    public final int f26368b;

    public final int f26369c;

    @Nullable
    public U.d f26370d;

    public e() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override
    public final void a(@NonNull o oVar) {
    }

    @Override
    public void b() {
    }

    @Override
    public void c() {
    }

    @Override
    public final void g(@Nullable U.d dVar) {
        this.f26370d = dVar;
    }

    @Override
    @Nullable
    public final U.d getRequest() {
        return this.f26370d;
    }

    @Override
    public final void i(@NonNull o oVar) {
        oVar.d(this.f26368b, this.f26369c);
    }

    @Override
    public void k(@Nullable Drawable drawable) {
    }

    @Override
    public void m(@Nullable Drawable drawable) {
    }

    @Override
    public void onStart() {
    }

    public e(int i10, int i11) {
        if (Y.m.v(i10, i11)) {
            this.f26368b = i10;
            this.f26369c = i11;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i10 + " and height: " + i11);
    }
}
