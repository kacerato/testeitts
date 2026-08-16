package org.tukaani.xz;

import java.io.IOException;
import java.io.OutputStream;
import org.tukaani.xz.lz.LZEncoder;
import org.tukaani.xz.lzma.LZMAEncoder;
import org.tukaani.xz.rangecoder.RangeEncoderToStream;

public class LZMAOutputStream extends FinishableOutputStream {
    private final ArrayCache arrayCache;
    private long currentUncompressedSize;
    private IOException exception;
    private final long expectedUncompressedSize;
    private boolean finished;
    private LZEncoder lz;
    private LZMAEncoder lzma;
    private OutputStream out;
    private final int props;

    private final RangeEncoderToStream f103360rc;
    private final byte[] tempBuf;
    private final boolean useEndMarker;

    public LZMAOutputStream(OutputStream outputStream, LZMA2Options lZMA2Options, long j10) throws IOException {
        this(outputStream, lZMA2Options, j10, ArrayCache.getDefaultCache());
    }

    @Override
    public void close() throws IOException {
        if (this.out != null) {
            try {
                finish();
            } catch (IOException unused) {
            }
            try {
                this.out.close();
            } catch (IOException e10) {
                if (this.exception == null) {
                    this.exception = e10;
                }
            }
            this.out = null;
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override
    public void finish() throws IOException {
        if (this.finished) {
            return;
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        try {
            long j10 = this.expectedUncompressedSize;
            if (j10 != -1 && j10 != this.currentUncompressedSize) {
                throw new XZIOException("Expected uncompressed size (" + this.expectedUncompressedSize + ") doesn't equal the number of bytes written to the stream (" + this.currentUncompressedSize + ")");
            }
            this.lz.setFinishing();
            this.lzma.encodeForLZMA1();
            if (this.useEndMarker) {
                this.lzma.encodeLZMA1EndMarker();
            }
            this.f103360rc.finish();
            this.finished = true;
            this.lzma.putArraysToCache(this.arrayCache);
            this.lzma = null;
            this.lz = null;
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public void flush() throws IOException {
        throw new XZIOException("LZMAOutputStream does not support flushing");
    }

    public int getProps() {
        return this.props;
    }

    public long getUncompressedSize() {
        return this.currentUncompressedSize;
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.tempBuf;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    public LZMAOutputStream(OutputStream outputStream, LZMA2Options lZMA2Options, long j10, ArrayCache arrayCache) throws IOException {
        this(outputStream, lZMA2Options, true, j10 == -1, j10, arrayCache);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.finished) {
            throw new XZIOException("Stream finished or closed");
        }
        long j10 = this.expectedUncompressedSize;
        if (j10 != -1 && j10 - this.currentUncompressedSize < i11) {
            throw new XZIOException("Expected uncompressed input size (" + this.expectedUncompressedSize + " bytes) was exceeded");
        }
        this.currentUncompressedSize += i11;
        while (i11 > 0) {
            try {
                int fillWindow = this.lz.fillWindow(bArr, i10, i11);
                i10 += fillWindow;
                i11 -= fillWindow;
                this.lzma.encodeForLZMA1();
            } catch (IOException e10) {
                this.exception = e10;
                throw e10;
            }
        }
    }

    public LZMAOutputStream(OutputStream outputStream, LZMA2Options lZMA2Options, boolean z10) throws IOException {
        this(outputStream, lZMA2Options, z10, ArrayCache.getDefaultCache());
    }

    public LZMAOutputStream(OutputStream outputStream, LZMA2Options lZMA2Options, boolean z10, ArrayCache arrayCache) throws IOException {
        this(outputStream, lZMA2Options, false, z10, -1L, arrayCache);
    }

    private LZMAOutputStream(OutputStream outputStream, LZMA2Options lZMA2Options, boolean z10, boolean z11, long j10, ArrayCache arrayCache) throws IOException {
        this.currentUncompressedSize = 0L;
        this.finished = false;
        this.exception = null;
        this.tempBuf = new byte[1];
        outputStream.getClass();
        if (j10 < -1) {
            throw new IllegalArgumentException("Invalid expected input size (less than -1)");
        }
        this.useEndMarker = z11;
        this.expectedUncompressedSize = j10;
        this.arrayCache = arrayCache;
        this.out = outputStream;
        RangeEncoderToStream rangeEncoderToStream = new RangeEncoderToStream(outputStream);
        this.f103360rc = rangeEncoderToStream;
        int dictSize = lZMA2Options.getDictSize();
        LZMAEncoder lZMAEncoder = LZMAEncoder.getInstance(rangeEncoderToStream, lZMA2Options.getLc(), lZMA2Options.getLp(), lZMA2Options.getPb(), lZMA2Options.getMode(), dictSize, 0, lZMA2Options.getNiceLen(), lZMA2Options.getMatchFinder(), lZMA2Options.getDepthLimit(), arrayCache);
        this.lzma = lZMAEncoder;
        this.lz = lZMAEncoder.getLZEncoder();
        byte[] presetDict = lZMA2Options.getPresetDict();
        if (presetDict != null && presetDict.length > 0) {
            if (z10) {
                throw new UnsupportedOptionsException("Preset dictionary cannot be used in .lzma files (try a raw LZMA stream instead)");
            }
            this.lz.setPresetDict(dictSize, presetDict);
        }
        int pb2 = (((lZMA2Options.getPb() * 5) + lZMA2Options.getLp()) * 9) + lZMA2Options.getLc();
        this.props = pb2;
        if (z10) {
            outputStream.write(pb2);
            int i10 = dictSize;
            for (int i11 = 0; i11 < 4; i11++) {
                outputStream.write(i10 & 255);
                i10 >>>= 8;
            }
            for (int i12 = 0; i12 < 8; i12++) {
                outputStream.write(((int) (j10 >>> (i12 * 8))) & 255);
            }
        }
    }
}
