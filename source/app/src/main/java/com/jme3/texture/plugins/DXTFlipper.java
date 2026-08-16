package com.jme3.texture.plugins;

import com.jme3.math.FastMath;
import com.jme3.texture.Image;
import com.jme3.util.BufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Logger;

public class DXTFlipper {
    static final boolean $assertionsDisabled = false;

    private static final ByteBuffer f81654bb;
    private static final Logger logger = Logger.getLogger(DXTFlipper.class.getName());

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$texture$Image$Format;

        static {
            int[] iArr = new int[Image.Format.values().length];
            $SwitchMap$com$jme3$texture$Image$Format = iArr;
            try {
                iArr[Image.Format.DXT1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.DXT1A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.DXT3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.DXT5.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGTC2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.SIGNED_RGTC2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.RGTC1.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.SIGNED_RGTC1.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    static {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        f81654bb = allocate;
        allocate.order(ByteOrder.LITTLE_ENDIAN);
    }

    private DXTFlipper() {
    }

    public static ByteBuffer flipDXT(ByteBuffer byteBuffer, int i10, int i11, Image.Format format) {
        char c10;
        if (format == Image.Format.ETC1 || format == Image.Format.ETC2 || format == Image.Format.ETC2_ALPHA1) {
            logger.warning("This is not a DXT format, but ETC. Use flipETC instead.");
            return ETCFlipper.flipETC(byteBuffer, i10, i11, format);
        }
        int limit = byteBuffer.limit();
        int ceil = (int) FastMath.ceil(i10 / 4.0f);
        int ceil2 = (int) FastMath.ceil(i11 / 4.0f);
        char c11 = 3;
        switch (AnonymousClass1.$SwitchMap$com$jme3$texture$Image$Format[format.ordinal()]) {
            case 1:
            case 2:
                c10 = 1;
                break;
            case 3:
                c10 = 2;
                break;
            case 4:
                c10 = 3;
                break;
            case 5:
            case 6:
                c10 = 4;
                break;
            case 7:
            case 8:
                c10 = 5;
                break;
            default:
                throw new IllegalArgumentException("No flip support for texture format " + ((Object) format));
        }
        int i12 = (c10 == 1 || c10 == 5) ? 8 : 16;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(ceil * ceil2 * i12);
        if (i11 == 1) {
            createByteBuffer.put(byteBuffer);
            createByteBuffer.rewind();
        } else if (i11 == 2) {
            byte[] bArr = new byte[8];
            byte[] bArr2 = (c10 == 1 || c10 == 5) ? null : new byte[8];
            for (int i13 = 0; i13 < ceil; i13++) {
                int i14 = i13 * i12;
                byteBuffer.position(i14);
                byteBuffer.limit(i14 + i12);
                if (bArr2 != null) {
                    byteBuffer.get(bArr2);
                    if (c10 == 2) {
                        flipDXT3Block(bArr2, i11);
                    } else if (c10 == 3 || c10 == 4) {
                        flipDXT5Block(bArr2, i11);
                    }
                    createByteBuffer.put(bArr2);
                }
                byteBuffer.get(bArr);
                if (c10 == 4 || c10 == 5) {
                    flipDXT5Block(bArr, i11);
                } else {
                    flipDXT1orDXTA3Block(bArr, i11);
                }
                createByteBuffer.put(bArr);
            }
            createByteBuffer.rewind();
        } else {
            if (i11 < 4) {
                return null;
            }
            byte[] bArr3 = new byte[8];
            byte[] bArr4 = (c10 == 1 || c10 == 5) ? null : new byte[8];
            int i15 = 0;
            while (i15 < ceil2) {
                int i16 = 0;
                while (i16 < ceil) {
                    int i17 = ((i15 * ceil) + i16) * i12;
                    byteBuffer.position(i17);
                    byteBuffer.limit(i17 + i12);
                    int i18 = ((((ceil2 - i15) - 1) * ceil) + i16) * i12;
                    createByteBuffer.position(i18);
                    createByteBuffer.limit(i18 + i12);
                    if (bArr4 != null) {
                        byteBuffer.get(bArr4);
                        if (c10 == 2) {
                            flipDXT3Block(bArr4, i11);
                        } else if (c10 == c11 || c10 == 4) {
                            flipDXT5Block(bArr4, i11);
                        }
                        createByteBuffer.put(bArr4);
                    }
                    byteBuffer.get(bArr3);
                    if (c10 == 4 || c10 == 5) {
                        flipDXT5Block(bArr3, i11);
                    } else {
                        flipDXT1orDXTA3Block(bArr3, i11);
                    }
                    createByteBuffer.put(bArr3);
                    i16++;
                    c11 = 3;
                }
                i15++;
                c11 = 3;
            }
            createByteBuffer.limit(createByteBuffer.capacity());
            createByteBuffer.position(0);
        }
        byteBuffer.limit(limit);
        return createByteBuffer;
    }

    private static void flipDXT1orDXTA3Block(byte[] bArr, int i10) {
        if (i10 != 1) {
            if (i10 == 2) {
                byte b10 = bArr[5];
                bArr[5] = bArr[4];
                bArr[4] = b10;
            } else {
                byte b11 = bArr[7];
                bArr[7] = bArr[4];
                bArr[4] = b11;
                byte b12 = bArr[6];
                bArr[6] = bArr[5];
                bArr[5] = b12;
            }
        }
    }

    private static void flipDXT3Block(byte[] bArr, int i10) {
        if (i10 == 1) {
            return;
        }
        byte b10 = bArr[0];
        byte b11 = bArr[1];
        if (i10 == 2) {
            bArr[0] = bArr[2];
            bArr[1] = bArr[3];
            bArr[2] = b10;
            bArr[3] = b11;
            return;
        }
        bArr[0] = bArr[6];
        bArr[1] = bArr[7];
        bArr[6] = b10;
        bArr[7] = b11;
        byte b12 = bArr[2];
        byte b13 = bArr[3];
        bArr[2] = bArr[4];
        bArr[3] = bArr[5];
        bArr[4] = b12;
        bArr[5] = b13;
    }

    private static void flipDXT5Block(byte[] bArr, int i10) {
        if (i10 == 1) {
            return;
        }
        byte b10 = bArr[0];
        byte b11 = bArr[1];
        ByteBuffer byteBuffer = f81654bb;
        byteBuffer.clear();
        byteBuffer.put(bArr, 2, 6).flip();
        byteBuffer.clear();
        long j10 = byteBuffer.getLong();
        long writeCode5 = i10 == 2 ? writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(j10, 0, 0, readCode5(j10, 0, 1)), 1, 0, readCode5(j10, 1, 1)), 2, 0, readCode5(j10, 2, 1)), 3, 0, readCode5(j10, 3, 1)), 0, 1, readCode5(j10, 0, 0)), 1, 1, readCode5(j10, 1, 0)), 2, 1, readCode5(j10, 2, 0)), 3, 1, readCode5(j10, 3, 0)) : writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(writeCode5(j10, 0, 0, readCode5(j10, 0, 3)), 1, 0, readCode5(j10, 1, 3)), 2, 0, readCode5(j10, 2, 3)), 3, 0, readCode5(j10, 3, 3)), 0, 1, readCode5(j10, 0, 2)), 1, 1, readCode5(j10, 1, 2)), 2, 1, readCode5(j10, 2, 2)), 3, 1, readCode5(j10, 3, 2)), 0, 2, readCode5(j10, 0, 1)), 1, 2, readCode5(j10, 1, 1)), 2, 2, readCode5(j10, 2, 1)), 3, 2, readCode5(j10, 3, 1)), 0, 3, readCode5(j10, 0, 0)), 1, 3, readCode5(j10, 1, 0)), 2, 3, readCode5(j10, 2, 0)), 3, 3, readCode5(j10, 3, 0));
        byteBuffer.clear();
        byteBuffer.putLong(writeCode5);
        byteBuffer.clear();
        byteBuffer.get(bArr, 2, 6).flip();
    }

    private static long readCode5(long j10, int i10, int i11) {
        return (j10 & (7 << r4)) >> r4;
    }

    private static long writeCode5(long j10, int i10, int i11, long j11) {
        return (j10 & (~(7 << r4))) | ((j11 & 7) << r4);
    }
}
