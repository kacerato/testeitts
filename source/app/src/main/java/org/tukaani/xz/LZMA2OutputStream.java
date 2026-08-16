package org.tukaani.xz;

import java.io.IOException;
import org.tukaani.xz.lz.LZEncoder;
import org.tukaani.xz.lzma.LZMAEncoder;
import org.tukaani.xz.rangecoder.RangeEncoderToBuffer;

public class LZMA2OutputStream extends FinishableOutputStream {
    static final boolean $assertionsDisabled = false;
    static final int COMPRESSED_SIZE_MAX = 65536;
    private final ArrayCache arrayCache;
    private boolean dictResetNeeded;
    private LZEncoder lz;
    private LZMAEncoder lzma;
    private FinishableOutputStream out;
    private final int props;

    private RangeEncoderToBuffer f103357rc;
    private boolean stateResetNeeded = true;
    private boolean propsNeeded = true;
    private int pendingSize = 0;
    private boolean finished = false;
    private IOException exception = null;
    private final byte[] chunkHeader = new byte[6];
    private final byte[] tempBuf = new byte[1];

    public LZMA2OutputStream(FinishableOutputStream finishableOutputStream, LZMA2Options lZMA2Options, ArrayCache arrayCache) {
        this.dictResetNeeded = true;
        finishableOutputStream.getClass();
        this.arrayCache = arrayCache;
        this.out = finishableOutputStream;
        this.f103357rc = new RangeEncoderToBuffer(65536, arrayCache);
        int dictSize = lZMA2Options.getDictSize();
        LZMAEncoder lZMAEncoder = LZMAEncoder.getInstance(this.f103357rc, lZMA2Options.getLc(), lZMA2Options.getLp(), lZMA2Options.getPb(), lZMA2Options.getMode(), dictSize, getExtraSizeBefore(dictSize), lZMA2Options.getNiceLen(), lZMA2Options.getMatchFinder(), lZMA2Options.getDepthLimit(), arrayCache);
        this.lzma = lZMAEncoder;
        this.lz = lZMAEncoder.getLZEncoder();
        byte[] presetDict = lZMA2Options.getPresetDict();
        if (presetDict != null && presetDict.length > 0) {
            this.lz.setPresetDict(dictSize, presetDict);
            this.dictResetNeeded = false;
        }
        this.props = (((lZMA2Options.getPb() * 5) + lZMA2Options.getLp()) * 9) + lZMA2Options.getLc();
    }

    private static int getExtraSizeBefore(int i10) {
        if (65536 > i10) {
            return 65536 - i10;
        }
        return 0;
    }

    public static int getMemoryUsage(LZMA2Options lZMA2Options) {
        int dictSize = lZMA2Options.getDictSize();
        return LZMAEncoder.getMemoryUsage(lZMA2Options.getMode(), dictSize, getExtraSizeBefore(dictSize), lZMA2Options.getMatchFinder()) + 70;
    }

    private void writeChunk() throws IOException {
        int finish = this.f103357rc.finish();
        int uncompressedSize = this.lzma.getUncompressedSize();
        if (finish + 2 < uncompressedSize) {
            writeLZMA(uncompressedSize, finish);
        } else {
            this.lzma.reset();
            uncompressedSize = this.lzma.getUncompressedSize();
            writeUncompressed(uncompressedSize);
        }
        this.pendingSize -= uncompressedSize;
        this.lzma.resetUncompressedSize();
        this.f103357rc.reset();
    }

    private void writeEndMarker() throws IOException {
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        this.lz.setFinishing();
        while (this.pendingSize > 0) {
            try {
                this.lzma.encodeForLZMA2();
                writeChunk();
            } catch (IOException e10) {
                this.exception = e10;
                throw e10;
            }
        }
        this.out.write(0);
        this.finished = true;
        this.lzma.putArraysToCache(this.arrayCache);
        this.lzma = null;
        this.lz = null;
        this.f103357rc.putArraysToCache(this.arrayCache);
        this.f103357rc = null;
    }

    private void writeLZMA(int i10, int i11) throws IOException {
        boolean z10 = this.propsNeeded;
        int i12 = z10 ? this.dictResetNeeded ? 224 : 192 : this.stateResetNeeded ? 160 : 128;
        int i13 = i10 - 1;
        byte[] bArr = this.chunkHeader;
        bArr[0] = (byte) (i12 | (i13 >>> 16));
        bArr[1] = (byte) (i13 >>> 8);
        bArr[2] = (byte) i13;
        int i14 = i11 - 1;
        bArr[3] = (byte) (i14 >>> 8);
        bArr[4] = (byte) i14;
        if (z10) {
            bArr[5] = (byte) this.props;
            this.out.write(bArr, 0, 6);
        } else {
            this.out.write(bArr, 0, 5);
        }
        this.f103357rc.write(this.out);
        this.propsNeeded = false;
        this.stateResetNeeded = false;
        this.dictResetNeeded = false;
    }

    private void writeUncompressed(int i10) throws IOException {
        while (i10 > 0) {
            int min = Math.min(i10, 65536);
            byte[] bArr = this.chunkHeader;
            bArr[0] = (byte) (this.dictResetNeeded ? 1 : 2);
            int i11 = min - 1;
            bArr[1] = (byte) (i11 >>> 8);
            bArr[2] = (byte) i11;
            this.out.write(bArr, 0, 3);
            this.lz.copyUncompressed(this.out, i10, min);
            i10 -= min;
            this.dictResetNeeded = false;
        }
        this.stateResetNeeded = true;
    }

    @Override
    public void close() throws IOException {
        if (this.out != null) {
            if (!this.finished) {
                try {
                    writeEndMarker();
                } catch (IOException unused) {
                }
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
        writeEndMarker();
        try {
            this.out.finish();
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public void flush() throws IOException {
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.finished) {
            throw new XZIOException("Stream finished or closed");
        }
        try {
            this.lz.setFlushing();
            while (this.pendingSize > 0) {
                this.lzma.encodeForLZMA2();
                writeChunk();
            }
            this.out.flush();
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.tempBuf;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
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
        while (i11 > 0) {
            try {
                int fillWindow = this.lz.fillWindow(bArr, i10, i11);
                i10 += fillWindow;
                i11 -= fillWindow;
                this.pendingSize += fillWindow;
                if (this.lzma.encodeForLZMA2()) {
                    writeChunk();
                }
            } catch (IOException e10) {
                this.exception = e10;
                throw e10;
            }
        }
    }
}
