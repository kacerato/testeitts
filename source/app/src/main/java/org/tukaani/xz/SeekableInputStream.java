package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

public abstract class SeekableInputStream extends InputStream {
    public abstract long length() throws IOException;

    public abstract long position() throws IOException;

    public abstract void seek(long j10) throws IOException;

    @Override
    public long skip(long j10) throws IOException {
        if (j10 <= 0) {
            return 0L;
        }
        long length = length();
        long position = position();
        if (position >= length) {
            return 0L;
        }
        long j11 = length - position;
        if (j11 < j10) {
            j10 = j11;
        }
        seek(position + j10);
        return j10;
    }
}
