package org.tukaani.xz;

class DeltaEncoder extends DeltaCoder implements FilterEncoder {
    private final DeltaOptions options;
    private final byte[] props;

    public DeltaEncoder(DeltaOptions deltaOptions) {
        this.props = r1;
        byte[] bArr = {(byte) (deltaOptions.getDistance() - 1)};
        this.options = (DeltaOptions) deltaOptions.clone();
    }

    @Override
    public long getFilterID() {
        return 3L;
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
        return true;
    }
}
