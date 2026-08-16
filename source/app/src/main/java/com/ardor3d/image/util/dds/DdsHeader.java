package com.ardor3d.image.util.dds;

import com.ardor3d.util.LittleEndianDataInput;
import java.io.IOException;
import java.util.logging.Logger;

class DdsHeader {
    static final int DDSCAPS2_CUBEMAP = 512;
    static final int DDSCAPS2_CUBEMAP_NEGATIVEX = 2048;
    static final int DDSCAPS2_CUBEMAP_NEGATIVEY = 8192;
    static final int DDSCAPS2_CUBEMAP_NEGATIVEZ = 32768;
    static final int DDSCAPS2_CUBEMAP_POSITIVEX = 1024;
    static final int DDSCAPS2_CUBEMAP_POSITIVEY = 4096;
    static final int DDSCAPS2_CUBEMAP_POSITIVEZ = 16384;
    static final int DDSCAPS2_VOLUME = 2097152;
    static final int DDSCAPS_COMPLEX = 8;
    static final int DDSCAPS_MIPMAP = 4194304;
    static final int DDSCAPS_TEXTURE = 4096;
    static final int DDSD_CAPS = 1;
    static final int DDSD_DEPTH = 8388608;
    static final int DDSD_HEIGHT = 2;
    static final int DDSD_LINEARSIZE = 524288;
    static final int DDSD_MIPMAPCOUNT = 131072;
    static final int DDSD_PITCH = 8;
    static final int DDSD_PIXELFORMAT = 4096;
    static final int DDSD_WIDTH = 4;
    private static final Logger logger = Logger.getLogger(DdsHeader.class.getName());
    DdsPixelFormat ddpf;
    int dwAlphaBitDepth;
    int dwCaps;
    int dwCaps2;
    int dwCaps3;
    int dwCaps4;
    int dwDepth;
    int dwFlags;
    int dwHeight;
    int dwLinearSize;
    int dwMipMapCount;
    int[] dwReserved1 = new int[10];
    int dwSize;
    int dwTextureStage;
    int dwWidth;

    public static DdsHeader read(LittleEndianDataInput littleEndianDataInput) throws IOException {
        DdsHeader ddsHeader = new DdsHeader();
        int readInt = littleEndianDataInput.readInt();
        ddsHeader.dwSize = readInt;
        if (readInt != 124) {
            throw new Error("invalid dds header size: " + ddsHeader.dwSize);
        }
        ddsHeader.dwFlags = littleEndianDataInput.readInt();
        ddsHeader.dwHeight = littleEndianDataInput.readInt();
        ddsHeader.dwWidth = littleEndianDataInput.readInt();
        ddsHeader.dwLinearSize = littleEndianDataInput.readInt();
        ddsHeader.dwDepth = littleEndianDataInput.readInt();
        ddsHeader.dwMipMapCount = littleEndianDataInput.readInt();
        ddsHeader.dwAlphaBitDepth = littleEndianDataInput.readInt();
        int i10 = 0;
        while (true) {
            int[] iArr = ddsHeader.dwReserved1;
            if (i10 >= iArr.length) {
                break;
            }
            iArr[i10] = littleEndianDataInput.readInt();
            i10++;
        }
        ddsHeader.ddpf = DdsPixelFormat.read(littleEndianDataInput);
        ddsHeader.dwCaps = littleEndianDataInput.readInt();
        ddsHeader.dwCaps2 = littleEndianDataInput.readInt();
        ddsHeader.dwCaps3 = littleEndianDataInput.readInt();
        ddsHeader.dwCaps4 = littleEndianDataInput.readInt();
        ddsHeader.dwTextureStage = littleEndianDataInput.readInt();
        int ceil = ((int) Math.ceil(Math.log(Math.max(ddsHeader.dwHeight, ddsHeader.dwWidth)) / Math.log(2.0d))) + 1;
        if (!DdsUtils.isSet(ddsHeader.dwCaps, 4194304)) {
            ddsHeader.dwMipMapCount = 1;
        } else if (!DdsUtils.isSet(ddsHeader.dwFlags, 131072)) {
            ddsHeader.dwMipMapCount = ceil;
        } else if (ddsHeader.dwMipMapCount != ceil) {
            logger.fine("Got " + ddsHeader.dwMipMapCount + " mipmaps, expected " + ceil);
        }
        return ddsHeader;
    }
}
