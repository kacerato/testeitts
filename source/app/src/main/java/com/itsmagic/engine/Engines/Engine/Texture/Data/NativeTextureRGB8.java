package com.itsmagic.engine.Engines.Engine.Texture.Data;

import Ic.C2633l;
import JAVARuntime.Thread;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.Keep;
import c4.C4153a;
import com.google.android.filament.RenderTarget;
import com.google.android.filament.Texture;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGB8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.ASTCTextureData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.FailedToLoadTexture;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureNeedsImport;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.UnsupportedTextureOperation;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.b;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderTarget;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import dalvik.annotation.optimization.CriticalNative;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.atomic.AtomicInteger;

public class NativeTextureRGB8 extends com.itsmagic.engine.Engines.Engine.Texture.Data.a {

    public static final M9.c f79692s = new M9.c() {
        @Override
        public final void a(long j10) {
            NativeTextureRGB8.deleteBuffer(j10);
        }
    };

    public static final int f79693t = 3;

    @Keep
    private FilamentRenderTarget extractingRT;

    public int f79694j;

    public int f79695k;

    @Keep
    private FilamentTexture keepAliveExtractionTexture;

    public long f79696l;

    public final boolean f79697m;

    public boolean f79698n;

    public final TextureConfig f79699o;

    public FilamentTexture f79700p;

    @Keep
    private Texture.g pbd;

    public ASTCTextureData.a f79701q;

    public String f79702r;

    @Keep
    private ByteBuffer rgba;

    public class a implements Runnable {

        public final Runnable f79703b;

        public class RunnableC1365a implements Runnable {
            public RunnableC1365a() {
            }

            @Override
            public void run() {
                Runnable runnable = a.this.f79703b;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public a(final Runnable val$post) {
            this.f79703b = val$post;
        }

        @Override
        public void run() {
            NativeTextureRGB8.this.f79698n = true;
            K8.a.I(new RunnableC1365a());
        }
    }

    public class b implements Runnable {

        public final Runnable f79706b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                Runnable runnable = b.this.f79706b;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public b(final Runnable val$post) {
            this.f79706b = val$post;
        }

        @Override
        public void run() {
            NativeTextureRGB8 nativeTextureRGB8 = NativeTextureRGB8.this;
            nativeTextureRGB8.z0(nativeTextureRGB8.f79696l);
            NativeTextureRGB8.this.f79698n = true;
            K8.a.I(new a());
        }
    }

    public class c implements Runnable {

        public final AtomicInteger f79709b;

        public final Runnable f79710c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                Runnable runnable = c.this.f79710c;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public c(final AtomicInteger val$remainingUploads, final Runnable val$post) {
            this.f79709b = val$remainingUploads;
            this.f79710c = val$post;
        }

        @Override
        public void run() {
            if (this.f79709b.decrementAndGet() > 0) {
                return;
            }
            if (NativeTextureRGB8.this.f79701q != null) {
                NativeTextureRGB8.this.f79701q.a();
            }
            NativeTextureRGB8.this.f79698n = true;
            K8.a.I(new a());
        }
    }

    public class d implements Runnable {

        public final Runnable f79713b;

        public d(final Runnable val$post) {
            this.f79713b = val$post;
        }

        @Override
        public void run() {
            Qb.a.d();
            K8.a.G();
            if (NativeTextureRGB8.this.f79698n && !NativeTextureRGB8.this.f79697m) {
                throw new UnsupportedTextureOperation("Can not reapply a texture without allow modifications flag");
            }
            if (NativeTextureRGB8.this.f79701q != null) {
                if (NativeTextureRGB8.this.f79701q.f79792h == null) {
                    throw new UnsupportedTextureOperation("ASTC upload buffer is no longer available");
                }
                if (NativeTextureRGB8.this.F0()) {
                    NativeTextureRGB8 nativeTextureRGB8 = NativeTextureRGB8.this;
                    nativeTextureRGB8.P0(nativeTextureRGB8.f79701q, this.f79713b);
                    return;
                }
            }
            NativeTextureRGB8 nativeTextureRGB82 = NativeTextureRGB8.this;
            long w02 = nativeTextureRGB82.w0(nativeTextureRGB82.f79696l);
            if (w02 == 0) {
                throw new UnsupportedTextureOperation("apply failed");
            }
            int i10 = NativeTextureRGB8.this.f79699o.mipmapLevels;
            if (!NativeTextureRGB8.this.f79699o.genMipmaps) {
                i10 = 0;
            } else if (i10 <= 0) {
                i10 = 1;
            }
            NativeTextureRGB8.this.H0(i10);
            NativeTextureRGB8.this.f79700p.r(w02, NativeTextureRGB8.this.f79694j * NativeTextureRGB8.this.f79695k * 3, NativeTextureRGB8.this.q0(this.f79713b));
        }
    }

    public class e implements Runnable {

        public final int f79715b;

        public final int f79716c;

        public final a.b f79717d;

        public class a implements Runnable {

            public class RunnableC1366a implements Runnable {
                public RunnableC1366a() {
                }

                @Override
                public void run() {
                    NativeTextureRGB8.this.extractingRT.destroyImmediate();
                    NativeTextureRGB8.this.extractingRT = null;
                    NativeTextureRGB8.this.keepAliveExtractionTexture = null;
                    NativeTextureRGB8.this.pbd = null;
                    NativeTextureRGB8.this.rgba = null;
                }
            }

            public a() {
            }

            @Override
            public void run() {
                try {
                    NativeTextureRGB8.this.rgba.rewind();
                    e eVar = e.this;
                    int[] iArr = new int[eVar.f79715b * eVar.f79716c];
                    int i10 = 0;
                    while (true) {
                        e eVar2 = e.this;
                        int i11 = eVar2.f79715b;
                        int i12 = eVar2.f79716c;
                        if (i10 >= i11 * i12) {
                            Bitmap createBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
                            e eVar3 = e.this;
                            int i13 = eVar3.f79715b;
                            createBitmap.setPixels(iArr, 0, i13, 0, 0, i13, eVar3.f79716c);
                            e.this.f79717d.on(createBitmap);
                            K8.a.I(new RunnableC1366a());
                            return;
                        }
                        int i14 = NativeTextureRGB8.this.rgba.get() & 255;
                        int i15 = NativeTextureRGB8.this.rgba.get() & 255;
                        iArr[i10] = (i14 << 16) | ((NativeTextureRGB8.this.rgba.get() & 255) << 24) | (i15 << 8) | (NativeTextureRGB8.this.rgba.get() & 255);
                        i10++;
                    }
                } catch (Throwable th2) {
                    K8.a.I(new RunnableC1366a());
                    throw th2;
                }
            }
        }

        public e(final int val$w, final int val$h, final a.b val$extractCallback) {
            this.f79715b = val$w;
            this.f79716c = val$h;
            this.f79717d = val$extractCallback;
        }

        @Override
        public void run() {
            O9.b.d(new a());
        }
    }

    public static class f {

        public static final int[] f79721a;

        static {
            int[] iArr = new int[a.EnumC1369a.values().length];
            f79721a = iArr;
            try {
                iArr[a.EnumC1369a.PNG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79721a[a.EnumC1369a.JPG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        System.loadLibrary("native-texture-rgb8");
    }

    public NativeTextureRGB8(int width, int height) {
        this(width, height, (TextureConfig) null);
    }

    private void E0(long pointer, int x10, int y10, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelR(pointer, x10, y10, value);
        } else {
            nativeSetPixelR(pointer, x10, y10, value);
        }
    }

    public void H0(int levels) {
        TextureConfig textureConfig = this.f79699o;
        if (textureConfig.gammaCorrection) {
            levels = 0;
        }
        int i10 = levels;
        FilamentTexture filamentTexture = this.f79700p;
        if (filamentTexture != null) {
            filamentTexture.M(FilamentTexture.j(textureConfig));
        } else {
            this.f79700p = new FilamentTexture(this.f79694j, this.f79695k, Texture.e.RGB, Texture.k.UBYTE, new Texture.a().d(this.f79699o.gammaCorrection ? Texture.f.SRGB8 : Texture.f.RGB8), FilamentTexture.j(textureConfig), i10, 8);
        }
    }

    public static NativeTextureRGB8 J0(Context context, String path, boolean applyOGL, TextureConfig config, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        if (config == null) {
            config = new TextureConfig();
        }
        b.d dVar = new b.d();
        try {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(context, path, dVar);
            NativeTextureRGB8 nativeTextureRGB8 = new NativeTextureRGB8(context, dVar, config);
            if (applyOGL) {
                nativeTextureRGB8.e(post);
            }
            return nativeTextureRGB8;
        } catch (TextureNeedsImport unused) {
            NativeTextureRGB8 nativeTextureRGB82 = new NativeTextureRGB8(config);
            if (!C2633l.b(path, ".ivo")) {
                com.itsmagic.engine.Engines.Engine.Texture.Utils.b.g(context, dVar, new b.C1370b().a(b.c.ONLY_TEXTURE).b(false));
                C4153a.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + path), com.itsmagic.engine.Core.Components.ProjectController.a.T());
                nativeTextureRGB82.M0(dVar);
            }
            if (applyOGL) {
                nativeTextureRGB82.e(post);
            }
            return nativeTextureRGB82;
        }
    }

    @Deprecated
    public static NativeTextureRGB8 K0(Context context, String path, boolean applyOGL, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        b.d dVar = new b.d();
        com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(context, path, dVar);
        TextureConfig q10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.q(path, context, false);
        if (q10 == null) {
            q10 = new TextureConfig();
        }
        NativeTextureRGB8 nativeTextureRGB8 = new NativeTextureRGB8(context, dVar, q10);
        if (applyOGL) {
            nativeTextureRGB8.e(post);
        }
        return nativeTextureRGB8;
    }

    public static NativeTextureRGB8 L0(Context context, String path, boolean applyOGL, TextureConfig config, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        b.d dVar = new b.d();
        try {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.o(context, path, dVar, true);
            if (config == null) {
                config = new TextureConfig();
            }
            NativeTextureRGB8 nativeTextureRGB8 = new NativeTextureRGB8(context, dVar, config);
            if (applyOGL) {
                nativeTextureRGB8.e(post);
            }
            return nativeTextureRGB8;
        } catch (TextureNeedsImport unused) {
            return null;
        }
    }

    private void M0(b.d state) {
        String str;
        if (state.f79822c) {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.a.a(state);
        }
        if (state.f79822c || this.f79697m || (str = state.f79821b) == null || str.isEmpty()) {
            if (state.f79822c) {
                throw new RuntimeException("loading assets is not implemented yet!");
            }
            if (y0(this.f79696l, this.f79697m, state.f79820a)) {
                this.f79694j = x0(this.f79696l);
                this.f79695k = s0(this.f79696l);
                return;
            } else {
                throw new FailedToLoadTexture("Failed to load texture on c++ (" + state.f79820a + ")");
            }
        }
        ASTCTextureData.a d10 = ASTCTextureData.d(new File(state.f79821b), this.f79699o);
        this.f79701q = d10;
        if (d10 != null) {
            this.f79694j = d10.f79785a;
            this.f79695k = d10.f79786b;
            this.f79702r = state.f79820a;
        } else {
            throw new RuntimeException("Failed to decode ASTC from file:" + state.f79821b);
        }
    }

    private void N0() {
        if (!this.f79697m) {
            throw new RuntimeException("Immutable texture, if you want to modify the pixels in real time, go to the texture settings and activate the \"modifiable\" option (if texture was loaded from a file)");
        }
    }

    private void Q0(int x10, int y10) {
        if (x10 < 0 || x10 >= this.f79694j) {
            throw new IndexOutOfBoundsException("x(" + x10 + ") needs to be >= 0 and < width(" + this.f79694j + ")");
        }
        if (y10 < 0 || y10 >= this.f79695k) {
            throw new IndexOutOfBoundsException("y(" + y10 + ") needs to be >= 0 and < height(" + this.f79695k + ")");
        }
    }

    private void callLostOGLContext(long pointer) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalLostOGLContext(pointer);
        } else {
            nativeLostOGLContext(pointer);
        }
    }

    private long callTryCreate() {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalTryCreate() : nativeTryCreate();
    }

    public static void deleteBuffer(long pointer) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalDeleteBuffer(pointer);
        } else {
            nativeDeleteBuffer(pointer);
        }
    }

    public static native long nativeAllocBuffer(long pointer, int widht, int height, boolean allowModifications);

    @CriticalNative
    public static native long nativeCriticalAllocBuffer(long pointer, int widht, int height, boolean allowModifications);

    @CriticalNative
    private static native void nativeCriticalDeleteBuffer(long pointer);

    @CriticalNative
    private static native int nativeCriticalGetHeight(long pointer);

    @CriticalNative
    private static native char nativeCriticalGetPixelB(long pointer, int x10, int y10);

    @CriticalNative
    private static native char nativeCriticalGetPixelG(long pointer, int x10, int y10);

    @CriticalNative
    private static native char nativeCriticalGetPixelR(long pointer, int x10, int y10);

    @CriticalNative
    private static native int nativeCriticalGetWidth(long pointer);

    @CriticalNative
    private static native float nativeCriticalLostOGLContext(long pointer);

    @CriticalNative
    private static native void nativeCriticalSetPixelB(long pointer, int x10, int y10, char value);

    @CriticalNative
    private static native void nativeCriticalSetPixelG(long pointer, int x10, int y10, char value);

    @CriticalNative
    private static native void nativeCriticalSetPixelR(long pointer, int x10, int y10, char value);

    @CriticalNative
    private static native void nativeCriticalSetPixelRGB(long pointer, int x10, int y10, char r10, char g10, char b10);

    @CriticalNative
    public static native long nativeCriticalTryCreate();

    private static native void nativeDeleteBuffer(long pointer);

    private static native int nativeGetHeight(long pointer);

    private static native char nativeGetPixelB(long pointer, int x10, int y10);

    private static native char nativeGetPixelG(long pointer, int x10, int y10);

    private static native char nativeGetPixelR(long pointer, int x10, int y10);

    private static native long nativeGetPixelsPointer(long pointer);

    private static native int nativeGetWidth(long pointer);

    public static native boolean nativeLoadExternalFile(long pointer, boolean allowModifications, String path);

    private static native float nativeLostOGLContext(long pointer);

    private static native void nativeOnUploadFinished(long pointer);

    private static native void nativeSetPixelB(long pointer, int x10, int y10, char value);

    private static native void nativeSetPixelG(long pointer, int x10, int y10, char value);

    private static native void nativeSetPixelR(long pointer, int x10, int y10, char value);

    private static native void nativeSetPixelRGB(long pointer, int x10, int y10, char r10, char g10, char b10);

    public static native long nativeTryCreate();

    public Runnable q0(Runnable post) {
        return new b(post);
    }

    private long r0(long pointer, int width, int height, boolean allowModifications) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalAllocBuffer(pointer, width, height, allowModifications) : nativeAllocBuffer(pointer, width, height, allowModifications);
    }

    private int s0(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetHeight(pointer) : nativeGetHeight(pointer);
    }

    private char v0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelR(pointer, x10, y10) : nativeGetPixelR(pointer, x10, y10);
    }

    private boolean validateAndThrow() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    public long w0(long pointer) {
        return nativeGetPixelsPointer(pointer);
    }

    private int x0(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetWidth(pointer) : nativeGetWidth(pointer);
    }

    private boolean y0(long pointer, boolean allowModifications, String path) {
        return nativeLoadExternalFile(pointer, allowModifications, path);
    }

    public void z0(long pointer) {
        nativeOnUploadFinished(pointer);
    }

    @Override
    public boolean A() {
        if (isGarbage() || this.f79700p == null) {
            return false;
        }
        return this.f79698n;
    }

    @Override
    public boolean B() {
        return this.f79697m;
    }

    public final void B0(long pointer, int x10, int y10, char r10, char g10, char b10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelRGB(pointer, x10, y10, r10, g10, b10);
        } else {
            nativeSetPixelRGB(pointer, x10, y10, r10, g10, b10);
        }
    }

    public final void C0(long pointer, int x10, int y10, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelB(pointer, x10, y10, value);
        } else {
            nativeSetPixelB(pointer, x10, y10, value);
        }
    }

    @Override
    public void D(int x10, int y10, float r10, float g10, float b10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                B0(this.f79696l, x10, y10, (char) (Nc.b.I(r10) * 255.0f), (char) (Nc.b.I(g10) * 255.0f), (char) (Nc.b.I(b10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void D0(long pointer, int x10, int y10, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelG(pointer, x10, y10, value);
        } else {
            nativeSetPixelG(pointer, x10, y10, value);
        }
    }

    @Override
    public void E(int x10, int y10, float r10, float g10, float b10, float a10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                B0(this.f79696l, x10, y10, (char) (Nc.b.I(r10) * 255.0f), (char) (Nc.b.I(g10) * 255.0f), (char) (Nc.b.I(b10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void F(int x10, int y10, int r10, int g10, int b10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                B0(this.f79696l, x10, y10, (char) Nc.b.F(0, r10, 255), (char) Nc.b.F(0, g10, 255), (char) Nc.b.F(0, b10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final boolean F0() {
        if (Texture.A(Qb.a.f(), this.f79701q.f79790f)) {
            return true;
        }
        this.f79701q.a();
        this.f79701q = null;
        String str = this.f79702r;
        this.f79702r = null;
        if (str == null || str.isEmpty()) {
            throw new UnsupportedTextureOperation("ASTC is not supported by the current backend and no uncompressed fallback is available");
        }
        if (y0(this.f79696l, this.f79697m, str)) {
            this.f79694j = x0(this.f79696l);
            this.f79695k = s0(this.f79696l);
            return false;
        }
        throw new FailedToLoadTexture("ASTC is not supported by the current backend and the fallback texture failed to load (" + str + ")");
    }

    @Override
    public void G(int x10, int y10, int r10, int g10, int b10, int a10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                B0(this.f79696l, x10, y10, (char) Nc.b.F(0, r10, 255), (char) Nc.b.F(0, g10, 255), (char) Nc.b.F(0, b10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void G0(ASTCTextureData.a data) {
        ASTCTextureData.b[] bVarArr;
        if (data == null) {
            throw new UnsupportedTextureOperation("ASTC texture data is not loaded");
        }
        if (!Texture.A(Qb.a.f(), data.f79790f)) {
            throw new UnsupportedTextureOperation("ASTC internal format is not supported by the current backend");
        }
        int i10 = 0;
        if (data.f79788d && (bVarArr = data.f79791g) != null && bVarArr.length > 1) {
            i10 = Math.max(0, data.f79787c - 1);
        }
        int i11 = i10;
        FilamentTexture filamentTexture = this.f79700p;
        if (filamentTexture == null) {
            this.f79700p = new FilamentTexture(this.f79694j, this.f79695k, Texture.e.RGBA, Texture.k.COMPRESSED, data.f79790f, new Texture.a().d(data.f79790f), FilamentTexture.j(this.f79699o), i11, 8, Texture.i.SAMPLER_2D, 1, false);
        } else {
            filamentTexture.M(FilamentTexture.j(this.f79699o));
        }
    }

    @Override
    public void H(int x10, int y10, ColorINT color) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                B0(this.f79696l, x10, y10, (char) (color.w() * 255.0f), (char) (color.u() * 255.0f), (char) (color.s() * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void K(int x10, int y10, float v10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                C0(this.f79696l, x10, y10, (char) (Nc.b.I(v10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void L(int x10, int y10, int v10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                C0(this.f79696l, x10, y10, (char) Nc.b.F(0, v10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void M(int x10, int y10, float v10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                D0(this.f79696l, x10, y10, (char) (Nc.b.I(v10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void N(int x10, int y10, int v10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                D0(this.f79696l, x10, y10, (char) Nc.b.F(0, v10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void O(boolean enabled) {
        K8.a.G();
        TextureConfig textureConfig = this.f79699o;
        boolean z10 = textureConfig.genMipmaps != enabled;
        textureConfig.genMipmaps = enabled;
        FilamentTexture filamentTexture = this.f79700p;
        if (filamentTexture == null || !z10) {
            return;
        }
        filamentTexture.M(FilamentTexture.j(textureConfig));
    }

    public void O0(NativeByteBuffer buf, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f79698n && !this.f79697m) {
            throw new UnsupportedTextureOperation("Can not reapply a texture without allow modifications flag");
        }
        FilamentTexture filamentTexture = this.f79700p;
        if (filamentTexture == null) {
            this.f79700p = new FilamentTexture(this.f79694j, this.f79695k, Texture.e.RGB, Texture.k.UBYTE, new Texture.a().d(this.f79699o.gammaCorrection ? Texture.f.SRGB8 : Texture.f.RGB8), FilamentTexture.j(this.f79699o), this.f79699o.j(), 8);
        } else {
            filamentTexture.M(FilamentTexture.j(this.f79699o));
        }
        if (post != null) {
            this.f79700p.u(buf, new a(post));
        } else {
            this.f79700p.s(buf);
            this.f79698n = true;
        }
    }

    @Override
    public void P(int x10, int y10, float v10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                E0(this.f79696l, x10, y10, (char) (Nc.b.I(v10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void P0(ASTCTextureData.a data, Runnable post) {
        G0(data);
        ASTCTextureData.b[] bVarArr = data.f79791g;
        if (bVarArr == null || bVarArr.length == 0) {
            throw new UnsupportedTextureOperation("ASTC mip data is missing");
        }
        int i10 = 0;
        boolean z10 = data.f79788d && bVarArr.length > 1;
        Runnable p02 = p0(post, new AtomicInteger(z10 ? data.f79791g.length : 1));
        if (!z10) {
            this.f79700p.n(0, data.f79792h, r0.f79795c, data.f79789e, data.f79791g[0].f79796d, p02);
            return;
        }
        while (true) {
            ASTCTextureData.b[] bVarArr2 = data.f79791g;
            if (i10 >= bVarArr2.length) {
                return;
            }
            this.f79700p.n(i10, data.f79792h, r0.f79795c, data.f79789e, bVarArr2[i10].f79796d, p02);
            i10++;
        }
    }

    @Override
    public void Q(int x10, int y10, int v10) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                E0(this.f79696l, x10, y10, (char) Nc.b.F(0, v10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void S(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        if (!A()) {
            throw new RuntimeException("Texture is not renderable yet.");
        }
        this.extractingRT = new FilamentRenderTarget(new RenderTarget.b().f(RenderTarget.a.COLOR, this.f79700p.C()), this.f79700p, (FilamentTexture) null);
        ByteBuffer order = ByteBuffer.allocateDirect(w10 * h10 * 4).order(ByteOrder.nativeOrder());
        this.rgba = order;
        Texture.g gVar = new Texture.g(order, Texture.e.RGBA, Texture.k.UBYTE, 1);
        this.pbd = gVar;
        gVar.b(Qb.e.a(), new e(w10, h10, extractCallback));
        Qb.a.g().n(this.extractingRT.f(), ofx, ofy, w10, h10, this.pbd);
    }

    @Override
    public int bytesPerItem() {
        return 3;
    }

    public void destroy() {
        setGarbage();
    }

    @Override
    public void destroyImmediate() {
        if (isGarbage()) {
            throw new RuntimeException("Double destroy");
        }
        setGarbage();
        setGarbage();
        FilamentTexture filamentTexture = this.f79700p;
        if (filamentTexture != null) {
            try {
                filamentTexture.destroyImmediate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f79700p = null;
        }
        ASTCTextureData.a aVar = this.f79701q;
        if (aVar != null) {
            aVar.a();
            this.f79701q = null;
        }
    }

    @Override
    public boolean e(Runnable post) {
        K8.a.I(new d(post));
        return true;
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (isGarbage()) {
            throw new RuntimeException("Texture was deleted from memory");
        }
        FilamentTexture filamentTexture = this.f79700p;
        m10.q(attributeName, filamentTexture, filamentTexture.B());
    }

    @Override
    public int getHeight() {
        return this.f79695k;
    }

    @Override
    public long getPointerCritical() {
        return this.f79696l;
    }

    @Override
    public int getWidth() {
        return this.f79694j;
    }

    @Override
    public void h(File file, int quality, a.EnumC1369a exportFormat) {
        boolean z10;
        Thread.requestOpenglEngineThread();
        try {
            if (B()) {
                z10 = false;
            } else {
                if (!this.f79698n) {
                    throw new UnsupportedTextureOperation("Texture is not writable and and theres no GPU data to be exported");
                }
                z10 = true;
            }
            int width = getWidth();
            int height = getHeight();
            ColorINT colorINT = new ColorINT();
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            if (!z10) {
                for (int i10 = 0; i10 < width; i10++) {
                    for (int i11 = 0; i11 < height; i11++) {
                        j(i10, i11, colorINT);
                        createBitmap.setPixel(i10, i11, colorINT.intColor);
                    }
                }
            } else if (z10) {
                throw new UnsupportedTextureOperation("GPU data extraction is not available yet, its a comming update, now, you will need to use writable textures");
            }
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            int i12 = f.f79721a[exportFormat.ordinal()];
            if (i12 == 1) {
                createBitmap.compress(Bitmap.CompressFormat.PNG, quality, fileOutputStream);
                createBitmap.recycle();
            } else {
                if (i12 != 2) {
                    return;
                }
                createBitmap.compress(Bitmap.CompressFormat.JPEG, quality, fileOutputStream);
                createBitmap.recycle();
            }
        } catch (FileNotFoundException e10) {
            throw new RuntimeException(e10);
        } catch (IOException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override
    public ColorINT i(int x10, int y10) {
        N0();
        return j(x10, y10, new ColorINT());
    }

    @Override
    public boolean isNative() {
        return true;
    }

    @Override
    public ColorINT j(int x10, int y10, ColorINT out) {
        N0();
        if (validateAndThrow()) {
            Q0(x10, y10);
            try {
                out.Y(255, v0(this.f79696l, x10, y10), u0(this.f79696l, x10, y10), t0(this.f79696l, x10, y10));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
        return out;
    }

    @Override
    public FilamentTexture k() {
        return this.f79700p;
    }

    @Override
    public void lostOGLContext() {
        try {
            callLostOGLContext(this.f79696l);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public float m(int x10, int y10) {
        N0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        Q0(x10, y10);
        try {
            return t0(this.f79696l, x10, y10) / 255.0f;
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public float n(int x10, int y10) {
        N0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        Q0(x10, y10);
        try {
            return u0(this.f79696l, x10, y10) / 255.0f;
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public long nativeUsedBytes() {
        ASTCTextureData.a aVar = this.f79701q;
        if (aVar != null) {
            NativeByteBuffer nativeByteBuffer = aVar.f79792h;
            if (nativeByteBuffer == null) {
                return 0L;
            }
            return nativeByteBuffer.nativeUsedBytes();
        }
        if (isGarbage() || (!this.f79697m && this.f79698n)) {
            return 0L;
        }
        return (getWidth() * getHeight() * bytesPerItem()) + 25;
    }

    @Override
    public float o(int x10, int y10) {
        N0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        Q0(x10, y10);
        try {
            return v0(this.f79696l, x10, y10) / 255.0f;
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public long p() {
        FilamentTexture filamentTexture = this.f79700p;
        if (filamentTexture == null || !filamentTexture.D()) {
            return 0L;
        }
        return this.f79700p.A();
    }

    public final Runnable p0(Runnable post, AtomicInteger remainingUploads) {
        return new c(remainingUploads, post);
    }

    @Override
    public int r(int x10, int y10) {
        N0();
        if (!validateAndThrow()) {
            return 0;
        }
        Q0(x10, y10);
        try {
            return t0(this.f79696l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override
    public int s(int x10, int y10) {
        N0();
        if (!validateAndThrow()) {
            return 0;
        }
        Q0(x10, y10);
        try {
            return u0(this.f79696l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override
    public void setDeleted() {
        this.f79696l = 0L;
        super.setDeleted();
    }

    public final char t0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelB(pointer, x10, y10) : nativeGetPixelB(pointer, x10, y10);
    }

    @Override
    public int u(int x10, int y10) {
        N0();
        if (!validateAndThrow()) {
            return 0;
        }
        Q0(x10, y10);
        try {
            return v0(this.f79696l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public final char u0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelG(pointer, x10, y10) : nativeGetPixelG(pointer, x10, y10);
    }

    @Override
    public TextureConfig.d v() {
        return TextureConfig.d.RGBA8;
    }

    @Override
    public long w() {
        return this.f79696l;
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public boolean y() {
        return true;
    }

    @Override
    public boolean z() {
        return this.f79699o.genMipmaps;
    }

    public NativeTextureRGB8(int width, int height, boolean allowModifications) {
        this(width, height, allowModifications, null);
    }

    public NativeTextureRGB8(int width, int height, TextureConfig config) {
        this(width, height, config != null && config.allowModifications, config);
    }

    public NativeTextureRGB8(int width, int height, boolean allowModifications, TextureConfig textureConfig) {
        if (width > 0 && height > 0) {
            this.f79694j = width;
            this.f79695k = height;
            this.f79697m = allowModifications;
            if (textureConfig == null) {
                TextureConfig textureConfig2 = new TextureConfig();
                this.f79699o = textureConfig2;
                textureConfig2.allowModifications = allowModifications;
            } else {
                this.f79699o = textureConfig;
            }
            long callTryCreate = callTryCreate();
            this.f79696l = callTryCreate;
            r0(callTryCreate, width, height, allowModifications);
            SGC.put(this, this.f79696l, f79692s, true);
            return;
        }
        throw new IllegalArgumentException("Width and height can't be <= 0");
    }

    public NativeTextureRGB8(Context context, b.d state, TextureConfig textureConfig) {
        String str;
        if (textureConfig == null) {
            this.f79699o = new TextureConfig();
        } else {
            this.f79699o = textureConfig;
        }
        boolean z10 = this.f79699o.allowModifications;
        this.f79697m = z10;
        this.f79696l = callTryCreate();
        if (state.f79822c) {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.a.a(state);
        }
        if (!state.f79822c && !z10 && (str = state.f79821b) != null && !str.isEmpty()) {
            ASTCTextureData.a d10 = ASTCTextureData.d(new File(state.f79821b), this.f79699o);
            this.f79701q = d10;
            if (d10 != null) {
                this.f79694j = d10.f79785a;
                this.f79695k = d10.f79786b;
                this.f79702r = state.f79820a;
                SGC.put(this, this.f79696l, f79692s, true);
                return;
            }
            throw new RuntimeException("Failed to decode ASTC from file:" + state.f79821b);
        }
        if (!state.f79822c) {
            if (y0(this.f79696l, z10, state.f79820a)) {
                this.f79694j = x0(this.f79696l);
                this.f79695k = s0(this.f79696l);
                SGC.put(this, this.f79696l, f79692s, true);
                return;
            } else {
                throw new FailedToLoadTexture("Failed to load texture on c++ (" + state.f79820a + ")");
            }
        }
        throw new RuntimeException("loading assets is not implemented yet!");
    }

    public NativeTextureRGB8(TextureConfig textureConfig) {
        if (textureConfig == null) {
            this.f79699o = new TextureConfig();
        } else {
            this.f79699o = textureConfig;
        }
        this.f79697m = this.f79699o.allowModifications;
        long callTryCreate = callTryCreate();
        this.f79696l = callTryCreate;
        SGC.put(this, callTryCreate, f79692s, true);
    }
}
