package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.google.android.filament.proguard.UsedByReflection;
import java.nio.Buffer;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;

public class Texture {

    public static Class<?> f60119b;

    public static final i[] f60120c;

    public static final f[] f60121d;

    public static final int f60122e = 0;

    public long f60123a;

    public static class a {

        public final C0942a f60124a;

        public final long f60125b;

        public static class C0942a {

            public final long f60126a;

            public C0942a(long j10) {
                this.f60126a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                Texture.nDestroyBuilder(this.f60126a);
            }
        }

        public a() {
            long m10 = Texture.m();
            this.f60125b = m10;
            this.f60124a = new C0942a(m10);
        }

        @NonNull
        public Texture a(@NonNull Engine engine) {
            long nBuilderBuild = Texture.nBuilderBuild(this.f60125b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new Texture(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create Texture");
        }

        @NonNull
        public a b(@IntRange(from = 1) int i10) {
            Texture.nBuilderDepth(this.f60125b, i10);
            return this;
        }

        @NonNull
        public a c() {
            Texture.nBuilderExternal(this.f60125b);
            return this;
        }

        @NonNull
        public a d(@NonNull f fVar) {
            Texture.nBuilderFormat(this.f60125b, fVar.ordinal());
            return this;
        }

        @NonNull
        public a e(@IntRange(from = 1) int i10) {
            Texture.nBuilderHeight(this.f60125b, i10);
            return this;
        }

        @NonNull
        public a f(long j10) {
            Texture.nBuilderImportTexture(this.f60125b, j10);
            return this;
        }

        @NonNull
        public a g(@IntRange(from = 1) int i10) {
            Texture.nBuilderLevels(this.f60125b, i10);
            return this;
        }

        @NonNull
        public a h(@NonNull i iVar) {
            Texture.nBuilderSampler(this.f60125b, iVar.ordinal());
            return this;
        }

        @NonNull
        public a i(@IntRange(from = 1) int i10) {
            Texture.nBuilderSamples(this.f60125b, i10);
            return this;
        }

        @NonNull
        public a j(@NonNull j jVar, @NonNull j jVar2, @NonNull j jVar3, @NonNull j jVar4) {
            Texture.nBuilderSwizzle(this.f60125b, jVar.ordinal(), jVar2.ordinal(), jVar3.ordinal(), jVar4.ordinal());
            return this;
        }

        @NonNull
        public a k(int i10) {
            Texture.nBuilderUsage(this.f60125b, i10);
            return this;
        }

        @NonNull
        public a l(@IntRange(from = 1) int i10) {
            Texture.nBuilderWidth(this.f60125b, i10);
            return this;
        }
    }

    public enum b {
        EAC_R11,
        EAC_R11_SIGNED,
        EAC_RG11,
        EAC_RG11_SIGNED,
        ETC2_RGB8,
        ETC2_SRGB8,
        ETC2_RGB8_A1,
        ETC2_SRGB8_A1,
        ETC2_EAC_RGBA8,
        ETC2_EAC_SRGBA8,
        DXT1_RGB,
        DXT1_RGBA,
        DXT3_RGBA,
        DXT5_RGBA,
        DXT1_SRGB,
        DXT1_SRGBA,
        DXT3_SRGBA,
        DXT5_SRGBA,
        RGBA_ASTC_4x4,
        RGBA_ASTC_5x4,
        RGBA_ASTC_5x5,
        RGBA_ASTC_6x5,
        RGBA_ASTC_6x6,
        RGBA_ASTC_8x5,
        RGBA_ASTC_8x6,
        RGBA_ASTC_8x8,
        RGBA_ASTC_10x5,
        RGBA_ASTC_10x6,
        RGBA_ASTC_10x8,
        RGBA_ASTC_10x10,
        RGBA_ASTC_12x10,
        RGBA_ASTC_12x12,
        SRGB8_ALPHA8_ASTC_4x4,
        SRGB8_ALPHA8_ASTC_5x4,
        SRGB8_ALPHA8_ASTC_5x5,
        SRGB8_ALPHA8_ASTC_6x5,
        SRGB8_ALPHA8_ASTC_6x6,
        SRGB8_ALPHA8_ASTC_8x5,
        SRGB8_ALPHA8_ASTC_8x6,
        SRGB8_ALPHA8_ASTC_8x8,
        SRGB8_ALPHA8_ASTC_10x5,
        SRGB8_ALPHA8_ASTC_10x6,
        SRGB8_ALPHA8_ASTC_10x8,
        SRGB8_ALPHA8_ASTC_10x10,
        SRGB8_ALPHA8_ASTC_12x10,
        SRGB8_ALPHA8_ASTC_12x12,
        RED_RGTC1,
        SIGNED_RED_RGTC1,
        RED_GREEN_RGTC2,
        SIGNED_RED_GREEN_RGTC2,
        RGB_BPTC_SIGNED_FLOAT,
        RGB_BPTC_UNSIGNED_FLOAT,
        RGBA_BPTC_UNORM,
        SRGB_ALPHA_BPTC_UNORM
    }

    public enum c {
        POSITIVE_X,
        NEGATIVE_X,
        POSITIVE_Y,
        NEGATIVE_Y,
        POSITIVE_Z,
        NEGATIVE_Z
    }

    public enum e {
        R,
        R_INTEGER,
        RG,
        RG_INTEGER,
        RGB,
        RGB_INTEGER,
        RGBA,
        RGBA_INTEGER,
        UNUSED,
        DEPTH_COMPONENT,
        DEPTH_STENCIL,
        STENCIL_INDEX,
        ALPHA
    }

    public enum f {
        R8,
        R8_SNORM,
        R8UI,
        R8I,
        STENCIL8,
        R16F,
        R16UI,
        R16I,
        RG8,
        RG8_SNORM,
        RG8UI,
        RG8I,
        RGB565,
        RGB9_E5,
        RGB5_A1,
        RGBA4,
        DEPTH16,
        RGB8,
        SRGB8,
        RGB8_SNORM,
        RGB8UI,
        RGB8I,
        DEPTH24,
        R32F,
        R32UI,
        R32I,
        RG16F,
        RG16UI,
        RG16I,
        R11F_G11F_B10F,
        RGBA8,
        SRGB8_A8,
        RGBA8_SNORM,
        UNUSED,
        RGB10_A2,
        RGBA8UI,
        RGBA8I,
        DEPTH32F,
        DEPTH24_STENCIL8,
        DEPTH32F_STENCIL8,
        RGB16F,
        RGB16UI,
        RGB16I,
        RG32F,
        RG32UI,
        RG32I,
        RGBA16F,
        RGBA16UI,
        RGBA16I,
        RGB32F,
        RGB32UI,
        RGB32I,
        RGBA32F,
        RGBA32UI,
        RGBA32I,
        EAC_R11,
        EAC_R11_SIGNED,
        EAC_RG11,
        EAC_RG11_SIGNED,
        ETC2_RGB8,
        ETC2_SRGB8,
        ETC2_RGB8_A1,
        ETC2_SRGB8_A1,
        ETC2_EAC_RGBA8,
        ETC2_EAC_SRGBA8,
        DXT1_RGB,
        DXT1_RGBA,
        DXT3_RGBA,
        DXT5_RGBA,
        DXT1_SRGB,
        DXT1_SRGBA,
        DXT3_SRGBA,
        DXT5_SRGBA,
        RGBA_ASTC_4x4,
        RGBA_ASTC_5x4,
        RGBA_ASTC_5x5,
        RGBA_ASTC_6x5,
        RGBA_ASTC_6x6,
        RGBA_ASTC_8x5,
        RGBA_ASTC_8x6,
        RGBA_ASTC_8x8,
        RGBA_ASTC_10x5,
        RGBA_ASTC_10x6,
        RGBA_ASTC_10x8,
        RGBA_ASTC_10x10,
        RGBA_ASTC_12x10,
        RGBA_ASTC_12x12,
        SRGB8_ALPHA8_ASTC_4x4,
        SRGB8_ALPHA8_ASTC_5x4,
        SRGB8_ALPHA8_ASTC_5x5,
        SRGB8_ALPHA8_ASTC_6x5,
        SRGB8_ALPHA8_ASTC_6x6,
        SRGB8_ALPHA8_ASTC_8x5,
        SRGB8_ALPHA8_ASTC_8x6,
        SRGB8_ALPHA8_ASTC_8x8,
        SRGB8_ALPHA8_ASTC_10x5,
        SRGB8_ALPHA8_ASTC_10x6,
        SRGB8_ALPHA8_ASTC_10x8,
        SRGB8_ALPHA8_ASTC_10x10,
        SRGB8_ALPHA8_ASTC_12x10,
        SRGB8_ALPHA8_ASTC_12x12,
        RED_RGTC1,
        SIGNED_RED_RGTC1,
        RED_GREEN_RGTC2,
        SIGNED_RED_GREEN_RGTC2,
        RGB_BPTC_SIGNED_FLOAT,
        RGB_BPTC_UNSIGNED_FLOAT,
        RGBA_BPTC_UNORM,
        SRGB_ALPHA_BPTC_UNORM
    }

    public static class h {

        public int f60153a = 8;

        public boolean f60154b = true;
    }

    public enum i {
        SAMPLER_2D,
        SAMPLER_2D_ARRAY,
        SAMPLER_CUBEMAP,
        SAMPLER_EXTERNAL,
        SAMPLER_3D
    }

    public enum j {
        SUBSTITUTE_ZERO,
        SUBSTITUTE_ONE,
        CHANNEL_0,
        CHANNEL_1,
        CHANNEL_2,
        CHANNEL_3
    }

    public enum k {
        UBYTE,
        BYTE,
        USHORT,
        SHORT,
        UINT,
        INT,
        HALF,
        FLOAT,
        COMPRESSED,
        UINT_10F_11F_11F_REV,
        USHORT_565
    }

    public static class l {

        public static final int f60155a = 1;

        public static final int f60156b = 2;

        public static final int f60157c = 4;

        public static final int f60158d = 8;

        public static final int f60159e = 16;

        public static final int f60160f = 32;

        public static final int f60161g = 64;

        public static final int f60162h = 128;

        public static final int f60163i = 256;

        public static final int f60164j = 512;

        public static final int f60165k = 24;
    }

    static {
        try {
            f60119b = Class.forName("android.hardware.HardwareBuffer");
        } catch (ClassNotFoundException unused) {
        }
        f60120c = i.values();
        f60121d = f.values();
    }

    public Texture(long j10) {
        this.f60123a = j10;
    }

    public static boolean A(@NonNull Engine engine, @NonNull f fVar) {
        return nIsTextureFormatSupported(engine.getNativeObject(), fVar.ordinal());
    }

    public static boolean B(@NonNull Engine engine) {
        return nIsTextureSwizzleSupported(engine.getNativeObject());
    }

    public static boolean L(@NonNull f fVar, @NonNull e eVar, @NonNull k kVar) {
        return nValidatePixelFormatAndType(fVar.ordinal(), eVar.ordinal(), kVar.ordinal());
    }

    public static long m() {
        return nCreateBuilder();
    }

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderDepth(long j10, int i10);

    public static native void nBuilderExternal(long j10);

    public static native void nBuilderFormat(long j10, int i10);

    public static native void nBuilderHeight(long j10, int i10);

    public static native void nBuilderImportTexture(long j10, long j11);

    public static native void nBuilderLevels(long j10, int i10);

    public static native void nBuilderSampler(long j10, int i10);

    public static native void nBuilderSamples(long j10, int i10);

    public static native void nBuilderSwizzle(long j10, int i10, int i11, int i12, int i13);

    public static native void nBuilderUsage(long j10, int i10);

    public static native void nBuilderWidth(long j10, int i10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native void nGenerateMipmaps(long j10, long j11);

    private static native int nGeneratePrefilterMipmap(long j10, long j11, int i10, int i11, Buffer buffer, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int[] iArr, Object obj, Runnable runnable, int i19, boolean z10);

    private static native int nGetDepth(long j10, int i10);

    private static native int nGetHeight(long j10, int i10);

    private static native int nGetInternalFormat(long j10);

    private static native int nGetLevels(long j10);

    private static native int nGetMaxArrayTextureLayers(long j10);

    private static native int nGetMaxTextureSize(long j10, int i10);

    private static native int nGetTarget(long j10);

    private static native int nGetWidth(long j10, int i10);

    private static native boolean nIsStreamValidForTexture(long j10, long j11);

    private static native boolean nIsTextureFormatMipmappable(long j10, int i10);

    private static native boolean nIsTextureFormatSupported(long j10, int i10);

    private static native boolean nIsTextureSwizzleSupported(long j10);

    private static native void nSetExternalImage(long j10, long j11, long j12);

    private static native boolean nSetExternalImageByAHB(long j10, long j11, Object obj);

    private static native void nSetExternalStream(long j10, long j11, long j12);

    private static native int nSetImage3D(long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, Buffer buffer, int i17, int i18, int i19, int i20, int i21, int i22, int i23, Object obj, Runnable runnable);

    private static native int nSetImage3DCompressed(long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, Buffer buffer, int i17, int i18, int i19, int i20, int i21, int i22, int i23, Object obj, Runnable runnable);

    private static native int nSetImage3DDirect(long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j12, int i17, int i18, int i19, int i20, int i21, int i22, int i23, Object obj, Runnable runnable);

    private static native int nSetImage3DDirectCompressed(long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j12, int i17, int i18, int i19, Object obj, Runnable runnable);

    private static native boolean nValidatePixelFormatAndType(int i10, int i11, int i12);

    public static int v(@NonNull Engine engine) {
        return nGetMaxArrayTextureLayers(engine.getNativeObject());
    }

    public static int w(@NonNull Engine engine, i iVar) {
        return nGetMaxTextureSize(engine.getNativeObject(), iVar.ordinal());
    }

    public static boolean z(@NonNull Engine engine, @NonNull f fVar) {
        return nIsTextureFormatMipmappable(engine.getNativeObject(), fVar.ordinal());
    }

    public void C(@NonNull Engine engine, long j10) {
        nSetExternalImage(getNativeObject(), engine.getNativeObject(), j10);
    }

    public void D(@NonNull Engine engine, Object obj) {
        Class<?> cls = f60119b;
        if (cls == null) {
            throw new UnsupportedOperationException("setExternalImage(Engine, Object) not supported on this platform");
        }
        if (!cls.isInstance(obj)) {
            throw new IllegalArgumentException("externalImageRef must be a AHardwareBuffer");
        }
        if (!nSetExternalImageByAHB(getNativeObject(), engine.getNativeObject(), obj)) {
            throw new IllegalStateException("Error setting AHardwareBuffer as external image");
        }
    }

    public void E(@NonNull Engine engine, @NonNull Stream stream) {
        long nativeObject = getNativeObject();
        long h10 = stream.h();
        if (!nIsStreamValidForTexture(nativeObject, h10)) {
            throw new IllegalStateException("Invalid texture sampler: When used with a stream, a texture must use a SAMPLER_EXTERNAL");
        }
        nSetExternalStream(nativeObject, engine.getNativeObject(), h10);
    }

    public void F(@NonNull Engine engine, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @IntRange(from = 0) int i14, @IntRange(from = 0) int i15, @IntRange(from = 0) int i16, @NonNull d dVar) {
        if ((dVar.f60130d == k.COMPRESSED ? nSetImage3DDirectCompressed(getNativeObject(), engine.getNativeObject(), i10, i11, i12, i13, i14, i15, i16, dVar.f60127a, dVar.f60128b, dVar.f60136j, dVar.f60137k.ordinal(), dVar.f60138l, dVar.f60139m) : nSetImage3DDirect(getNativeObject(), engine.getNativeObject(), i10, i11, i12, i13, i14, i15, i16, dVar.f60127a, dVar.f60128b, dVar.f60132f, dVar.f60133g, dVar.f60130d.ordinal(), dVar.f60131e, dVar.f60134h, dVar.f60135i.ordinal(), dVar.f60138l, dVar.f60139m)) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void G(@NonNull Engine engine, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @IntRange(from = 0) int i14, @IntRange(from = 0) int i15, @IntRange(from = 0) int i16, @NonNull g gVar) {
        int nSetImage3D;
        if (gVar.f60143b == k.COMPRESSED) {
            long nativeObject = getNativeObject();
            long nativeObject2 = engine.getNativeObject();
            Buffer buffer = gVar.f60142a;
            nSetImage3D = nSetImage3DCompressed(nativeObject, nativeObject2, i10, i11, i12, i13, i14, i15, i16, buffer, buffer.remaining(), gVar.f60145d, gVar.f60146e, gVar.f60143b.ordinal(), gVar.f60144c, gVar.f60149h, gVar.f60150i.ordinal(), gVar.f60151j, gVar.f60152k);
        } else {
            long nativeObject3 = getNativeObject();
            long nativeObject4 = engine.getNativeObject();
            Buffer buffer2 = gVar.f60142a;
            nSetImage3D = nSetImage3D(nativeObject3, nativeObject4, i10, i11, i12, i13, i14, i15, i16, buffer2, buffer2.remaining(), gVar.f60145d, gVar.f60146e, gVar.f60143b.ordinal(), gVar.f60144c, gVar.f60147f, gVar.f60148g.ordinal(), gVar.f60151j, gVar.f60152k);
        }
        if (nSetImage3D < 0) {
            throw new BufferOverflowException();
        }
    }

    public void H(@NonNull Engine engine, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @IntRange(from = 0) int i14, @NonNull d dVar) {
        F(engine, i10, i11, i12, 0, i13, i14, 1, dVar);
    }

    public void I(@NonNull Engine engine, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @IntRange(from = 0) int i14, @NonNull g gVar) {
        G(engine, i10, i11, i12, 0, i13, i14, 1, gVar);
    }

    public void J(@NonNull Engine engine, @IntRange(from = 0) int i10, @NonNull d dVar) {
        F(engine, i10, 0, 0, 0, y(i10), t(i10), 1, dVar);
    }

    public void K(@NonNull Engine engine, @IntRange(from = 0) int i10, @NonNull g gVar) {
        G(engine, i10, 0, 0, 0, y(i10), t(i10), 1, gVar);
    }

    @UsedByReflection("TextureHelper.java")
    public long getNativeObject() {
        long j10 = this.f60123a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Texture");
    }

    public void o() {
        this.f60123a = 0L;
    }

    public void p(@NonNull Engine engine) {
        nGenerateMipmaps(getNativeObject(), engine.getNativeObject());
    }

    public void q(@NonNull Engine engine, @NonNull g gVar, @NonNull @Size(min = 6) int[] iArr, h hVar) {
        int i10;
        boolean z10;
        int y10 = y(0);
        int t10 = t(0);
        if (hVar != null) {
            int i11 = hVar.f60153a;
            z10 = hVar.f60154b;
            i10 = i11;
        } else {
            i10 = 8;
            z10 = true;
        }
        long nativeObject = getNativeObject();
        long nativeObject2 = engine.getNativeObject();
        Buffer buffer = gVar.f60142a;
        if (nGeneratePrefilterMipmap(nativeObject, nativeObject2, y10, t10, buffer, buffer.remaining(), gVar.f60145d, gVar.f60146e, gVar.f60143b.ordinal(), gVar.f60144c, gVar.f60147f, gVar.f60148g.ordinal(), iArr, gVar.f60151j, gVar.f60152k, i10, z10) < 0) {
            throw new BufferOverflowException();
        }
    }

    public int r(@IntRange(from = 0) int i10) {
        return nGetDepth(getNativeObject(), i10);
    }

    @NonNull
    public f s() {
        return f60121d[nGetInternalFormat(getNativeObject())];
    }

    public int t(@IntRange(from = 0) int i10) {
        return nGetHeight(getNativeObject(), i10);
    }

    public int u() {
        return nGetLevels(getNativeObject());
    }

    @NonNull
    public i x() {
        return f60120c[nGetTarget(getNativeObject())];
    }

    public int y(@IntRange(from = 0) int i10) {
        return nGetWidth(getNativeObject(), i10);
    }

    public static class g {

        public Buffer f60142a;

        public k f60143b;

        public int f60144c;

        public int f60145d;

        public int f60146e;

        public int f60147f;

        public e f60148g;

        public int f60149h;

        public b f60150i;

        @Nullable
        public Object f60151j;

        @Nullable
        public Runnable f60152k;

        public g(@NonNull Buffer buffer, @NonNull e eVar, @NonNull k kVar, @IntRange(from = 1, to = 8) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @Nullable Object obj, @Nullable Runnable runnable) {
            this.f60142a = buffer;
            this.f60145d = i11;
            this.f60146e = i12;
            this.f60143b = kVar;
            this.f60144c = i10;
            this.f60147f = i13;
            this.f60148g = eVar;
            this.f60151j = obj;
            this.f60152k = runnable;
        }

        public static int a(@NonNull e eVar, @NonNull k kVar, int i10, int i11, @IntRange(from = 1, to = 8) int i12) {
            int i13;
            if (kVar == k.COMPRESSED) {
                return 0;
            }
            int i14 = 2;
            switch (eVar) {
                case R:
                case R_INTEGER:
                case DEPTH_COMPONENT:
                case ALPHA:
                    i13 = 1;
                    break;
                case RG:
                case RG_INTEGER:
                case DEPTH_STENCIL:
                case STENCIL_INDEX:
                    i13 = 2;
                    break;
                case RGB:
                case RGB_INTEGER:
                    i13 = 3;
                    break;
                case RGBA:
                case RGBA_INTEGER:
                    i13 = 4;
                    break;
                case UNUSED:
                default:
                    throw new IllegalStateException("unsupported format enum");
            }
            switch (kVar.ordinal()) {
                case 2:
                case 3:
                case 6:
                    i14 = i13 * 2;
                    break;
                case 4:
                case 5:
                case 7:
                    i14 = i13 * 4;
                    break;
                case 8:
                default:
                    i14 = i13;
                    break;
                case 9:
                    i14 = 4;
                    break;
                case 10:
                    break;
            }
            return ((-i12) & ((i14 * i10) + (i12 - 1))) * i11;
        }

        public void b(@Nullable Object obj, @Nullable Runnable runnable) {
            this.f60151j = obj;
            this.f60152k = runnable;
        }

        public g(@NonNull Buffer buffer, @NonNull e eVar, @NonNull k kVar) {
            this(buffer, eVar, kVar, 1, 0, 0, 0, null, null);
        }

        public g(@NonNull Buffer buffer, @NonNull e eVar, @NonNull k kVar, @IntRange(from = 1, to = 8) int i10) {
            this(buffer, eVar, kVar, i10, 0, 0, 0, null, null);
        }

        public g(@NonNull Buffer buffer, @NonNull e eVar, @NonNull k kVar, @IntRange(from = 1, to = 8) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12) {
            this(buffer, eVar, kVar, i10, i11, i12, 0, null, null);
        }

        public g(@NonNull ByteBuffer byteBuffer, @NonNull b bVar, @IntRange(from = 0) int i10) {
            this.f60144c = 1;
            this.f60145d = 0;
            this.f60146e = 0;
            this.f60147f = 0;
            this.f60142a = byteBuffer;
            this.f60143b = k.COMPRESSED;
            this.f60144c = 1;
            this.f60150i = bVar;
            this.f60149h = i10;
        }
    }

    public static class d {

        public long f60127a;

        public int f60128b;

        @Nullable
        public Object f60129c;

        public k f60130d;

        public int f60131e;

        public int f60132f;

        public int f60133g;

        public int f60134h;

        public e f60135i;

        public int f60136j;

        public b f60137k;

        @Nullable
        public Object f60138l;

        @Nullable
        public Runnable f60139m;

        public d(long j10, int i10, @NonNull e eVar, @NonNull k kVar, @IntRange(from = 1, to = 8) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @IntRange(from = 0) int i14, @Nullable Object obj, @Nullable Runnable runnable) {
            this.f60127a = j10;
            this.f60128b = i10;
            this.f60132f = i12;
            this.f60133g = i13;
            this.f60130d = kVar;
            this.f60131e = i11;
            this.f60134h = i14;
            this.f60135i = eVar;
            this.f60138l = obj;
            this.f60139m = runnable;
        }

        public void a(@Nullable Object obj, @Nullable Runnable runnable) {
            this.f60138l = obj;
            this.f60139m = runnable;
        }

        public d(long j10, @IntRange(from = 0) int i10, @NonNull b bVar, @Nullable Object obj, @Nullable Runnable runnable) {
            this.f60131e = 1;
            this.f60132f = 0;
            this.f60133g = 0;
            this.f60134h = 0;
            this.f60127a = j10;
            this.f60128b = i10;
            this.f60130d = k.COMPRESSED;
            this.f60131e = 1;
            this.f60137k = bVar;
            this.f60136j = i10;
            this.f60138l = obj;
            this.f60139m = runnable;
        }

        public d(long j10, @IntRange(from = 0) int i10, @NonNull b bVar) {
            this(j10, i10, bVar, (Object) null, (Runnable) null);
        }

        public d(long j10, int i10, @NonNull e eVar, @NonNull k kVar) {
            this(j10, i10, eVar, kVar, 1, 0, 0, 0, null, null);
        }

        public d(long j10, int i10, @NonNull e eVar, @NonNull k kVar, @IntRange(from = 1, to = 8) int i11) {
            this(j10, i10, eVar, kVar, i11, 0, 0, 0, null, null);
        }

        public d(long j10, int i10, @NonNull e eVar, @NonNull k kVar, @IntRange(from = 1, to = 8) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13) {
            this(j10, i10, eVar, kVar, i11, i12, i13, 0, null, null);
        }
    }
}
