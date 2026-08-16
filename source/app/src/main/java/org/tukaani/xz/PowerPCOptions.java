package org.tukaani.xz;

import java.io.InputStream;
import org.tukaani.xz.simple.PowerPC;

public class PowerPCOptions extends BCJOptions {
    private static final int ALIGNMENT = 4;

    public PowerPCOptions() {
        super(4);
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
        return new BCJEncoder(this, 5L);
    }

    @Override
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        return new SimpleInputStream(inputStream, new PowerPC(false, this.startOffset));
    }

    @Override
    public FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream, ArrayCache arrayCache) {
        return new SimpleOutputStream(finishableOutputStream, new PowerPC(true, this.startOffset));
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
