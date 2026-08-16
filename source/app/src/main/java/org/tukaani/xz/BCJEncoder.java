package org.tukaani.xz;

class BCJEncoder extends BCJCoder implements FilterEncoder {
    static final boolean $assertionsDisabled = false;
    private final long filterID;
    private final BCJOptions options;
    private final byte[] props;

    public BCJEncoder(BCJOptions bCJOptions, long j10) {
        int startOffset = bCJOptions.getStartOffset();
        if (startOffset == 0) {
            this.props = new byte[0];
        } else {
            this.props = new byte[4];
            for (int i10 = 0; i10 < 4; i10++) {
                this.props[i10] = (byte) (startOffset >>> (i10 * 8));
            }
        }
        this.filterID = j10;
        this.options = (BCJOptions) bCJOptions.clone();
    }

    @Override
    public long getFilterID() {
        return this.filterID;
    }

    @Override
    public byte[] getFilterProps() {
        return this.props;
    }

    @Override
    public FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream, ArrayCache arrayCache) {
        return this.options.getOutputStream(finishableOutputStream, arrayCache);
    }

    @Override
    public boolean supportsFlushing() {
        return false;
    }
}
