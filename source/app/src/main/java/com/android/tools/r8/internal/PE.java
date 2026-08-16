package com.android.tools.r8.internal;

public final class PE extends UE implements G30 {

    public SE f43167g;

    public final WE f43168h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PE(WE we2) {
        super(we2);
        this.f43168h = we2;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        SE se2 = new SE(this.f43168h, b());
        this.f43167g = se2;
        return se2;
    }

    @Override
    public final Object previous() {
        SE se2 = new SE(this.f43168h, d());
        this.f43167g = se2;
        return se2;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f43167g.f44159b = -1;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
