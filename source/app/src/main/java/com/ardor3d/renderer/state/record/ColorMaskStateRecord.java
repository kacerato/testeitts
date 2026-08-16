package com.ardor3d.renderer.state.record;

public class ColorMaskStateRecord extends StateRecord {
    public boolean red = true;
    public boolean green = true;
    public boolean blue = true;
    public boolean alpha = true;

    @Override
    public void invalidate() {
        super.invalidate();
        this.alpha = true;
        this.blue = true;
        this.green = true;
        this.red = true;
    }

    public boolean is(boolean z10, boolean z11, boolean z12, boolean z13) {
        return this.alpha == z13 && this.red == z10 && this.green == z11 && this.blue == z12;
    }

    public void set(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.red = z10;
        this.green = z11;
        this.blue = z12;
        this.alpha = z13;
    }
}
