package com.ardor3d.renderer.state.record;

public class ZBufferStateRecord extends StateRecord {
    public boolean depthTest = false;
    public boolean writable = false;
    public int depthFunc = -1;

    @Override
    public void invalidate() {
        super.invalidate();
        this.depthTest = false;
        this.writable = false;
        this.depthFunc = -1;
    }
}
