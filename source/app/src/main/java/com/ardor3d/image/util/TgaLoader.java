package com.ardor3d.image.util;

import com.ardor3d.image.Image;
import com.ardor3d.image.ImageDataFormat;
import com.ardor3d.image.ImageDataType;
import com.ardor3d.util.Ardor3dException;
import com.ardor3d.util.geom.BufferUtils;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.openjdk.tools.doclint.DocLint;

public final class TgaLoader implements ImageLoader {
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

        private ColorMapEntry() {
        }

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

    /* JADX WARN: Removed duplicated region for block: B:264:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x021b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Image load(InputStream inputStream, boolean z10) throws IOException {
        short s10;
        short s11;
        ColorMapEntry[] colorMapEntryArr;
        int i10;
        byte[] bArr;
        boolean z11;
        short s12;
        short flipEndian;
        int readUnsignedByte;
        int i11;
        int i12;
        int i13;
        int i14;
        short s13;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 8192);
        DataInputStream dataInputStream = new DataInputStream(bufferedInputStream);
        int readUnsignedByte2 = dataInputStream.readUnsignedByte();
        int readUnsignedByte3 = dataInputStream.readUnsignedByte();
        int readUnsignedByte4 = dataInputStream.readUnsignedByte();
        dataInputStream.readShort();
        int flipEndian2 = flipEndian(dataInputStream.readShort());
        int readUnsignedByte5 = dataInputStream.readUnsignedByte();
        dataInputStream.readShort();
        dataInputStream.readShort();
        short flipEndian3 = flipEndian(dataInputStream.readShort());
        short flipEndian4 = flipEndian(dataInputStream.readShort());
        int readUnsignedByte6 = dataInputStream.readUnsignedByte();
        boolean z12 = (dataInputStream.readUnsignedByte() & 32) != 0 ? !z10 : z10;
        if (readUnsignedByte2 > 0) {
            long j10 = readUnsignedByte2;
            if (j10 != bufferedInputStream.skip(j10)) {
                throw new IOException("Unexpected number of bytes in file - too few.");
            }
        }
        if (readUnsignedByte3 != 0) {
            int min = Math.min(readUnsignedByte5 / 3, 8);
            if (-1 == bufferedInputStream.read(new byte[(readUnsignedByte5 * flipEndian2) >> 3])) {
                throw new EOFException();
            }
            if (readUnsignedByte4 == 1 || readUnsignedByte4 == 9) {
                ColorMapEntry[] colorMapEntryArr2 = new ColorMapEntry[flipEndian2];
                int i15 = readUnsignedByte5 - (min * 3);
                float pow = 255.0f / ((int) (Math.pow(2.0d, min) - 1.0d));
                s10 = flipEndian3;
                s11 = flipEndian4;
                float pow2 = 255.0f / ((int) (Math.pow(2.0d, i15) - 1.0d));
                for (int i16 = 0; i16 < flipEndian2; i16++) {
                    ColorMapEntry colorMapEntry = new ColorMapEntry();
                    int i17 = readUnsignedByte5 * i16;
                    colorMapEntry.red = (byte) (getBitsAsByte(r3, i17, min) * pow);
                    colorMapEntry.green = (byte) (getBitsAsByte(r3, i17 + min, min) * pow);
                    colorMapEntry.blue = (byte) (getBitsAsByte(r3, (min * 2) + i17, min) * pow);
                    if (i15 <= 0) {
                        colorMapEntry.alpha = (byte) -1;
                    } else {
                        colorMapEntry.alpha = (byte) (getBitsAsByte(r3, i17 + r16, i15) * pow2);
                    }
                    colorMapEntryArr2[i16] = colorMapEntry;
                }
                colorMapEntryArr = colorMapEntryArr2;
                if (readUnsignedByte6 != 32) {
                    bArr = new byte[s10 * s11 * 4];
                    i10 = 4;
                    z11 = true;
                } else {
                    i10 = 3;
                    bArr = new byte[s10 * s11 * 3];
                    z11 = false;
                }
                int i18 = 6;
                if (readUnsignedByte4 != 2) {
                    if (readUnsignedByte6 == 16) {
                        byte[] bArr2 = new byte[2];
                        int i19 = 0;
                        int i20 = 0;
                        while (true) {
                            int i21 = s11 - 1;
                            if (i19 > i21) {
                                break;
                            }
                            if (!z12) {
                                i20 = (i21 - i19) * s10 * i10;
                            }
                            int i22 = i20;
                            short s14 = s10;
                            int i23 = 0;
                            while (i23 < s14) {
                                bArr2[1] = dataInputStream.readByte();
                                bArr2[0] = dataInputStream.readByte();
                                bArr[i22] = (byte) (getBitsAsByte(bArr2, 1, 5) * 8.225806f);
                                bArr[i22 + 1] = (byte) (getBitsAsByte(bArr2, i18, 5) * 8.225806f);
                                int i24 = i22 + 3;
                                bArr[i22 + 2] = (byte) (getBitsAsByte(bArr2, 11, 5) * 8.225806f);
                                if (z11) {
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
                            s10 = s14;
                            i18 = 6;
                        }
                        s13 = s10;
                    } else {
                        s13 = s10;
                        if (readUnsignedByte6 == 24) {
                            int i25 = 0;
                            int i26 = 0;
                            while (true) {
                                int i27 = s11 - 1;
                                if (i25 > i27) {
                                    break;
                                }
                                if (!z12) {
                                    i26 = (i27 - i25) * s13 * i10;
                                }
                                int i28 = i26;
                                for (int i29 = 0; i29 < s13; i29++) {
                                    byte readByte = dataInputStream.readByte();
                                    byte readByte2 = dataInputStream.readByte();
                                    bArr[i28] = dataInputStream.readByte();
                                    bArr[i28 + 1] = readByte2;
                                    int i30 = i28 + 3;
                                    bArr[i28 + 2] = readByte;
                                    if (z11) {
                                        i28 += 4;
                                        bArr[i30] = -1;
                                    } else {
                                        i28 = i30;
                                    }
                                }
                                i25++;
                                i26 = i28;
                            }
                        } else {
                            if (readUnsignedByte6 != 32) {
                                throw new Ardor3dException("Unsupported TGA true color depth: " + readUnsignedByte6);
                            }
                            int i31 = 0;
                            int i32 = 0;
                            while (true) {
                                int i33 = s11 - 1;
                                if (i31 > i33) {
                                    break;
                                }
                                if (!z12) {
                                    i32 = (i33 - i31) * s13 * i10;
                                }
                                int i34 = i32;
                                for (int i35 = 0; i35 < s13; i35++) {
                                    byte readByte3 = dataInputStream.readByte();
                                    byte readByte4 = dataInputStream.readByte();
                                    byte readByte5 = dataInputStream.readByte();
                                    byte readByte6 = dataInputStream.readByte();
                                    bArr[i34] = readByte5;
                                    bArr[i34 + 1] = readByte4;
                                    int i36 = i34 + 3;
                                    bArr[i34 + 2] = readByte3;
                                    i34 += 4;
                                    bArr[i36] = readByte6;
                                }
                                i31++;
                                i32 = i34;
                            }
                        }
                    }
                    s12 = s13;
                } else {
                    s12 = s10;
                    if (readUnsignedByte4 != 10) {
                        if (readUnsignedByte4 == 1) {
                            int i37 = readUnsignedByte6 / 8;
                            if (i37 == 1) {
                                int i38 = 0;
                                int i39 = 0;
                                loop19: while (true) {
                                    int i40 = s11 - 1;
                                    if (i38 > i40) {
                                        break;
                                    }
                                    if (!z12) {
                                        i39 = (i40 - i38) * s12 * i10;
                                    }
                                    for (int i41 = 0; i41 < s12; i41++) {
                                        readUnsignedByte = dataInputStream.readUnsignedByte();
                                        if (readUnsignedByte >= colorMapEntryArr.length || readUnsignedByte < 0) {
                                            break loop19;
                                        }
                                        ColorMapEntry colorMapEntry2 = colorMapEntryArr[readUnsignedByte];
                                        bArr[i39] = colorMapEntry2.red;
                                        bArr[i39 + 1] = colorMapEntry2.green;
                                        int i42 = i39 + 3;
                                        bArr[i39 + 2] = colorMapEntry2.blue;
                                        if (i10 == 4) {
                                            i39 += 4;
                                            bArr[i42] = colorMapEntry2.alpha;
                                        } else {
                                            i39 = i42;
                                        }
                                    }
                                    i38++;
                                }
                                throw new Ardor3dException("TGA: Invalid color map entry referenced: " + readUnsignedByte);
                            }
                            if (i37 != 2) {
                                throw new Ardor3dException("TGA: unknown colormap indexing size used: " + i37);
                            }
                            int i43 = 0;
                            int i44 = 0;
                            loop21: while (true) {
                                int i45 = s11 - 1;
                                if (i43 > i45) {
                                    break;
                                }
                                if (!z12) {
                                    i44 = (i45 - i43) * s12 * i10;
                                }
                                for (int i46 = 0; i46 < s12; i46++) {
                                    flipEndian = flipEndian(dataInputStream.readShort());
                                    if (flipEndian >= colorMapEntryArr.length || flipEndian < 0) {
                                        break loop21;
                                    }
                                    ColorMapEntry colorMapEntry3 = colorMapEntryArr[flipEndian];
                                    bArr[i44] = colorMapEntry3.red;
                                    bArr[i44 + 1] = colorMapEntry3.green;
                                    int i47 = i44 + 3;
                                    bArr[i44 + 2] = colorMapEntry3.blue;
                                    if (i10 == 4) {
                                        i44 += 4;
                                        bArr[i47] = colorMapEntry3.alpha;
                                    } else {
                                        i44 = i47;
                                    }
                                }
                                i43++;
                            }
                            throw new Ardor3dException("TGA: Invalid color map entry referenced: " + ((int) flipEndian));
                        }
                    } else if (readUnsignedByte6 == 32) {
                        int i48 = 0;
                        int i49 = 0;
                        while (true) {
                            int i50 = s11 - 1;
                            if (i48 > i50) {
                                break;
                            }
                            if (!z12) {
                                i49 = (i50 - i48) * s12 * i10;
                            }
                            int i51 = i49;
                            for (int i52 = 0; i52 < s12; i52 = i14 + 1) {
                                int readByte7 = dataInputStream.readByte();
                                if ((readByte7 & 128) == 0) {
                                    i14 = i52 + readByte7;
                                    while (true) {
                                        int i53 = readByte7 - 1;
                                        if (readByte7 < 0) {
                                            break;
                                        }
                                        byte readByte8 = dataInputStream.readByte();
                                        byte readByte9 = dataInputStream.readByte();
                                        byte readByte10 = dataInputStream.readByte();
                                        byte readByte11 = dataInputStream.readByte();
                                        bArr[i51] = readByte10;
                                        bArr[i51 + 1] = readByte9;
                                        int i54 = i51 + 3;
                                        bArr[i51 + 2] = readByte8;
                                        i51 += 4;
                                        bArr[i54] = readByte11;
                                        readByte7 = i53;
                                    }
                                } else {
                                    int i55 = readByte7 & 127;
                                    i14 = i52 + i55;
                                    byte readByte12 = dataInputStream.readByte();
                                    byte readByte13 = dataInputStream.readByte();
                                    byte readByte14 = dataInputStream.readByte();
                                    byte readByte15 = dataInputStream.readByte();
                                    while (true) {
                                        int i56 = i55 - 1;
                                        if (i55 < 0) {
                                            break;
                                        }
                                        bArr[i51] = readByte14;
                                        bArr[i51 + 1] = readByte13;
                                        int i57 = i51 + 3;
                                        bArr[i51 + 2] = readByte12;
                                        i51 += 4;
                                        bArr[i57] = readByte15;
                                        i55 = i56;
                                    }
                                }
                            }
                            i48++;
                            i49 = i51;
                        }
                    } else if (readUnsignedByte6 == 24) {
                        int i58 = 0;
                        int i59 = 0;
                        while (true) {
                            int i60 = s11 - 1;
                            if (i58 > i60) {
                                break;
                            }
                            if (!z12) {
                                i59 = (i60 - i58) * s12 * i10;
                            }
                            int i61 = i59;
                            for (int i62 = 0; i62 < s12; i62 = i13 + 1) {
                                int readByte16 = dataInputStream.readByte();
                                if ((readByte16 & 128) == 0) {
                                    i13 = i62 + readByte16;
                                    while (true) {
                                        int i63 = readByte16 - 1;
                                        if (readByte16 < 0) {
                                            break;
                                        }
                                        byte readByte17 = dataInputStream.readByte();
                                        byte readByte18 = dataInputStream.readByte();
                                        bArr[i61] = dataInputStream.readByte();
                                        bArr[i61 + 1] = readByte18;
                                        int i64 = i61 + 3;
                                        bArr[i61 + 2] = readByte17;
                                        if (z11) {
                                            i61 += 4;
                                            bArr[i64] = -1;
                                            readByte16 = i63;
                                        } else {
                                            readByte16 = i63;
                                            i61 = i64;
                                        }
                                    }
                                } else {
                                    int i65 = readByte16 & 127;
                                    i13 = i62 + i65;
                                    byte readByte19 = dataInputStream.readByte();
                                    byte readByte20 = dataInputStream.readByte();
                                    byte readByte21 = dataInputStream.readByte();
                                    while (true) {
                                        int i66 = i65 - 1;
                                        if (i65 < 0) {
                                            break;
                                        }
                                        bArr[i61] = readByte21;
                                        bArr[i61 + 1] = readByte20;
                                        int i67 = i61 + 3;
                                        bArr[i61 + 2] = readByte19;
                                        if (z11) {
                                            i61 += 4;
                                            bArr[i67] = -1;
                                        } else {
                                            i61 = i67;
                                        }
                                        i65 = i66;
                                    }
                                }
                            }
                            i58++;
                            i59 = i61;
                        }
                    } else {
                        if (readUnsignedByte6 != 16) {
                            throw new Ardor3dException("Unsupported TGA true color depth: " + readUnsignedByte6);
                        }
                        byte[] bArr3 = new byte[2];
                        int i68 = 0;
                        int i69 = 0;
                        while (true) {
                            int i70 = s11 - 1;
                            if (i69 > i70) {
                                break;
                            }
                            if (!z12) {
                                i68 = (i70 - i69) * s12 * i10;
                            }
                            int i71 = 0;
                            while (i71 < s12) {
                                int readByte22 = dataInputStream.readByte();
                                if ((readByte22 & 128) != 0) {
                                    int i72 = readByte22 & 127;
                                    int i73 = i71 + i72;
                                    bArr3[1] = dataInputStream.readByte();
                                    bArr3[0] = dataInputStream.readByte();
                                    byte bitsAsByte2 = (byte) (getBitsAsByte(bArr3, 1, 5) * 8.225806f);
                                    byte bitsAsByte3 = (byte) (getBitsAsByte(bArr3, 6, 5) * 8.225806f);
                                    int i74 = i68;
                                    byte bitsAsByte4 = (byte) (getBitsAsByte(bArr3, 11, 5) * 8.225806f);
                                    int i75 = i72;
                                    int i76 = i74;
                                    while (true) {
                                        int i77 = i75 - 1;
                                        if (i75 < 0) {
                                            break;
                                        }
                                        bArr[i76] = bitsAsByte4;
                                        bArr[i76 + 1] = bitsAsByte3;
                                        int i78 = i76 + 3;
                                        bArr[i76 + 2] = bitsAsByte2;
                                        if (z11) {
                                            i76 += 4;
                                            bArr[i78] = -1;
                                        } else {
                                            i76 = i78;
                                        }
                                        i75 = i77;
                                    }
                                    i68 = i76;
                                    i12 = 1;
                                    i11 = i73;
                                } else {
                                    int i79 = i71 + readByte22;
                                    while (true) {
                                        int i80 = readByte22 - 1;
                                        if (readByte22 < 0) {
                                            break;
                                        }
                                        bArr3[1] = dataInputStream.readByte();
                                        bArr3[0] = dataInputStream.readByte();
                                        int i81 = i79;
                                        bArr[i68] = (byte) (getBitsAsByte(bArr3, 11, 5) * 8.225806f);
                                        bArr[i68 + 1] = (byte) (getBitsAsByte(bArr3, 6, 5) * 8.225806f);
                                        int i82 = i68 + 3;
                                        bArr[i68 + 2] = (byte) (getBitsAsByte(bArr3, 1, 5) * 8.225806f);
                                        if (z11) {
                                            i68 += 4;
                                            bArr[i82] = -1;
                                            i79 = i81;
                                            readByte22 = i80;
                                        } else {
                                            i79 = i81;
                                            readByte22 = i80;
                                            i68 = i82;
                                        }
                                    }
                                    i11 = i79;
                                    i12 = 1;
                                }
                                i71 = i11 + i12;
                            }
                            i69++;
                        }
                    }
                }
                ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(bArr.length);
                createByteBuffer.clear();
                createByteBuffer.put(bArr);
                createByteBuffer.rewind();
                Image image = new Image();
                if (i10 != 4) {
                    image.setDataFormat(ImageDataFormat.RGBA);
                } else {
                    image.setDataFormat(ImageDataFormat.RGB);
                }
                image.setDataType(ImageDataType.UnsignedByte);
                image.setWidth(s12);
                image.setHeight(s11);
                image.setData(createByteBuffer);
                return image;
            }
        }
        s10 = flipEndian3;
        s11 = flipEndian4;
        colorMapEntryArr = null;
        if (readUnsignedByte6 != 32) {
        }
        int i182 = 6;
        if (readUnsignedByte4 != 2) {
        }
        ByteBuffer createByteBuffer2 = BufferUtils.createByteBuffer(bArr.length);
        createByteBuffer2.clear();
        createByteBuffer2.put(bArr);
        createByteBuffer2.rewind();
        Image image2 = new Image();
        if (i10 != 4) {
        }
        image2.setDataType(ImageDataType.UnsignedByte);
        image2.setWidth(s12);
        image2.setHeight(s11);
        image2.setData(createByteBuffer2);
        return image2;
    }
}
