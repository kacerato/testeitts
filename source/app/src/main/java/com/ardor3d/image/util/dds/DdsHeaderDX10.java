package com.ardor3d.image.util.dds;

import com.ardor3d.util.LittleEndianDataInput;
import java.io.IOException;

class DdsHeaderDX10 {
    static final int D3D10_RESOURCE_MISC_GDI_COMPATIBLE = 32;
    static final int D3D10_RESOURCE_MISC_GENERATE_MIPS = 1;
    static final int D3D10_RESOURCE_MISC_SHARED = 2;
    static final int D3D10_RESOURCE_MISC_SHARED_KEYEDMUTEX = 16;
    static final int D3D10_RESOURCE_MISC_TEXTURECUBE = 4;
    int arraySize;
    DxgiFormat dxgiFormat;
    int miscFlag;
    int reserved;
    D3d10ResourceDimension resourceDimension;

    public static DdsHeaderDX10 read(LittleEndianDataInput littleEndianDataInput) throws IOException {
        DdsHeaderDX10 ddsHeaderDX10 = new DdsHeaderDX10();
        ddsHeaderDX10.dxgiFormat = DxgiFormat.forInt(littleEndianDataInput.readInt());
        ddsHeaderDX10.resourceDimension = D3d10ResourceDimension.forInt(littleEndianDataInput.readInt());
        ddsHeaderDX10.miscFlag = littleEndianDataInput.readInt();
        ddsHeaderDX10.arraySize = littleEndianDataInput.readInt();
        ddsHeaderDX10.reserved = littleEndianDataInput.readInt();
        return ddsHeaderDX10;
    }
}
