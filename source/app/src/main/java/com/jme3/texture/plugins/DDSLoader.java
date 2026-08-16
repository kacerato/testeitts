package com.jme3.texture.plugins;

import com.google.protobuf.C12676g1;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.TextureKey;
import com.jme3.export.binary.ByteUtils;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.image.ColorSpace;
import com.jme3.util.BufferUtils;
import com.jme3.util.LittleEndien;
import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DDSLoader implements AssetLoader {
    static final boolean $assertionsDisabled = false;
    private static final int DDPF_ALPHA = 2;
    private static final int DDPF_ALPHAPIXELS = 1;
    private static final int DDPF_FOURCC = 4;
    private static final int DDPF_GRAYSCALE = 131072;
    private static final int DDPF_NORMAL = Integer.MIN_VALUE;
    private static final int DDPF_RGB = 64;
    private static final int DDSCAPS2_CUBEMAP = 512;
    private static final int DDSCAPS2_VOLUME = 2097152;
    private static final int DDSCAPS_MIPMAP = 4194304;
    private static final int DDSCAPS_TEXTURE = 4096;
    private static final int DDSD_LINEARSIZE = 524288;
    private static final int DDSD_MANDATORY = 4103;
    private static final int DDSD_MANDATORY_DX10 = 6;
    private static final int DDSD_MIPMAPCOUNT = 131072;
    private static final int DX10DIM_TEXTURE3D = 4;
    private static final int DX10MISC_TEXTURECUBE = 4;
    private static final int PF_ATI1 = 826889281;
    private static final int PF_ATI2 = 843666497;
    private static final int PF_BC4S = 1395934018;
    private static final int PF_BC5S = 1395999554;
    private static final int PF_DX10 = 808540228;
    private static final int PF_DXT1 = 827611204;
    private static final int PF_DXT3 = 861165636;
    private static final int PF_DXT5 = 894720068;
    private static final int PF_ETC2_RGBA1_CSN = 1346589765;
    private static final int PF_ETC2_RGBA_CSN = 1094931525;
    private static final int PF_ETC2_RGB_CSN = 843273285;
    private static final int PF_ETC_RGB_CSN = 541283397;
    private int alphaMask;
    private int blueMask;
    private int bpp;
    private int caps1;
    private int caps2;
    private boolean compressed;
    private int depth;
    private boolean directx10;
    private int flags;
    private boolean grayscaleOrAlpha;
    private int greenMask;
    private int height;

    private DataInput f81653in;
    private int mipMapCount;
    private int pitchOrSize;
    private Image.Format pixelFormat;
    private int redMask;
    private int[] sizes;
    private boolean texture3D;
    private int width;
    private static final Logger logger = Logger.getLogger(DDSLoader.class.getName());
    private static final double LOG2 = Math.log(2.0d);

    private static int byte2int(byte[] bArr) {
        if (bArr.length == 1) {
            return bArr[0] & 255;
        }
        if (bArr.length == 2) {
            return ((bArr[1] & 255) << 8) | (bArr[0] & 255);
        }
        if (bArr.length == 3) {
            return ((bArr[2] & 255) << 16) | (bArr[0] & 255) | ((bArr[1] & 255) << 8);
        }
        if (bArr.length != 4) {
            return 0;
        }
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    private static int count(int i10) {
        int i11 = 0;
        if (i10 == 0) {
            return 0;
        }
        while ((i10 & 1) == 0) {
            i10 >>= 1;
            i11++;
            if (i11 > 32) {
                throw new RuntimeException(Integer.toHexString(i10));
            }
        }
        return i11;
    }

    private static boolean is(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    private void loadDX10Header() throws IOException {
        setPixelFormat(this.f81653in.readInt());
        this.compressed = true;
        if (this.f81653in.readInt() == 4) {
            this.texture3D = true;
        }
        int readInt = this.f81653in.readInt();
        int readInt2 = this.f81653in.readInt();
        if (is(readInt, 4) && readInt2 != 6) {
            throw new IOException("Cubemaps should consist of 6 images!");
        }
        ByteUtils.skipFully(this.f81653in, 4);
    }

    private void loadHeader() throws IOException {
        if (this.f81653in.readInt() != 542327876 || this.f81653in.readInt() != 124) {
            throw new IOException("Not a DDS file");
        }
        int readInt = this.f81653in.readInt();
        this.flags = readInt;
        if (!is(readInt, 4103) && !is(this.flags, 6)) {
            throw new IOException("Mandatory flags missing");
        }
        this.height = this.f81653in.readInt();
        this.width = this.f81653in.readInt();
        this.pitchOrSize = this.f81653in.readInt();
        this.depth = this.f81653in.readInt();
        this.mipMapCount = this.f81653in.readInt();
        ByteUtils.skipFully(this.f81653in, 44);
        this.pixelFormat = null;
        this.directx10 = false;
        readPixelFormat();
        this.caps1 = this.f81653in.readInt();
        this.caps2 = this.f81653in.readInt();
        ByteUtils.skipFully(this.f81653in, 12);
        this.texture3D = false;
        if (!this.directx10) {
            if (!is(this.caps1, 4096)) {
                logger.warning("Texture is missing the DDSCAPS_TEXTURE-flag");
            }
            if (this.depth <= 0) {
                this.depth = 1;
            }
            if (is(this.caps2, 512)) {
                this.depth = 6;
            }
            if (is(this.caps2, 2097152)) {
                this.texture3D = true;
            }
        }
        int ceil = ((int) Math.ceil(Math.log(Math.max(this.height, this.width)) / LOG2)) + 1;
        if (!is(this.caps1, 4194304)) {
            this.mipMapCount = 1;
        } else if (is(this.flags, 131072)) {
            int i10 = this.mipMapCount;
            if (i10 != ceil) {
                logger.log(Level.WARNING, "Got {0} mipmaps, expected {1}", new Object[]{Integer.valueOf(i10), Integer.valueOf(ceil)});
            }
        } else {
            this.mipMapCount = ceil;
        }
        if (this.directx10) {
            loadDX10Header();
        }
        loadSizes();
    }

    private void loadSizes() {
        int i10 = this.width;
        int i11 = this.height;
        this.sizes = new int[this.mipMapCount];
        int bitsPerPixel = this.pixelFormat.getBitsPerPixel();
        for (int i12 = 0; i12 < this.mipMapCount; i12++) {
            this.sizes[i12] = (((this.compressed ? ((((i10 + 3) / 4) * ((i11 + 3) / 4)) * bitsPerPixel) * 2 : ((i10 * i11) * bitsPerPixel) / 8) + 3) / 4) * 4;
            i10 = Math.max(i10 / 2, 1);
            i11 = Math.max(i11 / 2, 1);
        }
    }

    private void readPixelFormat() throws IOException {
        int readInt = this.f81653in.readInt();
        if (readInt != 32) {
            throw new IOException("Pixel format size is " + readInt + ", not 32");
        }
        int readInt2 = this.f81653in.readInt();
        is(readInt2, Integer.MIN_VALUE);
        if (!is(readInt2, 4)) {
            this.compressed = false;
            this.f81653in.readInt();
            this.bpp = this.f81653in.readInt();
            this.redMask = this.f81653in.readInt();
            this.greenMask = this.f81653in.readInt();
            this.blueMask = this.f81653in.readInt();
            this.alphaMask = this.f81653in.readInt();
            if (is(readInt2, 64)) {
                if (is(readInt2, 1)) {
                    if (this.bpp == 16) {
                        this.pixelFormat = Image.Format.RGB5A1;
                    } else {
                        this.pixelFormat = Image.Format.RGBA8;
                    }
                } else if (this.bpp == 16) {
                    this.pixelFormat = Image.Format.RGB565;
                } else {
                    this.pixelFormat = Image.Format.RGB8;
                }
            } else if (is(readInt2, 131072) && is(readInt2, 1)) {
                if (this.bpp != 16) {
                    throw new IOException("Unsupported GrayscaleAlpha BPP: " + this.bpp);
                }
                this.pixelFormat = Image.Format.Luminance8Alpha8;
                this.grayscaleOrAlpha = true;
            } else if (is(readInt2, 131072)) {
                if (this.bpp != 8) {
                    throw new IOException("Unsupported Grayscale BPP: " + this.bpp);
                }
                this.pixelFormat = Image.Format.Luminance8;
                this.grayscaleOrAlpha = true;
            } else {
                if (!is(readInt2, 2)) {
                    throw new IOException("Unknown PixelFormat in DDS file");
                }
                if (this.bpp != 8) {
                    throw new IOException("Unsupported Alpha BPP: " + this.bpp);
                }
                this.pixelFormat = Image.Format.Alpha8;
                this.grayscaleOrAlpha = true;
            }
            int i10 = (this.bpp / 8) * this.width;
            if (!is(this.flags, 524288)) {
                this.pitchOrSize = i10;
                return;
            }
            int i11 = this.pitchOrSize;
            if (i11 == 0) {
                logger.warning("Linear size said to contain valid value but does not");
                this.pitchOrSize = i10;
                return;
            } else {
                if (i11 != i10) {
                    logger.log(Level.WARNING, "Expected size = {0}, real = {1}", new Object[]{Integer.valueOf(i10), Integer.valueOf(this.pitchOrSize)});
                    return;
                }
                return;
            }
        }
        this.compressed = true;
        int readInt3 = this.f81653in.readInt();
        this.f81653in.readInt();
        ByteUtils.skipFully(this.f81653in, 16);
        switch (readInt3) {
            case 111:
                this.compressed = false;
                this.bpp = 16;
                this.pixelFormat = Image.Format.Luminance16F;
                this.grayscaleOrAlpha = true;
                break;
            case 113:
                this.compressed = false;
                this.bpp = 64;
                this.pixelFormat = Image.Format.RGBA16F;
                break;
            case PF_ETC_RGB_CSN:
                this.bpp = 4;
                this.pixelFormat = Image.Format.ETC1;
                break;
            case PF_DX10:
                this.compressed = false;
                this.directx10 = true;
                return;
            case PF_ATI1:
                this.bpp = 4;
                this.pixelFormat = Image.Format.RGTC1;
                break;
            case PF_DXT1:
                this.bpp = 4;
                if (!is(readInt2, 1)) {
                    this.pixelFormat = Image.Format.DXT1;
                    break;
                } else {
                    this.pixelFormat = Image.Format.DXT1A;
                    break;
                }
            case PF_ETC2_RGB_CSN:
                this.bpp = 4;
                this.pixelFormat = Image.Format.ETC1;
                break;
            case PF_ATI2:
                this.bpp = 8;
                this.pixelFormat = Image.Format.RGTC2;
                break;
            case PF_DXT3:
                this.bpp = 8;
                this.pixelFormat = Image.Format.DXT3;
                break;
            case PF_DXT5:
                this.bpp = 8;
                this.pixelFormat = Image.Format.DXT5;
                break;
            case PF_ETC2_RGBA_CSN:
                this.bpp = 8;
                this.pixelFormat = Image.Format.ETC2;
                break;
            case PF_ETC2_RGBA1_CSN:
                this.bpp = 4;
                this.pixelFormat = Image.Format.ETC2_ALPHA1;
                break;
            case PF_BC4S:
                this.bpp = 4;
                this.pixelFormat = Image.Format.SIGNED_RGTC1;
                break;
            case PF_BC5S:
                this.bpp = 8;
                this.pixelFormat = Image.Format.SIGNED_RGTC2;
                break;
            default:
                throw new IOException("Unknown fourcc: " + string(readInt3) + ", " + Integer.toHexString(readInt3));
        }
        int i12 = ((this.width + 3) / 4) * ((this.height + 3) / 4) * this.bpp * 2;
        if (!is(this.flags, 524288)) {
            this.pitchOrSize = i12;
            return;
        }
        int i13 = this.pitchOrSize;
        if (i13 == 0) {
            logger.warning("Must use linear size with fourcc");
            this.pitchOrSize = i12;
        } else if (i13 != i12) {
            logger.log(Level.WARNING, "Expected size = {0}, real = {1}", new Object[]{Integer.valueOf(i12), Integer.valueOf(this.pitchOrSize)});
        }
    }

    private void setPixelFormat(int i10) throws IOException {
        if (i10 == 0) {
            this.pixelFormat = Image.Format.ETC1;
        } else if (i10 == 71) {
            this.pixelFormat = Image.Format.DXT1;
        } else if (i10 == 74) {
            this.pixelFormat = Image.Format.DXT3;
        } else if (i10 == 77) {
            this.pixelFormat = Image.Format.DXT5;
        } else if (i10 == 80) {
            this.pixelFormat = Image.Format.RGTC1;
        } else if (i10 == 81) {
            this.pixelFormat = Image.Format.SIGNED_RGTC1;
        } else if (i10 == 83) {
            this.pixelFormat = Image.Format.RGTC2;
        } else if (i10 == 84) {
            this.pixelFormat = Image.Format.SIGNED_RGTC2;
        } else if (i10 == 95) {
            this.pixelFormat = Image.Format.BC6H_UF16;
        } else if (i10 == 96) {
            this.pixelFormat = Image.Format.BC6H_SF16;
        } else if (i10 == 98) {
            this.pixelFormat = Image.Format.BC7_UNORM;
        } else {
            if (i10 != 99) {
                throw new IOException("Unsupported DX10 format: " + i10);
            }
            this.pixelFormat = Image.Format.BC7_UNORM_SRGB;
        }
        this.bpp = DXGIFormat.getBitsPerPixel(i10);
    }

    private static String string(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((char) (i10 & 255));
        sb2.append((char) ((65280 & i10) >> 8));
        sb2.append((char) ((16711680 & i10) >> 16));
        sb2.append((char) ((i10 & C12676g1.f69130u) >> 24));
        return sb2.toString();
    }

    public byte[] flipData(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i12 = 0; i12 < i11; i12++) {
            System.arraycopy(bArr, i12 * i10, bArr2, ((i11 - i12) - 1) * i10, i10);
        }
        return bArr2;
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        if (assetInfo.getKey() instanceof TextureKey) {
            TextureKey textureKey = (TextureKey) assetInfo.getKey();
            InputStream openStream = assetInfo.openStream();
            try {
                this.f81653in = new LittleEndien(openStream);
                loadHeader();
                if (this.texture3D) {
                    textureKey.setTextureTypeHint(Texture.Type.ThreeDimensional);
                } else if (this.depth > 1) {
                    textureKey.setTextureTypeHint(Texture.Type.CubeMap);
                }
                Image image = new Image(this.pixelFormat, this.width, this.height, this.depth, readData(textureKey.isFlipY()), this.sizes, ColorSpace.sRGB);
                if (openStream != null) {
                    openStream.close();
                }
                return image;
            } catch (Throwable th2) {
                if (openStream != null) {
                    try {
                        openStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
        throw new IllegalArgumentException("Texture assets must be loaded using a TextureKey");
    }

    public ByteBuffer readDXT2D(boolean z10, int i10) throws IOException {
        logger.finest("Source image format: DXT");
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10);
        int i11 = this.width;
        int i12 = this.height;
        for (int i13 = 0; i13 < this.mipMapCount; i13++) {
            if (z10) {
                byte[] bArr = new byte[this.sizes[i13]];
                this.f81653in.readFully(bArr);
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.rewind();
                createByteBuffer.put(DXTFlipper.flipDXT(wrap, i11, i12, this.pixelFormat));
            } else {
                byte[] bArr2 = new byte[this.sizes[i13]];
                this.f81653in.readFully(bArr2);
                createByteBuffer.put(bArr2);
            }
            i11 = Math.max(i11 / 2, 1);
            i12 = Math.max(i12 / 2, 1);
        }
        createByteBuffer.rewind();
        return createByteBuffer;
    }

    public ByteBuffer readDXT3D(boolean z10, int i10) throws IOException {
        logger.finest("Source image format: DXT");
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(this.depth * i10);
        for (int i11 = 0; i11 < this.depth; i11++) {
            ByteBuffer createByteBuffer2 = BufferUtils.createByteBuffer(i10);
            int i12 = this.width;
            int i13 = this.height;
            for (int i14 = 0; i14 < this.mipMapCount; i14++) {
                if (z10) {
                    byte[] bArr = new byte[this.sizes[i14]];
                    this.f81653in.readFully(bArr);
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.rewind();
                    ByteBuffer flipDXT = DXTFlipper.flipDXT(wrap, i12, i13, this.pixelFormat);
                    flipDXT.rewind();
                    createByteBuffer2.put(flipDXT);
                } else {
                    byte[] bArr2 = new byte[this.sizes[i14]];
                    this.f81653in.readFully(bArr2);
                    createByteBuffer2.put(bArr2);
                }
                i12 = Math.max(i12 / 2, 1);
                i13 = Math.max(i13 / 2, 1);
            }
            createByteBuffer2.rewind();
            createByteBuffer.put(createByteBuffer2);
        }
        return createByteBuffer;
    }

    public ArrayList<ByteBuffer> readData(boolean z10) throws IOException {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.sizes;
            if (i10 >= iArr.length) {
                break;
            }
            i11 += iArr[i10];
            i10++;
        }
        ArrayList<ByteBuffer> arrayList = new ArrayList<>();
        if (this.depth > 1 && !this.texture3D) {
            for (int i12 = 0; i12 < this.depth; i12++) {
                if (this.compressed) {
                    arrayList.add(readDXT2D(z10, i11));
                } else if (this.grayscaleOrAlpha) {
                    arrayList.add(readGrayscale2D(z10, i11));
                } else {
                    arrayList.add(readRGB2D(z10, i11));
                }
            }
        } else if (this.texture3D) {
            if (this.compressed) {
                arrayList.add(readDXT3D(z10, i11));
            } else if (this.grayscaleOrAlpha) {
                arrayList.add(readGrayscale3D(z10, i11));
            } else {
                arrayList.add(readRGB3D(z10, i11));
            }
        } else if (this.compressed) {
            arrayList.add(readDXT2D(z10, i11));
        } else if (this.grayscaleOrAlpha) {
            arrayList.add(readGrayscale2D(z10, i11));
        } else {
            arrayList.add(readRGB2D(z10, i11));
        }
        return arrayList;
    }

    public ByteBuffer readGrayscale2D(boolean z10, int i10) throws IOException {
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10);
        if (this.bpp == 8) {
            logger.finest("Source image format: R8");
        }
        int i11 = this.width;
        int i12 = this.height;
        for (int i13 = 0; i13 < this.mipMapCount; i13++) {
            byte[] bArr = new byte[this.sizes[i13]];
            this.f81653in.readFully(bArr);
            if (z10) {
                bArr = flipData(bArr, (this.bpp * i11) / 8, i12);
            }
            createByteBuffer.put(bArr);
            i11 = Math.max(i11 / 2, 1);
            i12 = Math.max(i12 / 2, 1);
        }
        return createByteBuffer;
    }

    public ByteBuffer readGrayscale3D(boolean z10, int i10) throws IOException {
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10 * this.depth);
        if (this.bpp == 8) {
            logger.finest("Source image format: R8");
        }
        for (int i11 = 0; i11 < this.depth; i11++) {
            int i12 = this.width;
            int i13 = this.height;
            for (int i14 = 0; i14 < this.mipMapCount; i14++) {
                byte[] bArr = new byte[this.sizes[i14]];
                this.f81653in.readFully(bArr);
                if (z10) {
                    bArr = flipData(bArr, (this.bpp * i12) / 8, i13);
                }
                createByteBuffer.put(bArr);
                i12 = Math.max(i12 / 2, 1);
                i13 = Math.max(i13 / 2, 1);
            }
        }
        createByteBuffer.rewind();
        return createByteBuffer;
    }

    public ByteBuffer readRGB2D(boolean z10, int i10) throws IOException {
        int count = count(this.redMask);
        int count2 = count(this.blueMask);
        int count3 = count(this.greenMask);
        int count4 = count(this.alphaMask);
        if (this.redMask == 16711680 && this.greenMask == 65280 && this.blueMask == 255) {
            if (this.alphaMask == -16777216 && this.bpp == 32) {
                logger.finest("Data source format: BGRA8");
            } else if (this.bpp == 24) {
                logger.finest("Data source format: BGR8");
            }
        }
        int i11 = this.bpp / 8;
        int bitsPerPixel = this.pixelFormat.getBitsPerPixel() / 8;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10);
        int i12 = this.width;
        int i13 = this.height;
        byte[] bArr = new byte[i11];
        int i14 = 0;
        int i15 = 0;
        while (i14 < this.mipMapCount) {
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = 0;
                while (i17 < i12) {
                    this.f81653in.readFully(bArr);
                    int byte2int = byte2int(bArr);
                    byte b10 = (byte) ((this.redMask & byte2int) >> count);
                    int i18 = count;
                    byte b11 = (byte) ((this.greenMask & byte2int) >> count3);
                    int i19 = count3;
                    byte b12 = (byte) ((this.blueMask & byte2int) >> count2);
                    int i20 = count2;
                    byte b13 = (byte) ((this.alphaMask & byte2int) >> count4);
                    if (z10) {
                        createByteBuffer.position((((((i13 - i16) - 1) * i12) + i17) * bitsPerPixel) + i15);
                    }
                    if (this.alphaMask == 0) {
                        createByteBuffer.put(b10).put(b11).put(b12);
                    } else {
                        createByteBuffer.put(b10).put(b11).put(b12).put(b13);
                    }
                    i17++;
                    count = i18;
                    count3 = i19;
                    count2 = i20;
                }
            }
            i15 += i12 * i13 * bitsPerPixel;
            i12 = Math.max(i12 / 2, 1);
            i13 = Math.max(i13 / 2, 1);
            i14++;
            count = count;
        }
        return createByteBuffer;
    }

    public ByteBuffer readRGB3D(boolean z10, int i10) throws IOException {
        int count = count(this.redMask);
        int count2 = count(this.blueMask);
        int count3 = count(this.greenMask);
        int count4 = count(this.alphaMask);
        if (this.redMask == 16711680 && this.greenMask == 65280 && this.blueMask == 255) {
            if (this.alphaMask == -16777216 && this.bpp == 32) {
                logger.finest("Data source format: BGRA8");
            } else if (this.bpp == 24) {
                logger.finest("Data source format: BGR8");
            }
        }
        int i11 = this.bpp / 8;
        int bitsPerPixel = this.pixelFormat.getBitsPerPixel() / 8;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(this.depth * i10);
        for (int i12 = 0; i12 < this.depth; i12++) {
            int i13 = this.width;
            int i14 = this.height;
            int i15 = i12 * i10;
            byte[] bArr = new byte[i11];
            int i16 = 0;
            while (i16 < this.mipMapCount) {
                for (int i17 = 0; i17 < i14; i17++) {
                    int i18 = 0;
                    while (i18 < i13) {
                        int i19 = i11;
                        this.f81653in.readFully(bArr);
                        int byte2int = byte2int(bArr);
                        byte[] bArr2 = bArr;
                        byte b10 = (byte) ((this.redMask & byte2int) >> count);
                        int i20 = count;
                        byte b11 = (byte) ((this.greenMask & byte2int) >> count3);
                        int i21 = count3;
                        byte b12 = (byte) ((this.blueMask & byte2int) >> count2);
                        int i22 = count2;
                        byte b13 = (byte) ((this.alphaMask & byte2int) >> count4);
                        if (z10) {
                            createByteBuffer.position((((((i14 - i17) - 1) * i13) + i18) * bitsPerPixel) + i15);
                        }
                        if (this.alphaMask == 0) {
                            createByteBuffer.put(b10).put(b11).put(b12);
                        } else {
                            createByteBuffer.put(b10).put(b11).put(b12).put(b13);
                        }
                        i18++;
                        i11 = i19;
                        bArr = bArr2;
                        count = i20;
                        count3 = i21;
                        count2 = i22;
                    }
                }
                i15 += i13 * i14 * bitsPerPixel;
                i13 = Math.max(i13 / 2, 1);
                i14 = Math.max(i14 / 2, 1);
                i16++;
                count = count;
            }
        }
        createByteBuffer.rewind();
        return createByteBuffer;
    }

    public Image load(InputStream inputStream) throws IOException {
        this.f81653in = new LittleEndien(inputStream);
        loadHeader();
        return new Image(this.pixelFormat, this.width, this.height, this.depth, readData(false), this.sizes, ColorSpace.sRGB);
    }
}
