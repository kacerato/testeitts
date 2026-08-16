package com.itsmagic.engine.Engines.Engine.Texture.Utils;

import com.google.android.filament.Texture;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import java.io.File;

public class ASTCTextureData {

    public static final int f79776a = 7;

    public static final int f79777b = 4;

    public static final int f79778c = 0;

    public static final int f79779d = 1;

    public static final int f79780e = 2;

    public static final int f79781f = 3;

    public static final int f79782g = 4;

    public static final int f79783h = 5;

    public static final int f79784i = 6;

    public static class a {

        public final int f79785a;

        public final int f79786b;

        public final int f79787c;

        public final boolean f79788d;

        public final Texture.b f79789e;

        public final Texture.f f79790f;

        public final b[] f79791g;

        public NativeByteBuffer f79792h;

        public a(int width, int height, int levelCount, boolean packedMipChain, Texture.b compressedFormat, Texture.f internalFormat, b[] mipLevels, NativeByteBuffer storage) {
            this.f79785a = width;
            this.f79786b = height;
            this.f79787c = levelCount;
            this.f79788d = packedMipChain;
            this.f79789e = compressedFormat;
            this.f79790f = internalFormat;
            this.f79791g = mipLevels;
            this.f79792h = storage;
        }

        public void a() {
            NativeByteBuffer nativeByteBuffer = this.f79792h;
            if (nativeByteBuffer != null && !nativeByteBuffer.isGarbage()) {
                this.f79792h.destroyImmediate();
            }
            this.f79792h = null;
        }

        public void b() {
            this.f79792h = null;
        }
    }

    public static final class b {

        public final int f79793a;

        public final int f79794b;

        public final int f79795c;

        public final int f79796d;

        public b(int width, int height, int offsetInBytes, int compressedSizeInBytes) {
            this.f79793a = width;
            this.f79794b = height;
            this.f79795c = offsetInBytes;
            this.f79796d = compressedSizeInBytes;
        }
    }

    static {
        System.loadLibrary("native-astc-loader");
    }

    public static Texture.b a(int blockX, int blockY, boolean srgb) {
        if (srgb) {
            if (blockX == 4 && blockY == 4) {
                return Texture.b.SRGB8_ALPHA8_ASTC_4x4;
            }
            if (blockX == 6 && blockY == 6) {
                return Texture.b.SRGB8_ALPHA8_ASTC_6x6;
            }
            if (blockX == 8 && blockY == 8) {
                return Texture.b.SRGB8_ALPHA8_ASTC_8x8;
            }
            if (blockX == 10 && blockY == 10) {
                return Texture.b.SRGB8_ALPHA8_ASTC_10x10;
            }
            if (blockX == 12 && blockY == 12) {
                return Texture.b.SRGB8_ALPHA8_ASTC_12x12;
            }
        } else {
            if (blockX == 4 && blockY == 4) {
                return Texture.b.RGBA_ASTC_4x4;
            }
            if (blockX == 6 && blockY == 6) {
                return Texture.b.RGBA_ASTC_6x6;
            }
            if (blockX == 8 && blockY == 8) {
                return Texture.b.RGBA_ASTC_8x8;
            }
            if (blockX == 10 && blockY == 10) {
                return Texture.b.RGBA_ASTC_10x10;
            }
            if (blockX == 12 && blockY == 12) {
                return Texture.b.RGBA_ASTC_12x12;
            }
        }
        throw new IllegalArgumentException("Unsupported ASTC block size: " + blockX + "x" + blockY);
    }

    public static Texture.f b(int blockX, int blockY, boolean srgb) {
        if (srgb) {
            if (blockX == 4 && blockY == 4) {
                return Texture.f.SRGB8_ALPHA8_ASTC_4x4;
            }
            if (blockX == 6 && blockY == 6) {
                return Texture.f.SRGB8_ALPHA8_ASTC_6x6;
            }
            if (blockX == 8 && blockY == 8) {
                return Texture.f.SRGB8_ALPHA8_ASTC_8x8;
            }
            if (blockX == 10 && blockY == 10) {
                return Texture.f.SRGB8_ALPHA8_ASTC_10x10;
            }
            if (blockX == 12 && blockY == 12) {
                return Texture.f.SRGB8_ALPHA8_ASTC_12x12;
            }
        } else {
            if (blockX == 4 && blockY == 4) {
                return Texture.f.RGBA_ASTC_4x4;
            }
            if (blockX == 6 && blockY == 6) {
                return Texture.f.RGBA_ASTC_6x6;
            }
            if (blockX == 8 && blockY == 8) {
                return Texture.f.RGBA_ASTC_8x8;
            }
            if (blockX == 10 && blockY == 10) {
                return Texture.f.RGBA_ASTC_10x10;
            }
            if (blockX == 12 && blockY == 12) {
                return Texture.f.RGBA_ASTC_12x12;
            }
        }
        throw new IllegalArgumentException("Unsupported ASTC block size: " + blockX + "x" + blockY);
    }

    public static a c(NativeByteBuffer buffer, TextureConfig config) {
        if (buffer != null && buffer.capacity() > 16) {
            int position = buffer.getPosition();
            if (position <= 0 || position > buffer.capacity()) {
                position = buffer.capacity();
            }
            long nativeAllocationPointer = buffer.getNativeAllocationPointer();
            if (nativeAllocationPointer != 0 && position > 16) {
                int[] iArr = new int[7];
                if (!nativeReadHeaderFromBuffer(nativeAllocationPointer, position, iArr)) {
                    return null;
                }
                int i10 = 0;
                int i11 = iArr[0];
                int i12 = iArr[1];
                int i13 = iArr[2];
                int i14 = iArr[3];
                int i15 = iArr[4];
                int i16 = iArr[5];
                boolean z10 = (i16 & 1) != 0;
                boolean z11 = (2 & i16) != 0;
                int i17 = iArr[6];
                if (i15 > 0 && i17 > 0) {
                    int[] iArr2 = new int[(i15 * 4) + 7];
                    if (!nativeReadHeaderFromBuffer(nativeAllocationPointer, position, iArr2)) {
                        return null;
                    }
                    b[] bVarArr = new b[i15];
                    while (i10 < i15) {
                        int i18 = i10 * 4;
                        bVarArr[i10] = new b(iArr2[i18 + 7], iArr2[i18 + 8], iArr2[i18 + 9], iArr2[i18 + 10]);
                        i10++;
                        z10 = z10;
                        iArr2 = iArr2;
                        i15 = i15;
                    }
                    int i19 = i15;
                    boolean z12 = z10;
                    NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(i17);
                    try {
                        if (nativeReadPayloadFromBuffer(nativeAllocationPointer, position, nativeByteBuffer, i17)) {
                            return new a(i11, i12, i19, z12, a(i13, i14, z11), b(i13, i14, z11), bVarArr, nativeByteBuffer);
                        }
                        nativeByteBuffer.destroyImmediate();
                        return null;
                    } catch (RuntimeException e10) {
                        if (!nativeByteBuffer.isGarbage()) {
                            nativeByteBuffer.destroyImmediate();
                        }
                        throw e10;
                    }
                }
            }
        }
        return null;
    }

    public static a d(File file, TextureConfig config) {
        if (file != null && file.exists() && file.length() > 16) {
            int[] iArr = new int[7];
            if (!nativeReadHeader(file.getAbsolutePath(), iArr)) {
                return null;
            }
            int i10 = iArr[0];
            int i11 = iArr[1];
            int i12 = iArr[2];
            int i13 = iArr[3];
            int i14 = iArr[4];
            int i15 = iArr[5];
            boolean z10 = (i15 & 1) != 0;
            boolean z11 = (2 & i15) != 0;
            int i16 = iArr[6];
            if (i14 > 0 && i16 > 0) {
                int[] iArr2 = new int[(i14 * 4) + 7];
                if (!nativeReadHeader(file.getAbsolutePath(), iArr2)) {
                    return null;
                }
                b[] bVarArr = new b[i14];
                for (int i17 = 0; i17 < i14; i17++) {
                    int i18 = i17 * 4;
                    bVarArr[i17] = new b(iArr2[i18 + 7], iArr2[i18 + 8], iArr2[i18 + 9], iArr2[i18 + 10]);
                }
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(i16);
                try {
                    if (nativeReadPayload(file.getAbsolutePath(), nativeByteBuffer, i16)) {
                        return new a(i10, i11, i14, z10, a(i12, i13, z11), b(i12, i13, z11), bVarArr, nativeByteBuffer);
                    }
                    nativeByteBuffer.destroyImmediate();
                    return null;
                } catch (RuntimeException e10) {
                    if (!nativeByteBuffer.isGarbage()) {
                        nativeByteBuffer.destroyImmediate();
                    }
                    throw e10;
                }
            }
        }
        return null;
    }

    private static native boolean nativeReadHeader(String path, int[] outHeaderData);

    private static native boolean nativeReadHeaderFromBuffer(long nativePointer, int byteCount, int[] outHeaderData);

    private static native boolean nativeReadPayload(String path, NativeByteBuffer storage, int expectedSizeInBytes);

    private static native boolean nativeReadPayloadFromBuffer(long nativePointer, int byteCount, NativeByteBuffer storage, int expectedSizeInBytes);
}
