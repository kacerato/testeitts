package com.ardor3d.image.util.dds;

import com.ardor3d.util.LittleEndianDataInput;
import java.io.IOException;

class DdsPixelFormat {
    static final int DDPF_ALPHA = 2;
    static final int DDPF_ALPHAPIXELS = 1;
    static final int DDPF_FOURCC = 4;
    static final int DDPF_LUMINANCE = 131072;
    static final int DDPF_RGB = 64;
    static final int DDPF_YUV = 512;
    int dwABitMask;
    int dwBBitMask;
    int dwFlags;
    int dwFourCC;
    int dwGBitMask;
    int dwRBitMask;
    int dwRGBBitCount;
    int dwSize;

    public static DdsPixelFormat read(LittleEndianDataInput littleEndianDataInput) throws IOException {
        DdsPixelFormat ddsPixelFormat = new DdsPixelFormat();
        int readInt = littleEndianDataInput.readInt();
        ddsPixelFormat.dwSize = readInt;
        if (readInt != 32) {
            throw new Error("invalid pixel format size: " + ddsPixelFormat.dwSize);
        }
        ddsPixelFormat.dwFlags = littleEndianDataInput.readInt();
        ddsPixelFormat.dwFourCC = littleEndianDataInput.readInt();
        ddsPixelFormat.dwRGBBitCount = littleEndianDataInput.readInt();
        ddsPixelFormat.dwRBitMask = littleEndianDataInput.readInt();
        ddsPixelFormat.dwGBitMask = littleEndianDataInput.readInt();
        ddsPixelFormat.dwBBitMask = littleEndianDataInput.readInt();
        ddsPixelFormat.dwABitMask = littleEndianDataInput.readInt();
        return ddsPixelFormat;
    }
}
