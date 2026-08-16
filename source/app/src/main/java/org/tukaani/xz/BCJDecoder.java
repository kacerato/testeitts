package org.tukaani.xz;

import java.io.InputStream;
import org.tukaani.xz.simple.ARM;
import org.tukaani.xz.simple.ARMThumb;
import org.tukaani.xz.simple.IA64;
import org.tukaani.xz.simple.PowerPC;
import org.tukaani.xz.simple.SPARC;
import org.tukaani.xz.simple.X86;

public class BCJDecoder extends BCJCoder implements FilterDecoder {
    static final boolean $assertionsDisabled = false;
    private final long filterID;
    private final int startOffset;

    public BCJDecoder(long j10, byte[] bArr) throws UnsupportedOptionsException {
        this.filterID = j10;
        if (bArr.length == 0) {
            this.startOffset = 0;
            return;
        }
        if (bArr.length != 4) {
            throw new UnsupportedOptionsException("Unsupported BCJ filter properties");
        }
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 |= (bArr[i11] & 255) << (i11 * 8);
        }
        this.startOffset = i10;
    }

    @Override
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        long j10 = this.filterID;
        return new SimpleInputStream(inputStream, j10 == 4 ? new X86(false, this.startOffset) : j10 == 5 ? new PowerPC(false, this.startOffset) : j10 == 6 ? new IA64(false, this.startOffset) : j10 == 7 ? new ARM(false, this.startOffset) : j10 == 8 ? new ARMThumb(false, this.startOffset) : j10 == 9 ? new SPARC(false, this.startOffset) : null);
    }

    @Override
    public int getMemoryUsage() {
        return SimpleInputStream.getMemoryUsage();
    }
}
