package org.tukaani.xz;

abstract class BCJOptions extends FilterOptions {
    static final boolean $assertionsDisabled = false;
    private final int alignment;
    int startOffset = 0;

    public BCJOptions(int i10) {
        this.alignment = i10;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }

    @Override
    public int getDecoderMemoryUsage() {
        return SimpleInputStream.getMemoryUsage();
    }

    @Override
    public int getEncoderMemoryUsage() {
        return SimpleOutputStream.getMemoryUsage();
    }

    public int getStartOffset() {
        return this.startOffset;
    }

    public void setStartOffset(int i10) throws UnsupportedOptionsException {
        if (((this.alignment - 1) & i10) == 0) {
            this.startOffset = i10;
            return;
        }
        throw new UnsupportedOptionsException("Start offset must be a multiple of " + this.alignment);
    }
}
