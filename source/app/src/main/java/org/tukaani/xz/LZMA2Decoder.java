package org.tukaani.xz;

import java.io.InputStream;

class LZMA2Decoder extends LZMA2Coder implements FilterDecoder {
    private int dictSize;

    public LZMA2Decoder(byte[] bArr) throws UnsupportedOptionsException {
        if (bArr.length == 1) {
            byte b10 = bArr[0];
            if ((b10 & 255) <= 37) {
                int i10 = (b10 & 1) | 2;
                this.dictSize = i10;
                this.dictSize = i10 << ((b10 >>> 1) + 11);
                return;
            }
        }
        throw new UnsupportedOptionsException("Unsupported LZMA2 properties");
    }

    @Override
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        return new LZMA2InputStream(inputStream, this.dictSize, null, arrayCache);
    }

    @Override
    public int getMemoryUsage() {
        return LZMA2InputStream.getMemoryUsage(this.dictSize);
    }
}
