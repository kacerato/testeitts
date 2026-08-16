package com.ardor3d.image.util.dds;

import com.ardor3d.image.Image;
import com.ardor3d.image.ImageDataFormat;
import com.ardor3d.image.ImageDataType;
import com.ardor3d.image.util.ImageLoader;
import com.ardor3d.image.util.ImageUtils;
import com.ardor3d.util.LittleEndianDataInput;
import com.ardor3d.util.geom.BufferUtils;
import com.google.common.collect.M1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.logging.Logger;

public class DdsLoader implements ImageLoader {
    private static final Logger logger = Logger.getLogger(DdsLoader.class.getName());

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$image$util$dds$DxgiFormat;

        static {
            int[] iArr = new int[DxgiFormat.values().length];
            $SwitchMap$com$ardor3d$image$util$dds$DxgiFormat = iArr;
            try {
                iArr[DxgiFormat.DXGI_FORMAT_BC4_UNORM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$image$util$dds$DxgiFormat[DxgiFormat.DXGI_FORMAT_BC5_UNORM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static final void populateImage(Image image, DdsImageInfo ddsImageInfo, LittleEndianDataInput littleEndianDataInput) throws IOException {
        int i10;
        ArrayList arrayList;
        DdsImageInfo ddsImageInfo2 = ddsImageInfo;
        int i11 = ddsImageInfo2.header.ddpf.dwFlags;
        boolean isSet = DdsUtils.isSet(i11, 4);
        boolean isSet2 = DdsUtils.isSet(i11, 64);
        boolean isSet3 = DdsUtils.isSet(i11, 1);
        boolean isSet4 = DdsUtils.isSet(i11, 131072);
        boolean isSet5 = DdsUtils.isSet(i11, 2);
        if (isSet) {
            int i12 = ddsImageInfo2.header.ddpf.dwFourCC;
            if (i12 == DdsUtils.getInt("DXT1")) {
                ddsImageInfo2.bpp = 4;
                logger.finest("DDS format: DXT1A");
                image.setDataFormat(ImageDataFormat.PrecompressedDXT1A);
            } else if (i12 == DdsUtils.getInt("DXT3")) {
                logger.finest("DDS format: DXT3");
                ddsImageInfo2.bpp = 8;
                image.setDataFormat(ImageDataFormat.PrecompressedDXT3);
            } else if (i12 == DdsUtils.getInt("DXT5")) {
                logger.finest("DDS format: DXT5");
                ddsImageInfo2.bpp = 8;
                image.setDataFormat(ImageDataFormat.PrecompressedDXT5);
            } else {
                if (i12 != DdsUtils.getInt("DX10")) {
                    if (i12 == DdsUtils.getInt("DXT2")) {
                        logger.finest("DDS format: DXT2");
                        throw new Error("DXT2 is not supported.");
                    }
                    if (i12 == DdsUtils.getInt("DXT4")) {
                        logger.finest("DDS format: DXT4");
                        throw new Error("DXT4 is not supported.");
                    }
                    throw new Error("unsupported compressed dds format found (" + i12 + ")");
                }
                int i13 = AnonymousClass1.$SwitchMap$com$ardor3d$image$util$dds$DxgiFormat[ddsImageInfo2.headerDX10.dxgiFormat.ordinal()];
                if (i13 == 1) {
                    logger.finest("DXGI format: BC4_UNORM");
                    ddsImageInfo2.bpp = 4;
                    image.setDataFormat(ImageDataFormat.PrecompressedLATC_L);
                } else {
                    if (i13 != 2) {
                        throw new Error("dxgiFormat not supported: " + ((Object) ddsImageInfo2.headerDX10.dxgiFormat));
                    }
                    logger.finest("DXGI format: BC5_UNORM");
                    ddsImageInfo2.bpp = 8;
                    image.setDataFormat(ImageDataFormat.PrecompressedLATC_LA);
                }
            }
        } else {
            image.setDataType(ImageDataType.UnsignedByte);
            ddsImageInfo2.bpp = ddsImageInfo2.header.ddpf.dwRGBBitCount;
            if (!isSet2) {
                if (!isSet4 && !isSet3) {
                    throw new Error("unsupported uncompressed dds format found.");
                }
                if (isSet4 && isSet3) {
                    logger.finest("DDS format: uncompressed LumAlpha");
                    image.setDataFormat(ImageDataFormat.LuminanceAlpha);
                } else if (isSet4) {
                    logger.finest("DDS format: uncompressed Lum");
                    image.setDataFormat(ImageDataFormat.Luminance);
                } else if (isSet5) {
                    logger.finest("DDS format: uncompressed Alpha");
                    image.setDataFormat(ImageDataFormat.Alpha);
                }
            } else if (isSet3) {
                logger.finest("DDS format: uncompressed rgba");
                image.setDataFormat(ImageDataFormat.RGBA);
            } else {
                logger.finest("DDS format: uncompressed rgb ");
                image.setDataFormat(ImageDataFormat.RGB);
            }
        }
        ddsImageInfo2.calcMipmapSizes(isSet);
        image.setMipMapByteSizes(ddsImageInfo2.mipmapByteSizes);
        int i14 = 0;
        for (int i15 : ddsImageInfo2.mipmapByteSizes) {
            i14 += i15;
        }
        ArrayList q10 = M1.q();
        int i16 = 0;
        while (i16 < image.getDepth()) {
            if (isSet) {
                q10.add(readDXT(littleEndianDataInput, i14, ddsImageInfo2, image));
            } else if (isSet2 || isSet4 || isSet5) {
                i10 = i16;
                arrayList = q10;
                arrayList.add(readUncompressed(littleEndianDataInput, i14, isSet2, isSet4, isSet5, isSet3, ddsImageInfo, image));
                i16 = i10 + 1;
                q10 = arrayList;
                ddsImageInfo2 = ddsImageInfo;
            }
            i10 = i16;
            arrayList = q10;
            i16 = i10 + 1;
            q10 = arrayList;
            ddsImageInfo2 = ddsImageInfo;
        }
        image.setData(q10);
    }

    public static final ByteBuffer readDXT(LittleEndianDataInput littleEndianDataInput, int i10, DdsImageInfo ddsImageInfo, Image image) throws IOException {
        DdsHeader ddsHeader = ddsImageInfo.header;
        int i11 = ddsHeader.dwWidth;
        int i12 = ddsHeader.dwHeight;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10);
        for (int i13 = 0; i13 < ddsImageInfo.header.dwMipMapCount; i13++) {
            byte[] bArr = new byte[ddsImageInfo.mipmapByteSizes[i13]];
            littleEndianDataInput.readFully(bArr);
            if (ddsImageInfo.flipVertically) {
                createByteBuffer.put(DdsUtils.flipDXT(bArr, i11, i12, image.getDataFormat()));
                i11 = Math.max(i11 / 2, 1);
                i12 = Math.max(i12 / 2, 1);
            } else {
                createByteBuffer.put(bArr);
            }
        }
        createByteBuffer.rewind();
        return createByteBuffer;
    }

    private static ByteBuffer readUncompressed(LittleEndianDataInput littleEndianDataInput, int i10, boolean z10, boolean z11, boolean z12, boolean z13, DdsImageInfo ddsImageInfo, Image image) throws IOException {
        int shiftCount = DdsUtils.shiftCount(ddsImageInfo.header.ddpf.dwRBitMask);
        int shiftCount2 = DdsUtils.shiftCount(ddsImageInfo.header.ddpf.dwGBitMask);
        int shiftCount3 = DdsUtils.shiftCount(ddsImageInfo.header.ddpf.dwBBitMask);
        int shiftCount4 = DdsUtils.shiftCount(ddsImageInfo.header.ddpf.dwABitMask);
        int i11 = ddsImageInfo.header.ddpf.dwRGBBitCount / 8;
        int pixelByteSize = ImageUtils.getPixelByteSize(image.getDataFormat(), image.getDataType());
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10);
        DdsHeader ddsHeader = ddsImageInfo.header;
        int i12 = ddsHeader.dwWidth;
        int i13 = ddsHeader.dwHeight;
        int i14 = 0;
        int i15 = 0;
        while (i14 < ddsImageInfo.header.dwMipMapCount) {
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = 0;
                while (i17 < i12) {
                    byte[] bArr = new byte[i11];
                    littleEndianDataInput.readFully(bArr);
                    int i18 = DdsUtils.getInt(bArr);
                    int i19 = i11;
                    DdsPixelFormat ddsPixelFormat = ddsImageInfo.header.ddpf;
                    byte b10 = (byte) ((ddsPixelFormat.dwRBitMask & i18) >> shiftCount);
                    int i20 = shiftCount;
                    byte b11 = (byte) ((ddsPixelFormat.dwGBitMask & i18) >> shiftCount2);
                    int i21 = shiftCount2;
                    byte b12 = (byte) ((ddsPixelFormat.dwBBitMask & i18) >> shiftCount3);
                    byte b13 = (byte) ((ddsPixelFormat.dwABitMask & i18) >> shiftCount4);
                    if (ddsImageInfo.flipVertically) {
                        createByteBuffer.position((((((i13 - i16) - 1) * i12) + i17) * pixelByteSize) + i15);
                    }
                    if (z12) {
                        createByteBuffer.put(b13);
                    } else if (z11) {
                        if (z13) {
                            createByteBuffer.put(b10).put(b13);
                        } else {
                            createByteBuffer.put(b10);
                        }
                    } else if (z10) {
                        if (z13) {
                            createByteBuffer.put(b10).put(b11).put(b12).put(b13);
                        } else {
                            createByteBuffer.put(b10).put(b11).put(b12);
                        }
                    }
                    i17++;
                    i11 = i19;
                    shiftCount = i20;
                    shiftCount2 = i21;
                }
            }
            i15 += i12 * i13 * pixelByteSize;
            i12 = Math.max(i12 / 2, 1);
            i13 = Math.max(i13 / 2, 1);
            i14++;
            shiftCount = shiftCount;
        }
        return createByteBuffer;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
    private static final void updateDepth(Image image, DdsImageInfo ddsImageInfo) {
        if (!DdsUtils.isSet(ddsImageInfo.header.dwCaps2, 512)) {
            int i10 = ddsImageInfo.header.dwDepth;
            if (i10 <= 0) {
                i10 = 1;
            }
            image.setDepth(i10);
            return;
        }
        ?? isSet = DdsUtils.isSet(ddsImageInfo.header.dwCaps2, 1024);
        int i11 = isSet;
        if (DdsUtils.isSet(ddsImageInfo.header.dwCaps2, 2048)) {
            i11 = isSet + 1;
        }
        int i12 = i11;
        if (DdsUtils.isSet(ddsImageInfo.header.dwCaps2, 4096)) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (DdsUtils.isSet(ddsImageInfo.header.dwCaps2, 8192)) {
            i13 = i12 + 1;
        }
        int i14 = i13;
        if (DdsUtils.isSet(ddsImageInfo.header.dwCaps2, 16384)) {
            i14 = i13 + 1;
        }
        int i15 = i14;
        if (DdsUtils.isSet(ddsImageInfo.header.dwCaps2, 32768)) {
            i15 = i14 + 1;
        }
        if (i15 != 6) {
            throw new Error("Cubemaps without all faces defined are not currently supported.");
        }
        image.setDepth(i15);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Image load(InputStream inputStream, boolean z10) throws IOException {
        LittleEndianDataInput littleEndianDataInput = new LittleEndianDataInput(inputStream);
        if (littleEndianDataInput.readInt() != DdsUtils.getInt("DDS ")) {
            throw new Error("Not a dds file.");
        }
        logger.finest("Reading DDS file.");
        DdsImageInfo ddsImageInfo = new DdsImageInfo(0 == true ? 1 : 0);
        ddsImageInfo.flipVertically = z10;
        DdsHeader read = DdsHeader.read(littleEndianDataInput);
        ddsImageInfo.header = read;
        ddsImageInfo.headerDX10 = read.ddpf.dwFourCC == DdsUtils.getInt("DX10") ? DdsHeaderDX10.read(littleEndianDataInput) : null;
        Image image = new Image();
        image.setWidth(ddsImageInfo.header.dwWidth);
        image.setHeight(ddsImageInfo.header.dwHeight);
        updateDepth(image, ddsImageInfo);
        populateImage(image, ddsImageInfo, littleEndianDataInput);
        return image;
    }

    public static final class DdsImageInfo {
        int bpp;
        boolean flipVertically;
        DdsHeader header;
        DdsHeaderDX10 headerDX10;
        int[] mipmapByteSizes;

        private DdsImageInfo() {
            this.bpp = 0;
        }

        public void calcMipmapSizes(boolean z10) {
            DdsHeader ddsHeader = this.header;
            int i10 = ddsHeader.dwWidth;
            int i11 = ddsHeader.dwHeight;
            this.mipmapByteSizes = new int[ddsHeader.dwMipMapCount];
            for (int i12 = 0; i12 < this.header.dwMipMapCount; i12++) {
                this.mipmapByteSizes[i12] = (((z10 ? ((((i10 + 3) / 4) * ((i11 + 3) / 4)) * this.bpp) * 2 : ((i10 * i11) * this.bpp) / 8) + 3) / 4) * 4;
                i10 = Math.max(i10 / 2, 1);
                i11 = Math.max(i11 / 2, 1);
            }
        }

        public DdsImageInfo(AnonymousClass1 anonymousClass1) {
            this();
        }
    }
}
