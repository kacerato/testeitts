package V;

import androidx.annotation.NonNull;

@Deprecated
public abstract class n<Z> extends b<Z> {

    public final int f26405c;

    public final int f26406d;

    public n() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override
    public void a(@NonNull o oVar) {
    }

    @Override
    public final void i(@NonNull o oVar) {
        if (Y.m.v(this.f26405c, this.f26406d)) {
            oVar.d(this.f26405c, this.f26406d);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f26405c + " and height: " + this.f26406d + ", either provide dimensions in the constructor or call override()");
    }

    public n(int i10, int i11) {
        this.f26405c = i10;
        this.f26406d = i11;
    }
}
