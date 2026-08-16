package org.tukaani.xz;

import java.io.InputStream;
import org.tukaani.xz.simple.ARMThumb;

public class ARMThumbOptions extends BCJOptions {
    private static final int ALIGNMENT = 2;

    public ARMThumbOptions() {
        super(2);
    }

    @Override
    public Object clone() {
        return super.clone();
    }

    @Override
    public int getDecoderMemoryUsage() {
        return super.getDecoderMemoryUsage();
    }

    @Override
    public int getEncoderMemoryUsage() {
        return super.getEncoderMemoryUsage();
    }

    @Override
    public FilterEncoder getFilterEncoder() {
        return new BCJEncoder(this, 8L);
    }

    @Override
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        return new SimpleInputStream(inputStream, new ARMThumb(false, this.startOffset));
    }

    @Override
    public FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream, ArrayCache arrayCache) {
        return new SimpleOutputStream(finishableOutputStream, new ARMThumb(true, this.startOffset));
    }

    @Override
    public int getStartOffset() {
        return super.getStartOffset();
    }

    @Override
    public void setStartOffset(int i10) throws UnsupportedOptionsException {
        super.setStartOffset(i10);
    }
}
