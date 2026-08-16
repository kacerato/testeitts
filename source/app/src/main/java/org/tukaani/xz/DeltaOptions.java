package org.tukaani.xz;

import java.io.InputStream;

public class DeltaOptions extends FilterOptions {
    static final boolean $assertionsDisabled = false;
    public static final int DISTANCE_MAX = 256;
    public static final int DISTANCE_MIN = 1;
    private int distance = 1;

    public DeltaOptions() {
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
        return 1;
    }

    public int getDistance() {
        return this.distance;
    }

    @Override
    public int getEncoderMemoryUsage() {
        return DeltaOutputStream.getMemoryUsage();
    }

    @Override
    public FilterEncoder getFilterEncoder() {
        return new DeltaEncoder(this);
    }

    @Override
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        return new DeltaInputStream(inputStream, this.distance);
    }

    @Override
    public FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream, ArrayCache arrayCache) {
        return new DeltaOutputStream(finishableOutputStream, this);
    }

    public void setDistance(int i10) throws UnsupportedOptionsException {
        if (i10 >= 1 && i10 <= 256) {
            this.distance = i10;
            return;
        }
        throw new UnsupportedOptionsException("Delta distance must be in the range [1, 256]: " + i10);
    }

    public DeltaOptions(int i10) throws UnsupportedOptionsException {
        setDistance(i10);
    }
}
