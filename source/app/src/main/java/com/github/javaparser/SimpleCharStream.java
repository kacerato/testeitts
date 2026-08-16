package com.github.javaparser;

import java.io.IOException;

public class SimpleCharStream extends AbstractCharStream {
    private Provider inputStream;

    public SimpleCharStream(final Provider dstream, final int startline, final int startcolumn, final int buffersize) {
        super(startline, startcolumn, buffersize);
        this.inputStream = dstream;
    }

    public void reInit(final Provider dstream, final int startline, final int startcolumn, final int buffersize) {
        this.inputStream = dstream;
        super.reInit(startline, startcolumn, buffersize);
    }

    @Override
    public void streamClose() throws IOException {
        this.inputStream.close();
    }

    @Override
    public int streamRead(final char[] aBuf, final int nOfs, final int nLen) throws IOException {
        return this.inputStream.read(aBuf, nOfs, nLen);
    }

    public SimpleCharStream(final Provider dstream, final int startline, final int startcolumn) {
        this(dstream, startline, startcolumn, 4096);
    }

    public void reInit(final Provider dstream, final int startline, final int startcolumn) {
        reInit(dstream, startline, startcolumn, 4096);
    }

    public SimpleCharStream(final Provider dstream) {
        this(dstream, 1, 1, 4096);
    }

    public void reInit(final Provider dstream) {
        reInit(dstream, 1, 1, 4096);
    }
}
