package com.ardor3d.renderer.state.record;

public class LineRecord extends StateRecord {
    public boolean smoothed = false;
    public boolean stippled = false;
    public int smoothHint = -1;
    public float width = -1.0f;
    public int stippleFactor = -1;
    public short stipplePattern = -1;

    @Override
    public void invalidate() {
        super.invalidate();
        this.smoothed = false;
        this.stippled = false;
        this.smoothHint = -1;
        this.width = -1.0f;
        this.stippleFactor = -1;
        this.stipplePattern = (short) -1;
    }
}
