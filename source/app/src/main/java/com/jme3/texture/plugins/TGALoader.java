package com.jme3.texture.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.TextureKey;
import com.jme3.export.binary.ByteUtils;
import com.jme3.math.FastMath;
import com.jme3.texture.Image;
import com.jme3.util.BufferUtils;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.openjdk.tools.doclint.DocLint;

@Deprecated
public final class TGALoader implements AssetLoader {
    public static final int TYPE_BLACKANDWHITE = 3;
    public static final int TYPE_BLACKANDWHITE_RLE = 11;
    public static final int TYPE_COLORMAPPED = 1;
    public static final int TYPE_COLORMAPPED_RLE = 9;
    public static final int TYPE_NO_IMAGE = 0;
    public static final int TYPE_TRUECOLOR = 2;
    public static final int TYPE_TRUECOLOR_RLE = 10;

    public static class ColorMapEntry {
        byte alpha;
        byte blue;
        byte green;
        byte red;

        public String toString() {
            return "entry: " + ((int) this.red) + DocLint.SEPARATOR + ((int) this.green) + DocLint.SEPARATOR + ((int) this.blue) + DocLint.SEPARATOR + ((int) this.alpha);
        }
    }

    private static short flipEndian(short s10) {
        return (short) (((s10 & 65280) >>> 8) | ((65535 & s10) << 8));
    }

    private static byte getBitsAsByte(byte[] bArr, int i10, int i11) {
        int i12 = i10 / 8;
        int i13 = i10 % 8;
        int i14 = 0;
        while (true) {
            int i15 = i11 - 1;
            if (i15 < 0) {
                return (byte) i14;
            }
            if ((bArr[i12] & (i13 == 7 ? 1 : 2 << (6 - i13))) != 0) {
                i14 = i15 == 0 ? i14 + 1 : i14 + (2 << (i11 - 2));
            }
            i13++;
            if (i13 == 8) {
                i12++;
                i13 = 0;
            }
            i11 = i15;
        }
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        InputStream inputStream;
        if (assetInfo.getKey() instanceof TextureKey) {
            boolean isFlipY = ((TextureKey) assetInfo.getKey()).isFlipY();
            try {
                inputStream = assetInfo.openStream();
                try {
                    Image load = load(inputStream, isFlipY);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return load;
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
        } else {
            throw new IllegalArgumentException("Texture assets must be loaded using a TextureKey");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:195:0x03ea, code lost:
    
        throw new java.io.IOException("TGA: Invalid color map entry referenced: " + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0446, code lost:
    
        throw new java.io.IOException("TGA: Invalid color map entry referenced: " + ((int) r5));
     */
    /* JADX WARN: Removed duplicated region for block: B:233:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Image load(InputStream inputStream, boolean z10) throws IOException {
        ColorMapEntry[] colorMapEntryArr;
        byte[] bArr;
        short s10;
        Image.Format format;
        int i10;
        int i11;
        int i12;
        int i13;
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream));
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        int readUnsignedByte2 = dataInputStream.readUnsignedByte();
        int readUnsignedByte3 = dataInputStream.readUnsignedByte();
        dataInputStream.readShort();
        int flipEndian = flipEndian(dataInputStream.readShort());
        int readUnsignedByte4 = dataInputStream.readUnsignedByte();
        dataInputStream.readShort();
        dataInputStream.readShort();
        short flipEndian2 = flipEndian(dataInputStream.readShort());
        short flipEndian3 = flipEndian(dataInputStream.readShort());
        int readUnsignedByte5 = dataInputStream.readUnsignedByte();
        boolean z11 = (dataInputStream.readUnsignedByte() & 32) != 0 ? !z10 : z10;
        if (readUnsignedByte > 0) {
            ByteUtils.skipFully(dataInputStream, readUnsignedByte);
        }
        if (readUnsignedByte2 != 0) {
            int min = Math.min(readUnsignedByte4 / 3, 8);
            ByteUtils.readFully(dataInputStream, new byte[(readUnsignedByte4 * flipEndian) >> 3]);
            if (readUnsignedByte3 == 1 || readUnsignedByte3 == 9) {
                colorMapEntryArr = new ColorMapEntry[flipEndian];
                int i14 = readUnsignedByte4 - (min * 3);
                float pow = 255.0f / (FastMath.pow(2.0f, min) - 1.0f);
                float pow2 = 255.0f / (FastMath.pow(2.0f, i14) - 1.0f);
                int i15 = 0;
                while (i15 < flipEndian) {
                    ColorMapEntry colorMapEntry = new ColorMapEntry();
                    int i16 = readUnsignedByte4 * i15;
                    int i17 = flipEndian;
                    colorMapEntry.red = (byte) (getBitsAsByte(r3, i16, min) * pow);
                    colorMapEntry.green = (byte) (getBitsAsByte(r3, i16 + min, min) * pow);
                    colorMapEntry.blue = (byte) (getBitsAsByte(r3, (min * 2) + i16, min) * pow);
                    if (i14 <= 0) {
                        colorMapEntry.alpha = (byte) -1;
                    } else {
                        colorMapEntry.alpha = (byte) (getBitsAsByte(r3, i16 + r17, i14) * pow2);
                    }
                    colorMapEntryArr[i15] = colorMapEntry;
                    i15++;
                    flipEndian = i17;
                }
                if (readUnsignedByte5 != 32) {
                    bArr = new byte[flipEndian2 * flipEndian3 * 4];
                    s10 = 4;
                } else {
                    bArr = new byte[flipEndian2 * flipEndian3 * 3];
                    s10 = 3;
                }
                int i18 = 6;
                if (readUnsignedByte3 != 2) {
                    if (readUnsignedByte5 == 16) {
                        byte[] bArr2 = new byte[2];
                        int i19 = 0;
                        int i20 = 0;
                        while (true) {
                            int i21 = flipEndian3 - 1;
                            if (i19 > i21) {
                                break;
                            }
                            if (!z11) {
                                i20 = (i21 - i19) * flipEndian2 * s10;
                            }
                            int i22 = i20;
                            int i23 = 0;
                            while (i23 < flipEndian2) {
                                bArr2[1] = dataInputStream.readByte();
                                bArr2[0] = dataInputStream.readByte();
                                bArr[i22] = (byte) (getBitsAsByte(bArr2, 1, 5) * 8.225806f);
                                bArr[i22 + 1] = (byte) (getBitsAsByte(bArr2, i18, 5) * 8.225806f);
                                int i24 = i22 + 3;
                                bArr[i22 + 2] = (byte) (getBitsAsByte(bArr2, 11, 5) * 8.225806f);
                                if (s10 == 4) {
                                    byte bitsAsByte = getBitsAsByte(bArr2, 0, 1);
                                    if (bitsAsByte == 1) {
                                        bitsAsByte = -1;
                                    }
                                    i22 += 4;
                                    bArr[i24] = bitsAsByte;
                                } else {
                                    i22 = i24;
                                }
                                i23++;
                                i18 = 6;
                            }
                            i19++;
                            i20 = i22;
                            i18 = 6;
                        }
                        format = s10 == 4 ? Image.Format.RGBA8 : Image.Format.RGB8;
                    } else if (readUnsignedByte5 == 24) {
                        for (int i25 = 0; i25 < flipEndian3; i25++) {
                            dataInputStream.readFully(bArr, (!z11 ? ((flipEndian3 - 1) - i25) * flipEndian2 : i25 * flipEndian2) * s10, flipEndian2 * s10);
                        }
                        format = Image.Format.BGR8;
                    } else {
                        if (readUnsignedByte5 != 32) {
                            throw new IOException("Unsupported TGA true color depth: " + readUnsignedByte5);
                        }
                        int i26 = 0;
                        int i27 = 0;
                        while (true) {
                            int i28 = flipEndian3 - 1;
                            if (i26 > i28) {
                                break;
                            }
                            if (!z11) {
                                i27 = (i28 - i26) * flipEndian2 * s10;
                            }
                            int i29 = i27;
                            for (int i30 = 0; i30 < flipEndian2; i30++) {
                                byte readByte = dataInputStream.readByte();
                                byte readByte2 = dataInputStream.readByte();
                                byte readByte3 = dataInputStream.readByte();
                                byte readByte4 = dataInputStream.readByte();
                                bArr[i29] = readByte3;
                                bArr[i29 + 1] = readByte2;
                                int i31 = i29 + 3;
                                bArr[i29 + 2] = readByte;
                                i29 += 4;
                                bArr[i31] = readByte4;
                            }
                            i26++;
                            i27 = i29;
                        }
                        format = Image.Format.RGBA8;
                    }
                } else if (readUnsignedByte3 == 10) {
                    if (readUnsignedByte5 == 32) {
                        int i32 = 0;
                        int i33 = 0;
                        while (true) {
                            int i34 = flipEndian3 - 1;
                            if (i32 > i34) {
                                break;
                            }
                            if (!z11) {
                                i33 = (i34 - i32) * flipEndian2 * s10;
                            }
                            int i35 = i33;
                            for (int i36 = 0; i36 < flipEndian2; i36 = i13 + 1) {
                                int readByte5 = dataInputStream.readByte();
                                if ((readByte5 & 128) == 0) {
                                    i13 = i36 + readByte5;
                                    while (true) {
                                        int i37 = readByte5 - 1;
                                        if (readByte5 < 0) {
                                            break;
                                        }
                                        byte readByte6 = dataInputStream.readByte();
                                        byte readByte7 = dataInputStream.readByte();
                                        byte readByte8 = dataInputStream.readByte();
                                        byte readByte9 = dataInputStream.readByte();
                                        bArr[i35] = readByte8;
                                        bArr[i35 + 1] = readByte7;
                                        int i38 = i35 + 3;
                                        bArr[i35 + 2] = readByte6;
                                        i35 += 4;
                                        bArr[i38] = readByte9;
                                        readByte5 = i37;
                                    }
                                } else {
                                    int i39 = readByte5 & 127;
                                    i13 = i36 + i39;
                                    byte readByte10 = dataInputStream.readByte();
                                    byte readByte11 = dataInputStream.readByte();
                                    byte readByte12 = dataInputStream.readByte();
                                    byte readByte13 = dataInputStream.readByte();
                                    while (true) {
                                        int i40 = i39 - 1;
                                        if (i39 < 0) {
                                            break;
                                        }
                                        bArr[i35] = readByte12;
                                        bArr[i35 + 1] = readByte11;
                                        int i41 = i35 + 3;
                                        bArr[i35 + 2] = readByte10;
                                        i35 += 4;
                                        bArr[i41] = readByte13;
                                        i39 = i40;
                                    }
                                }
                            }
                            i32++;
                            i33 = i35;
                        }
                        format = Image.Format.RGBA8;
                    } else if (readUnsignedByte5 == 24) {
                        int i42 = 0;
                        int i43 = 0;
                        while (true) {
                            int i44 = flipEndian3 - 1;
                            if (i42 > i44) {
                                break;
                            }
                            if (!z11) {
                                i43 = (i44 - i42) * flipEndian2 * s10;
                            }
                            int i45 = i43;
                            for (int i46 = 0; i46 < flipEndian2; i46 = i12 + 1) {
                                int readByte14 = dataInputStream.readByte();
                                if ((readByte14 & 128) == 0) {
                                    i12 = i46 + readByte14;
                                    while (true) {
                                        int i47 = readByte14 - 1;
                                        if (readByte14 < 0) {
                                            break;
                                        }
                                        byte readByte15 = dataInputStream.readByte();
                                        byte readByte16 = dataInputStream.readByte();
                                        bArr[i45] = dataInputStream.readByte();
                                        int i48 = i45 + 2;
                                        bArr[i45 + 1] = readByte16;
                                        i45 += 3;
                                        bArr[i48] = readByte15;
                                        readByte14 = i47;
                                    }
                                } else {
                                    int i49 = readByte14 & 127;
                                    i12 = i46 + i49;
                                    byte readByte17 = dataInputStream.readByte();
                                    byte readByte18 = dataInputStream.readByte();
                                    byte readByte19 = dataInputStream.readByte();
                                    while (true) {
                                        int i50 = i49 - 1;
                                        if (i49 < 0) {
                                            break;
                                        }
                                        bArr[i45] = readByte19;
                                        int i51 = i45 + 2;
                                        bArr[i45 + 1] = readByte18;
                                        i45 += 3;
                                        bArr[i51] = readByte17;
                                        i49 = i50;
                                    }
                                }
                            }
                            i42++;
                            i43 = i45;
                        }
                        format = Image.Format.RGB8;
                    } else {
                        if (readUnsignedByte5 != 16) {
                            throw new IOException("Unsupported TGA true color depth: " + readUnsignedByte5);
                        }
                        byte[] bArr3 = new byte[2];
                        int i52 = 0;
                        int i53 = 0;
                        while (true) {
                            int i54 = flipEndian3 - 1;
                            if (i53 > i54) {
                                break;
                            }
                            if (!z11) {
                                i52 = (i54 - i53) * flipEndian2 * s10;
                            }
                            int i55 = 0;
                            while (i55 < flipEndian2) {
                                int readByte20 = dataInputStream.readByte();
                                if ((readByte20 & 128) != 0) {
                                    int i56 = readByte20 & 127;
                                    i10 = i55 + i56;
                                    bArr3[1] = dataInputStream.readByte();
                                    bArr3[0] = dataInputStream.readByte();
                                    byte bitsAsByte2 = (byte) (getBitsAsByte(bArr3, 1, 5) * 8.225806f);
                                    byte bitsAsByte3 = (byte) (getBitsAsByte(bArr3, 6, 5) * 8.225806f);
                                    int i57 = i52;
                                    byte bitsAsByte4 = (byte) (getBitsAsByte(bArr3, 11, 5) * 8.225806f);
                                    while (true) {
                                        int i58 = i56 - 1;
                                        if (i56 < 0) {
                                            break;
                                        }
                                        bArr[i57] = bitsAsByte4;
                                        int i59 = i57 + 2;
                                        bArr[i57 + 1] = bitsAsByte3;
                                        i57 += 3;
                                        bArr[i59] = bitsAsByte2;
                                        i56 = i58;
                                    }
                                    i52 = i57;
                                    i11 = 1;
                                } else {
                                    i10 = i55 + readByte20;
                                    while (true) {
                                        int i60 = readByte20 - 1;
                                        if (readByte20 < 0) {
                                            break;
                                        }
                                        bArr3[1] = dataInputStream.readByte();
                                        bArr3[0] = dataInputStream.readByte();
                                        int i61 = i10;
                                        bArr[i52] = (byte) (getBitsAsByte(bArr3, 11, 5) * 8.225806f);
                                        int i62 = i52 + 2;
                                        bArr[i52 + 1] = (byte) (getBitsAsByte(bArr3, 6, 5) * 8.225806f);
                                        i52 += 3;
                                        bArr[i62] = (byte) (getBitsAsByte(bArr3, 1, 5) * 8.225806f);
                                        readByte20 = i60;
                                        i10 = i61;
                                    }
                                    i11 = 1;
                                }
                                i55 = i10 + i11;
                            }
                            i53++;
                        }
                        format = Image.Format.RGB8;
                    }
                } else if (readUnsignedByte3 == 1) {
                    int i63 = readUnsignedByte5 / 8;
                    if (i63 == 1) {
                        int i64 = 0;
                        int i65 = 0;
                        loop18: while (true) {
                            int i66 = flipEndian3 - 1;
                            if (i64 > i66) {
                                break;
                            }
                            if (!z11) {
                                i65 = (i66 - i64) * flipEndian2 * s10;
                            }
                            for (int i67 = 0; i67 < flipEndian2; i67++) {
                                int readUnsignedByte6 = dataInputStream.readUnsignedByte();
                                if (readUnsignedByte6 >= colorMapEntryArr.length || readUnsignedByte6 < 0) {
                                    break loop18;
                                }
                                ColorMapEntry colorMapEntry2 = colorMapEntryArr[readUnsignedByte6];
                                bArr[i65] = colorMapEntry2.blue;
                                bArr[i65 + 1] = colorMapEntry2.green;
                                int i68 = i65 + 3;
                                bArr[i65 + 2] = colorMapEntry2.red;
                                if (s10 == 4) {
                                    i65 += 4;
                                    bArr[i68] = colorMapEntry2.alpha;
                                } else {
                                    i65 = i68;
                                }
                            }
                            i64++;
                        }
                    } else {
                        if (i63 != 2) {
                            throw new IOException("TGA: unknown colormap indexing size used: " + i63);
                        }
                        int i69 = 0;
                        int i70 = 0;
                        loop20: while (true) {
                            int i71 = flipEndian3 - 1;
                            if (i69 > i71) {
                                break;
                            }
                            if (!z11) {
                                i70 = (i71 - i69) * flipEndian2 * s10;
                            }
                            for (int i72 = 0; i72 < flipEndian2; i72++) {
                                short flipEndian4 = flipEndian(dataInputStream.readShort());
                                if (flipEndian4 >= colorMapEntryArr.length || flipEndian4 < 0) {
                                    break loop20;
                                }
                                ColorMapEntry colorMapEntry3 = colorMapEntryArr[flipEndian4];
                                bArr[i70] = colorMapEntry3.blue;
                                bArr[i70 + 1] = colorMapEntry3.green;
                                int i73 = i70 + 3;
                                bArr[i70 + 2] = colorMapEntry3.red;
                                if (s10 == 4) {
                                    i70 += 4;
                                    bArr[i73] = colorMapEntry3.alpha;
                                } else {
                                    i70 = i73;
                                }
                            }
                            i69++;
                        }
                    }
                    format = s10 == 4 ? Image.Format.RGBA8 : Image.Format.RGB8;
                } else {
                    throw new IOException("Monochrome and RLE colormapped images are not supported");
                }
                inputStream.close();
                ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(bArr.length);
                createByteBuffer.clear();
                createByteBuffer.put(bArr);
                createByteBuffer.rewind();
                Image image = new Image();
                image.setFormat(format);
                image.setWidth(flipEndian2);
                image.setHeight(flipEndian3);
                image.setData(createByteBuffer);
                return image;
            }
        }
        colorMapEntryArr = null;
        if (readUnsignedByte5 != 32) {
        }
        int i182 = 6;
        if (readUnsignedByte3 != 2) {
        }
        inputStream.close();
        ByteBuffer createByteBuffer2 = BufferUtils.createByteBuffer(bArr.length);
        createByteBuffer2.clear();
        createByteBuffer2.put(bArr);
        createByteBuffer2.rewind();
        Image image2 = new Image();
        image2.setFormat(format);
        image2.setWidth(flipEndian2);
        image2.setHeight(flipEndian3);
        image2.setData(createByteBuffer2);
        return image2;
    }
}
