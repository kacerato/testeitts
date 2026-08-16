package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import M9.c;
import M9.d;
import M9.e;
import M9.f;
import android.bluetooth.BluetoothClass;
import androidx.annotation.IntRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import com.itsmagic.engine.Engines.Graphics.Filament.Utils.StillsInUseException;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import java.util.ArrayDeque;
import yb.C16164a;

public class FilamentTexture extends SGCListenerObject implements Runnable, e {

    public static final c f80117e = new c() {
        @Override
        public final void a(long j10) {
            FilamentTexture.E(j10);
        }
    };

    @Keep
    private final boolean autoGenMipmaps;

    public boolean f80118b;

    public final Object f80119c;

    public final ArrayDeque<b> f80120d;

    @Keep
    private final Texture.e format;

    @Keep
    private final int height;

    @Keep
    private final Texture.f internalFormat;

    @Keep
    private final int layerCount;

    @Keep
    private final int mipMapLevels;

    @Keep
    private TextureSampler sampler;

    @Keep
    private final Texture texture;

    @Keep
    private final Texture.k type;

    @Keep
    private final int usages;

    @Keep
    private final int width;

    public static class a {

        public static final int[] f80121a;

        public static final int[] f80122b;

        public static final int[] f80123c;

        public static final int[] f80124d;

        public static final int[] f80125e;

        static {
            int[] iArr = new int[Texture.k.values().length];
            f80125e = iArr;
            try {
                iArr[Texture.k.UBYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f80125e[Texture.k.USHORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f80125e[Texture.k.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Texture.e.values().length];
            f80124d = iArr2;
            try {
                iArr2[Texture.e.R.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f80124d[Texture.e.DEPTH_COMPONENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f80124d[Texture.e.RG.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f80124d[Texture.e.RGB.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f80124d[Texture.e.RGBA.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[Texture.f.values().length];
            f80123c = iArr3;
            try {
                iArr3[Texture.f.R8.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f80123c[Texture.f.DEPTH16.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f80123c[Texture.f.RGB8.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f80123c[Texture.f.SRGB8.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f80123c[Texture.f.RGBA8.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f80123c[Texture.f.SRGB8_A8.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f80123c[Texture.f.R32F.ordinal()] = 7;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f80123c[Texture.f.RGBA16F.ordinal()] = 8;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f80123c[Texture.f.RGBA32F.ordinal()] = 9;
            } catch (NoSuchFieldError unused17) {
            }
            int[] iArr4 = new int[TextureConfig.h.values().length];
            f80122b = iArr4;
            try {
                iArr4[TextureConfig.h.Clamp.ordinal()] = 1;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f80122b[TextureConfig.h.Repeat.ordinal()] = 2;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f80122b[TextureConfig.h.MirrorRepeat.ordinal()] = 3;
            } catch (NoSuchFieldError unused20) {
            }
            int[] iArr5 = new int[TextureConfig.c.values().length];
            f80121a = iArr5;
            try {
                iArr5[TextureConfig.c.Nearest.ordinal()] = 1;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f80121a[TextureConfig.c.Linear.ordinal()] = 2;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    public static final class b implements Runnable {

        @Nullable
        public final Object f80126b;

        @Nullable
        public final Runnable f80127c;

        public b(Object obj, Runnable runnable, a aVar) {
            this(obj, runnable);
        }

        @Override
        public void run() {
            Runnable runnable = this.f80127c;
            if (runnable != null) {
                runnable.run();
            }
        }

        public b(@Nullable Object storageReference, @Nullable Runnable callback) {
            this.f80126b = storageReference;
            this.f80127c = callback;
        }
    }

    public FilamentTexture(int width, int height, Texture.e format, Texture.k type, Texture.a builder, TextureSampler sampler, int mipMapLevels, int usages) {
        this(width, height, format, type, null, builder, sampler, mipMapLevels, usages, Texture.i.SAMPLER_2D, 1, mipMapLevels > 0);
    }

    public static void E(long j10) {
        C16164a.c(j10);
        Qb.c.o(j10);
    }

    public static void f(@NonNull Texture.d buffer, @Nullable Object storageReference) {
        try {
            buffer.getClass().getField("storageReference").set(buffer, storageReference);
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
    }

    public static TextureSampler j(TextureConfig config) {
        TextureSampler.e eVar;
        TextureSampler.d dVar;
        TextureSampler.f fVar = null;
        if (config.j() > 0) {
            int i10 = a.f80121a[config.k().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    eVar = TextureSampler.e.LINEAR_MIPMAP_LINEAR;
                    dVar = TextureSampler.d.LINEAR;
                }
                eVar = null;
                dVar = null;
            } else {
                eVar = TextureSampler.e.NEAREST_MIPMAP_NEAREST;
                dVar = TextureSampler.d.NEAREST;
            }
        } else {
            int i11 = a.f80121a[config.k().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    eVar = TextureSampler.e.LINEAR;
                    dVar = TextureSampler.d.LINEAR;
                }
                eVar = null;
                dVar = null;
            } else {
                eVar = TextureSampler.e.NEAREST;
                dVar = TextureSampler.d.NEAREST;
            }
        }
        int i12 = a.f80122b[config.wrap.ordinal()];
        if (i12 == 1) {
            fVar = TextureSampler.f.CLAMP_TO_EDGE;
        } else if (i12 == 2) {
            fVar = TextureSampler.f.REPEAT;
        } else if (i12 == 3) {
            fVar = TextureSampler.f.MIRRORED_REPEAT;
        }
        return new TextureSampler(eVar, dVar, fVar);
    }

    @Nullable
    public static Object l(@NonNull Texture.d buffer) {
        try {
            return buffer.getClass().getField("storageReference").get(buffer);
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return null;
        }
    }

    public static long w(Texture.k type) {
        if (type == null) {
            return 1L;
        }
        int i10 = a.f80125e[type.ordinal()];
        if (i10 != 2) {
            return i10 != 3 ? 1L : 4L;
        }
        return 2L;
    }

    public static long x(Texture.f internalFormat, Texture.e format, Texture.k type) {
        if (internalFormat != null) {
            switch (a.f80123c[internalFormat.ordinal()]) {
                case 1:
                    return 1L;
                case 2:
                    return 2L;
                case 3:
                case 4:
                    return 3L;
                case 5:
                case 6:
                case 7:
                    return 4L;
                case 8:
                    return 8L;
                case 9:
                    return 16L;
            }
        }
        return y(format) * w(type);
    }

    public static long y(Texture.e format) {
        if (format == null) {
            return 1L;
        }
        int i10 = a.f80124d[format.ordinal()];
        if (i10 == 3) {
            return 2L;
        }
        if (i10 != 4) {
            return i10 != 5 ? 1L : 4L;
        }
        return 3L;
    }

    public long A() {
        return this.texture.getNativeObject();
    }

    public TextureSampler B() {
        return this.sampler;
    }

    public Texture C() {
        return this.texture;
    }

    public boolean D() {
        return this.texture != null;
    }

    public void F(int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, NativeByteBuffer buffer, long nativePointerOffset, Texture.b compressedFormat, int sizeInBytes, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        this.texture.F(Qb.a.f(), level, xoffset, yoffset, zoffset, width, height, depth, h(buffer.getNativeAllocationPointer() + nativePointerOffset, sizeInBytes, compressedFormat, buffer, post));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void G(@IntRange(from = 0) int level, @IntRange(from = 0) int xoffset, @IntRange(from = 0) int yoffset, @IntRange(from = 0) int zoffset, @IntRange(from = 0) int width, @IntRange(from = 0) int height, @IntRange(from = 0) int depth, long nativePixelsPointer, int sizeInBytes) {
        this.texture.F(Qb.a.f(), level, xoffset, yoffset, zoffset, width, height, depth, i(nativePixelsPointer, sizeInBytes, null, null));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void H(@IntRange(from = 0) int level, @IntRange(from = 0) int xoffset, @IntRange(from = 0) int yoffset, @IntRange(from = 0) int zoffset, @IntRange(from = 0) int width, @IntRange(from = 0) int height, @IntRange(from = 0) int depth, long nativePixelsPointer, int sizeInBytes, Runnable post) {
        this.texture.F(Qb.a.f(), level, xoffset, yoffset, zoffset, width, height, depth, i(nativePixelsPointer, sizeInBytes, null, post));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void I(@IntRange(from = 0) int level, @IntRange(from = 0) int xoffset, @IntRange(from = 0) int yoffset, @IntRange(from = 0) int zoffset, @IntRange(from = 0) int width, @IntRange(from = 0) int height, @IntRange(from = 0) int depth, @NonNull Texture.d buffer) {
        if (buffer.f60139m != null) {
            k(l(buffer), null);
        }
        this.texture.F(Qb.a.f(), level, xoffset, yoffset, zoffset, width, height, depth, buffer);
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void J(@IntRange(from = 0) int level, @IntRange(from = 0) int xoffset, @IntRange(from = 0) int yoffset, @IntRange(from = 0) int zoffset, @IntRange(from = 0) int width, @IntRange(from = 0) int height, @IntRange(from = 0) int depth, @NonNull NativeByteBuffer buffer) {
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        this.texture.F(Qb.a.f(), level, xoffset, yoffset, zoffset, width, height, depth, i(buffer.getNativeAllocationPointer(), buffer.capacity(), buffer, null));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void K(@IntRange(from = 0) int level, @IntRange(from = 0) int xoffset, @IntRange(from = 0) int yoffset, @IntRange(from = 0) int zoffset, @IntRange(from = 0) int width, @IntRange(from = 0) int height, @IntRange(from = 0) int depth, @NonNull NativeByteBuffer buffer, Runnable post) {
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        this.texture.F(Qb.a.f(), level, xoffset, yoffset, zoffset, width, height, depth, i(buffer.getNativeAllocationPointer(), buffer.capacity(), buffer, post));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void L(@IntRange(from = 0) int level, @IntRange(from = 0) int xoffset, @IntRange(from = 0) int yoffset, @IntRange(from = 0) int zoffset, @IntRange(from = 0) int width, @IntRange(from = 0) int height, @IntRange(from = 0) int depth, @NonNull NativeShortBuffer buffer) {
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        Texture.d dVar = new Texture.d(buffer.getNativeAllocationPointer(), buffer.capacity() * 2, this.format, Texture.k.USHORT);
        f(dVar, buffer);
        k(buffer, null);
        dVar.a(Qb.e.a(), this);
        this.texture.F(Qb.a.f(), level, xoffset, yoffset, zoffset, width, height, depth, dVar);
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void M(TextureSampler sampler) {
        this.sampler = sampler;
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        if (this.f80118b) {
            throw new RuntimeException();
        }
        String str = "";
        if (FilamentMaterial.o(this)) {
            str = "Material|";
        }
        if (FilamentRenderTarget.h(this)) {
            str = str + "RenderTarget|";
        }
        if (FilamentIndirectLight.h(this)) {
            str = str + "IndirectLight|";
        }
        if (FilamentSkybox.h(this)) {
            str = str + "Skybox|";
        }
        if (str.isEmpty()) {
            this.f80118b = true;
            SGC.destroyImmediate(this);
        } else {
            throw new StillsInUseException("by: " + str.substring(0, str.length() - 1));
        }
    }

    @Override
    public int destroyPriority() {
        return 50;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    @Override
    public d gpuUsageType() {
        int i10 = this.usages;
        return ((i10 & 1) == 0 && (i10 & 2) == 0) ? d.TEXTURE : d.FRAME_BUFFER;
    }

    @Override
    public long gpuUsedBytes() {
        long j10 = 0;
        if (this.f80118b || this.texture == null) {
            return 0L;
        }
        long x10 = x(this.internalFormat, this.format, this.type);
        long j11 = this.layerCount;
        for (int i10 = 0; i10 < (this.autoGenMipmaps ? this.mipMapLevels + 1 : 1); i10++) {
            j10 += Math.max(1, this.width >> i10) * Math.max(1, this.height >> i10);
        }
        return j10 * j11 * x10;
    }

    public final Texture.d h(long nativePixelsPointer, int sizeInBytes, Texture.b compressedFormat, @Nullable Object storageReference, @Nullable Runnable post) {
        Texture.d dVar = new Texture.d(nativePixelsPointer, sizeInBytes, compressedFormat);
        f(dVar, storageReference);
        k(storageReference, post);
        dVar.a(Qb.e.a(), this);
        return dVar;
    }

    public final Texture.d i(long nativePixelsPointer, int sizeInBytes, @Nullable Object storageReference, @Nullable Runnable post) {
        Texture.d dVar = new Texture.d(nativePixelsPointer, sizeInBytes, this.format, this.type);
        f(dVar, storageReference);
        k(storageReference, post);
        dVar.a(Qb.e.a(), this);
        return dVar;
    }

    public final void k(@Nullable Object storageReference, @Nullable Runnable callback) {
        synchronized (this.f80119c) {
            this.f80120d.addLast(new b(storageReference, callback, null));
        }
    }

    public void m(int level, NativeByteBuffer buffer, long nativePointerOffset, Texture.b compressedFormat, int sizeInBytes) {
        n(level, buffer, nativePointerOffset, compressedFormat, sizeInBytes, null);
    }

    public void n(int level, NativeByteBuffer buffer, long nativePointerOffset, Texture.b compressedFormat, int sizeInBytes, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        this.texture.J(Qb.a.f(), level, h(buffer.getNativeAllocationPointer() + nativePointerOffset, sizeInBytes, compressedFormat, buffer, post));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    @Override
    public f nativeUsageType() {
        return null;
    }

    @Override
    public long nativeUsedBytes() {
        return 0L;
    }

    public void o(NativeByteBuffer buffer, Texture.b compressedFormat, int sizeInBytes) {
        n(0, buffer, 0L, compressedFormat, sizeInBytes, null);
    }

    public void p(NativeByteBuffer buffer, Texture.b compressedFormat, int sizeInBytes, Runnable post) {
        n(0, buffer, 0L, compressedFormat, sizeInBytes, post);
    }

    public void q(long nativePixelsPointer, int sizeInBytes) {
        Qb.a.d();
        K8.a.G();
        this.texture.J(Qb.a.f(), 0, i(nativePixelsPointer, sizeInBytes, null, null));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void r(long nativePixelsPointer, int sizeInBytes, Runnable post) {
        Qb.a.d();
        K8.a.G();
        this.texture.J(Qb.a.f(), 0, i(nativePixelsPointer, sizeInBytes, null, post));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    @Override
    public void run() {
        b pollFirst;
        synchronized (this.f80119c) {
            pollFirst = this.f80120d.pollFirst();
        }
        if (pollFirst != null) {
            pollFirst.run();
        }
    }

    public void s(NativeByteBuffer buffer) {
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        Qb.a.d();
        K8.a.G();
        this.texture.J(Qb.a.f(), 0, i(buffer.getNativeAllocationPointer(), buffer.capacity(), buffer, null));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void u(NativeByteBuffer buffer, Runnable post) {
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        Qb.a.d();
        K8.a.G();
        this.texture.J(Qb.a.f(), 0, i(buffer.getNativeAllocationPointer(), buffer.capacity(), buffer, post));
        if (this.autoGenMipmaps) {
            this.texture.p(Qb.a.f());
        }
    }

    public void v() {
        this.texture.p(Qb.a.f());
    }

    public Texture.e z() {
        return this.format;
    }

    public FilamentTexture(int width, int height, Texture.e format, Texture.k type, Texture.a builder, TextureSampler sampler, int mipMapLevels, int usages, Texture.i usageSampler) {
        this(width, height, format, type, null, builder, sampler, mipMapLevels, usages, usageSampler, 1, mipMapLevels > 0);
    }

    public FilamentTexture(int width, int height, Texture.e format, Texture.k type, Texture.f internalFormat, Texture.a builder, TextureSampler sampler, int mipMapLevels, int usages) {
        this(width, height, format, type, internalFormat, builder, sampler, mipMapLevels, usages, Texture.i.SAMPLER_2D, 1, mipMapLevels > 0);
    }

    public FilamentTexture(int width, int height, Texture.e format, Texture.k type, Texture.f internalFormat, Texture.a builder, TextureSampler sampler, int mipMapLevels, int usages, Texture.i usageSampler) {
        this(width, height, format, type, internalFormat, builder, sampler, mipMapLevels, usages, usageSampler, 1, mipMapLevels > 0);
    }

    public FilamentTexture(int width, int height, Texture.e format, Texture.k type, Texture.f internalFormat, Texture.a builder, TextureSampler sampler, int mipMapLevels, int usages, Texture.i usageSampler, int layerCount) {
        this(width, height, format, type, internalFormat, builder, sampler, mipMapLevels, usages, usageSampler, layerCount, mipMapLevels > 0);
    }

    public FilamentTexture(int width, int height, Texture.e format, Texture.k type, Texture.f internalFormat, Texture.a builder, TextureSampler sampler, int mipMapLevels, int usages, Texture.i usageSampler, int layerCount, boolean autoGenerateMipmaps) {
        this.f80119c = new Object();
        this.f80120d = new ArrayDeque<>();
        this.width = width;
        this.height = height;
        this.format = format;
        this.type = type;
        this.internalFormat = internalFormat;
        this.sampler = sampler;
        this.layerCount = Math.max(1, layerCount);
        this.usages = usages;
        if (mipMapLevels < 0) {
            this.mipMapLevels = 255;
            builder.g(255);
            this.autoGenMipmaps = false;
        } else {
            this.mipMapLevels = mipMapLevels;
            builder.g(mipMapLevels + 1);
            this.autoGenMipmaps = autoGenerateMipmaps && mipMapLevels > 0;
        }
        builder.k(this.autoGenMipmaps ? usages | BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY : usages | 16);
        builder.h(usageSampler);
        builder.l(width);
        builder.e(height);
        Texture a10 = builder.a(Qb.a.f());
        this.texture = a10;
        SGC.put(this, a10.getNativeObject(), f80117e, false);
        C16164a.a(this);
    }
}
