package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

public class LZMA2Options extends FilterOptions {
    static final boolean $assertionsDisabled = false;
    public static final int DICT_SIZE_DEFAULT = 8388608;
    public static final int DICT_SIZE_MAX = 805306368;
    public static final int DICT_SIZE_MIN = 4096;
    public static final int LC_DEFAULT = 3;
    public static final int LC_LP_MAX = 4;
    public static final int LP_DEFAULT = 0;
    public static final int MF_BT4 = 20;
    public static final int MF_HC4 = 4;
    public static final int MODE_FAST = 1;
    public static final int MODE_NORMAL = 2;
    public static final int MODE_UNCOMPRESSED = 0;
    public static final int NICE_LEN_MAX = 273;
    public static final int NICE_LEN_MIN = 8;
    public static final int PB_DEFAULT = 2;
    public static final int PB_MAX = 4;
    public static final int PRESET_DEFAULT = 6;
    public static final int PRESET_MAX = 9;
    public static final int PRESET_MIN = 0;
    private int depthLimit;
    private int dictSize;

    private int f103354lc;
    private int lp;

    private int f103355mf;
    private int mode;
    private int niceLen;

    private int f103356pb;
    private byte[] presetDict = null;
    private static final int[] presetToDictSize = {262144, 1048576, 2097152, 4194304, 4194304, 8388608, 8388608, 16777216, 33554432, 67108864};
    private static final int[] presetToDepthLimit = {4, 8, 24, 48};

    public LZMA2Options() {
        try {
            setPreset(6);
        } catch (UnsupportedOptionsException unused) {
            throw new RuntimeException();
        }
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
        int i10 = this.dictSize - 1;
        int i11 = i10 | (i10 >>> 2);
        int i12 = i11 | (i11 >>> 3);
        int i13 = i12 | (i12 >>> 4);
        int i14 = i13 | (i13 >>> 8);
        return LZMA2InputStream.getMemoryUsage((i14 | (i14 >>> 16)) + 1);
    }

    public int getDepthLimit() {
        return this.depthLimit;
    }

    public int getDictSize() {
        return this.dictSize;
    }

    @Override
    public int getEncoderMemoryUsage() {
        return this.mode == 0 ? UncompressedLZMA2OutputStream.getMemoryUsage() : LZMA2OutputStream.getMemoryUsage(this);
    }

    @Override
    public FilterEncoder getFilterEncoder() {
        return new LZMA2Encoder(this);
    }

    @Override
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) throws IOException {
        return new LZMA2InputStream(inputStream, this.dictSize, this.presetDict, arrayCache);
    }

    public int getLc() {
        return this.f103354lc;
    }

    public int getLp() {
        return this.lp;
    }

    public int getMatchFinder() {
        return this.f103355mf;
    }

    public int getMode() {
        return this.mode;
    }

    public int getNiceLen() {
        return this.niceLen;
    }

    @Override
    public FinishableOutputStream getOutputStream(FinishableOutputStream finishableOutputStream, ArrayCache arrayCache) {
        return this.mode == 0 ? new UncompressedLZMA2OutputStream(finishableOutputStream, arrayCache) : new LZMA2OutputStream(finishableOutputStream, this, arrayCache);
    }

    public int getPb() {
        return this.f103356pb;
    }

    public byte[] getPresetDict() {
        return this.presetDict;
    }

    public void setDepthLimit(int i10) throws UnsupportedOptionsException {
        if (i10 >= 0) {
            this.depthLimit = i10;
            return;
        }
        throw new UnsupportedOptionsException("Depth limit cannot be negative: " + i10);
    }

    public void setDictSize(int i10) throws UnsupportedOptionsException {
        if (i10 < 4096) {
            throw new UnsupportedOptionsException("LZMA2 dictionary size must be at least 4 KiB: " + i10 + " B");
        }
        if (i10 <= 805306368) {
            this.dictSize = i10;
            return;
        }
        throw new UnsupportedOptionsException("LZMA2 dictionary size must not exceed 768 MiB: " + i10 + " B");
    }

    public void setLc(int i10) throws UnsupportedOptionsException {
        setLcLp(i10, this.lp);
    }

    public void setLcLp(int i10, int i11) throws UnsupportedOptionsException {
        if (i10 >= 0 && i11 >= 0 && i10 <= 4 && i11 <= 4 && i10 + i11 <= 4) {
            this.f103354lc = i10;
            this.lp = i11;
            return;
        }
        throw new UnsupportedOptionsException("lc + lp must not exceed 4: " + i10 + " + " + i11);
    }

    public void setLp(int i10) throws UnsupportedOptionsException {
        setLcLp(this.f103354lc, i10);
    }

    public void setMatchFinder(int i10) throws UnsupportedOptionsException {
        if (i10 == 4 || i10 == 20) {
            this.f103355mf = i10;
            return;
        }
        throw new UnsupportedOptionsException("Unsupported match finder: " + i10);
    }

    public void setMode(int i10) throws UnsupportedOptionsException {
        if (i10 >= 0 && i10 <= 2) {
            this.mode = i10;
            return;
        }
        throw new UnsupportedOptionsException("Unsupported compression mode: " + i10);
    }

    public void setNiceLen(int i10) throws UnsupportedOptionsException {
        if (i10 < 8) {
            throw new UnsupportedOptionsException("Minimum nice length of matches is 8 bytes: " + i10);
        }
        if (i10 <= 273) {
            this.niceLen = i10;
            return;
        }
        throw new UnsupportedOptionsException("Maximum nice length of matches is 273: " + i10);
    }

    public void setPb(int i10) throws UnsupportedOptionsException {
        if (i10 >= 0 && i10 <= 4) {
            this.f103356pb = i10;
            return;
        }
        throw new UnsupportedOptionsException("pb must not exceed 4: " + i10);
    }

    public void setPreset(int i10) throws UnsupportedOptionsException {
        if (i10 < 0 || i10 > 9) {
            throw new UnsupportedOptionsException("Unsupported preset: " + i10);
        }
        this.f103354lc = 3;
        this.lp = 0;
        this.f103356pb = 2;
        this.dictSize = presetToDictSize[i10];
        if (i10 <= 3) {
            this.mode = 1;
            this.f103355mf = 4;
            this.niceLen = i10 <= 1 ? 128 : 273;
            this.depthLimit = presetToDepthLimit[i10];
            return;
        }
        this.mode = 2;
        this.f103355mf = 20;
        this.niceLen = i10 == 4 ? 16 : i10 == 5 ? 32 : 64;
        this.depthLimit = 0;
    }

    public void setPresetDict(byte[] bArr) {
        this.presetDict = bArr;
    }

    public LZMA2Options(int i10) throws UnsupportedOptionsException {
        setPreset(i10);
    }

    public LZMA2Options(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) throws UnsupportedOptionsException {
        setDictSize(i10);
        setLcLp(i11, i12);
        setPb(i13);
        setMode(i14);
        setNiceLen(i15);
        setMatchFinder(i16);
        setDepthLimit(i17);
    }
}
