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
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGBA8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.ASTCTextureData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.FailedToLoadTexture;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureNeedsImport;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureOutOfBoundingException;
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

public class NativeTextureRGBA8 extends com.itsmagic.engine.Engines.Engine.Texture.Data.a {

    public static final M9.c f79722t = new M9.c() {
        @Override
        public final void a(long j10) {
            NativeTextureRGBA8.deleteBuffer(j10);
        }
    };

    public static final int f79723u = 4;

    @Keep
    private FilamentRenderTarget extractingRT;

    public int f79724j;

    public int f79725k;

    @Keep
    private FilamentTexture keepAliveExtractionTexture;

    public long f79726l;

    public final boolean f79727m;

    public boolean f79728n;

    public final TextureConfig f79729o;

    public boolean f79730p;

    @Keep
    private Texture.g pbd;

    public FilamentTexture f79731q;

    public ASTCTextureData.a f79732r;

    @Keep
    private ByteBuffer rgba;

    public String f79733s;

    public class a implements Runnable {

        public final Runnable f79734b;

        public class RunnableC1367a implements Runnable {
            public RunnableC1367a() {
            }

            @Override
            public void run() {
                Runnable runnable = a.this.f79734b;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public a(final Runnable val$post) {
            this.f79734b = val$post;
        }

        @Override
        public void run() {
            NativeTextureRGBA8.this.f79728n = true;
            K8.a.I(new RunnableC1367a());
        }
    }

    public class b implements Runnable {

        public final Runnable f79737b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                Runnable runnable = b.this.f79737b;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public b(final Runnable val$post) {
            this.f79737b = val$post;
        }

        @Override
        public void run() {
            NativeTextureRGBA8 nativeTextureRGBA8 = NativeTextureRGBA8.this;
            nativeTextureRGBA8.F0(nativeTextureRGBA8.f79726l);
            NativeTextureRGBA8 nativeTextureRGBA82 = NativeTextureRGBA8.this;
            nativeTextureRGBA82.f79730p = nativeTextureRGBA82.D0(nativeTextureRGBA82.f79726l);
            NativeTextureRGBA8.this.f79728n = true;
            K8.a.I(new a());
        }
    }

    public class c implements Runnable {

        public final AtomicInteger f79740b;

        public final Runnable f79741c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                Runnable runnable = c.this.f79741c;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public c(final AtomicInteger val$remainingUploads, final Runnable val$post) {
            this.f79740b = val$remainingUploads;
            this.f79741c = val$post;
        }

        @Override
        public void run() {
            if (this.f79740b.decrementAndGet() > 0) {
                return;
            }
            if (NativeTextureRGBA8.this.f79732r != null) {
                NativeTextureRGBA8.this.f79732r.a();
            }
            NativeTextureRGBA8.this.f79728n = true;
            K8.a.I(new a());
        }
    }

    public class d implements Runnable {

        public final Runnable f79744b;

        public d(final Runnable val$post) {
            this.f79744b = val$post;
        }

        @Override
        public void run() {
            Qb.a.d();
            K8.a.G();
            if (NativeTextureRGBA8.this.f79728n && !NativeTextureRGBA8.this.f79727m) {
                throw new UnsupportedTextureOperation("Can not reapply a texture without allow modifications flag");
            }
            if (NativeTextureRGBA8.this.f79732r != null) {
                if (NativeTextureRGBA8.this.f79732r.f79792h == null) {
                    throw new UnsupportedTextureOperation("ASTC upload buffer is no longer available");
                }
                if (NativeTextureRGBA8.this.N0()) {
                    NativeTextureRGBA8 nativeTextureRGBA8 = NativeTextureRGBA8.this;
                    nativeTextureRGBA8.a1(nativeTextureRGBA8.f79732r, this.f79744b);
                    return;
                }
            }
            NativeTextureRGBA8 nativeTextureRGBA82 = NativeTextureRGBA8.this;
            long B02 = nativeTextureRGBA82.B0(nativeTextureRGBA82.f79726l);
            if (B02 == 0) {
                throw new UnsupportedTextureOperation("apply failed");
            }
            NativeTextureRGBA8 nativeTextureRGBA83 = NativeTextureRGBA8.this;
            nativeTextureRGBA83.P0(nativeTextureRGBA83.f79729o.j());
            NativeTextureRGBA8.this.f79731q.r(B02, NativeTextureRGBA8.this.f79724j * NativeTextureRGBA8.this.f79725k * 4, NativeTextureRGBA8.this.t0(this.f79744b));
        }
    }

    public class e implements Runnable {

        public final int f79746b;

        public final int f79747c;

        public final a.b f79748d;

        public class a implements Runnable {

            public class RunnableC1368a implements Runnable {
                public RunnableC1368a() {
                }

                @Override
                public void run() {
                    NativeTextureRGBA8.this.extractingRT.destroyImmediate();
                    NativeTextureRGBA8.this.extractingRT = null;
                    NativeTextureRGBA8.this.keepAliveExtractionTexture = null;
                    NativeTextureRGBA8.this.pbd = null;
                    NativeTextureRGBA8.this.rgba = null;
                }
            }

            public a() {
            }

            @Override
            public void run() {
                try {
                    NativeTextureRGBA8.this.rgba.rewind();
                    e eVar = e.this;
                    int[] iArr = new int[eVar.f79746b * eVar.f79747c];
                    int i10 = 0;
                    while (true) {
                        e eVar2 = e.this;
                        int i11 = eVar2.f79746b;
                        int i12 = eVar2.f79747c;
                        if (i10 >= i11 * i12) {
                            Bitmap createBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
                            e eVar3 = e.this;
                            int i13 = eVar3.f79746b;
                            createBitmap.setPixels(iArr, 0, i13, 0, 0, i13, eVar3.f79747c);
                            e.this.f79748d.on(createBitmap);
                            K8.a.I(new RunnableC1368a());
                            return;
                        }
                        int i14 = NativeTextureRGBA8.this.rgba.get() & 255;
                        int i15 = NativeTextureRGBA8.this.rgba.get() & 255;
                        iArr[i10] = (i14 << 16) | ((NativeTextureRGBA8.this.rgba.get() & 255) << 24) | (i15 << 8) | (NativeTextureRGBA8.this.rgba.get() & 255);
                        i10++;
                    }
                } catch (Throwable th2) {
                    K8.a.I(new RunnableC1368a());
                    throw th2;
                }
            }
        }

        public e(final int val$w, final int val$h, final a.b val$extractCallback) {
            this.f79746b = val$w;
            this.f79747c = val$h;
            this.f79748d = val$extractCallback;
        }

        @Override
        public void run() {
            O9.b.d(new a());
        }
    }

    public static class f {

        public static final int[] f79752a;

        static {
            int[] iArr = new int[a.EnumC1369a.values().length];
            f79752a = iArr;
            try {
                iArr[a.EnumC1369a.PNG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79752a[a.EnumC1369a.JPG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        System.loadLibrary("native-texture-rgba8");
    }

    public NativeTextureRGBA8(int width, int height) {
        this(width, height, (TextureConfig) null);
    }

    public long B0(long pointer) {
        return nativeGetPixelsPointer(pointer);
    }

    private int C0(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetWidth(pointer) : nativeGetWidth(pointer);
    }

    private boolean E0(long pointer, boolean allowModifications, String path) {
        return nativeLoadExternalFile(pointer, allowModifications, path);
    }

    public void F0(long pointer) {
        nativeOnUploadFinished(pointer);
    }

    private void G0(com.itsmagic.engine.Engines.Engine.Texture.Data.a other, int startX, int startY, int width, int height) {
        if (isNative() && other.isNative() && other.y() && other.w() >= 0) {
            if (!(com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalPaint(this.f79726l, other.w(), startX, startY, width, height) : nativePaint(this.f79726l, other.w(), startX, startY, width, height))) {
                throw new RuntimeException("Native paint failed!");
            }
            return;
        }
        int width2 = other.getWidth();
        int height2 = other.getHeight();
        int i10 = width + startX;
        int i11 = height + startY;
        ColorINT colorINT = new ColorINT();
        for (int i12 = startX; i12 < i10; i12++) {
            for (int i13 = 0; i13 < i11; i13++) {
                other.j((int) (((i12 - startX) / (width - 1)) * (width2 - 1)), (int) (((i13 - startY) / (height - 1)) * (height2 - 1)), colorINT);
                H(i12, i13, colorINT);
            }
        }
    }

    private void H0(long pointer, int x10, int y10, char r10, char g10, char b10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelRGB(pointer, x10, y10, r10, g10, b10);
        } else {
            nativeSetPixelRGB(pointer, x10, y10, r10, g10, b10);
        }
    }

    private void K0(long pointer, int x10, int y10, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelB(pointer, x10, y10, value);
        } else {
            nativeSetPixelB(pointer, x10, y10, value);
        }
    }

    private void L0(long pointer, int x10, int y10, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelG(pointer, x10, y10, value);
        } else {
            nativeSetPixelG(pointer, x10, y10, value);
        }
    }

    private void M0(long pointer, int x10, int y10, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelR(pointer, x10, y10, value);
        } else {
            nativeSetPixelR(pointer, x10, y10, value);
        }
    }

    public boolean N0() {
        if (Texture.A(Qb.a.f(), this.f79732r.f79790f)) {
            return true;
        }
        this.f79732r.a();
        this.f79732r = null;
        String str = this.f79733s;
        this.f79733s = null;
        if (str == null || str.isEmpty()) {
            throw new UnsupportedTextureOperation("ASTC is not supported by the current backend and no uncompressed fallback is available");
        }
        if (E0(this.f79726l, this.f79727m, str)) {
            this.f79730p = D0(this.f79726l);
            this.f79724j = C0(this.f79726l);
            this.f79725k = v0(this.f79726l);
            return false;
        }
        throw new FailedToLoadTexture("ASTC is not supported by the current backend and the fallback texture failed to load (" + str + ")");
    }

    private void O0(ASTCTextureData.a data) {
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
        FilamentTexture filamentTexture = this.f79731q;
        if (filamentTexture == null) {
            this.f79731q = new FilamentTexture(this.f79724j, this.f79725k, Texture.e.RGBA, Texture.k.COMPRESSED, data.f79790f, new Texture.a().d(data.f79790f), FilamentTexture.j(this.f79729o), i11, 8, Texture.i.SAMPLER_2D, 1, false);
        } else {
            filamentTexture.M(FilamentTexture.j(this.f79729o));
        }
    }

    public void P0(int levels) {
        FilamentTexture filamentTexture = this.f79731q;
        if (filamentTexture != null) {
            filamentTexture.M(FilamentTexture.j(this.f79729o));
        } else {
            this.f79731q = new FilamentTexture(this.f79724j, this.f79725k, Texture.e.RGBA, Texture.k.UBYTE, new Texture.a().d(this.f79729o.gammaCorrection ? Texture.f.SRGB8_A8 : Texture.f.RGBA8), FilamentTexture.j(this.f79729o), levels, 8);
        }
    }

    public static NativeTextureRGBA8 U0(Context context, String path, boolean applyOGL, TextureConfig config, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        if (config == null) {
            config = new TextureConfig();
        }
        b.d dVar = new b.d();
        try {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(context, path, dVar);
            NativeTextureRGBA8 nativeTextureRGBA8 = new NativeTextureRGBA8(context, dVar, config);
            if (applyOGL) {
                nativeTextureRGBA8.e(post);
            }
            return nativeTextureRGBA8;
        } catch (TextureNeedsImport unused) {
            NativeTextureRGBA8 nativeTextureRGBA82 = new NativeTextureRGBA8(config);
            if (!C2633l.b(path, ".ivo")) {
                com.itsmagic.engine.Engines.Engine.Texture.Utils.b.g(context, dVar, new b.C1370b().a(b.c.ONLY_TEXTURE).b(false));
                C4153a.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + path), com.itsmagic.engine.Core.Components.ProjectController.a.T());
                nativeTextureRGBA82.X0(dVar);
            }
            if (applyOGL) {
                nativeTextureRGBA82.e(post);
            }
            return nativeTextureRGBA82;
        }
    }

    @Deprecated
    public static NativeTextureRGBA8 V0(Context context, String path, boolean applyOGL, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        b.d dVar = new b.d();
        com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(context, path, dVar);
        TextureConfig q10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.q(path, context, false);
        if (q10 == null) {
            q10 = new TextureConfig();
        }
        NativeTextureRGBA8 nativeTextureRGBA8 = new NativeTextureRGBA8(context, dVar, q10);
        if (applyOGL) {
            nativeTextureRGBA8.e(post);
        }
        return nativeTextureRGBA8;
    }

    public static NativeTextureRGBA8 W0(Context context, String path, boolean applyOGL, TextureConfig config, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        b.d dVar = new b.d();
        try {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.o(context, path, dVar, true);
            if (config == null) {
                config = new TextureConfig();
            }
            NativeTextureRGBA8 nativeTextureRGBA8 = new NativeTextureRGBA8(context, dVar, config);
            if (applyOGL) {
                nativeTextureRGBA8.e(post);
            }
            return nativeTextureRGBA8;
        } catch (TextureNeedsImport unused) {
            return null;
        }
    }

    private void X0(b.d state) {
        String str;
        if (state.f79822c) {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.a.a(state);
        }
        if (state.f79822c || this.f79727m || (str = state.f79821b) == null || str.isEmpty()) {
            if (state.f79822c) {
                throw new RuntimeException("loading assets is not implemented yet!");
            }
            if (E0(this.f79726l, this.f79727m, state.f79820a)) {
                this.f79730p = D0(this.f79726l);
                this.f79724j = C0(this.f79726l);
                this.f79725k = v0(this.f79726l);
                return;
            } else {
                throw new FailedToLoadTexture("Failed to load texture on c++ (" + state.f79820a + ")");
            }
        }
        ASTCTextureData.a d10 = ASTCTextureData.d(new File(state.f79821b), this.f79729o);
        this.f79732r = d10;
        if (d10 == null) {
            throw new RuntimeException("Failed to decode ASTC from file:" + state.f79821b);
        }
        this.f79724j = d10.f79785a;
        this.f79725k = d10.f79786b;
        this.f79730p = true;
        this.f79733s = state.f79820a;
    }

    private void Y0() {
        if (!this.f79727m) {
            throw new RuntimeException("Immutable texture, if you want to modify the pixels in real time, go to the texture settings and activate the \"modifiable\" option (if texture was loaded from a file)");
        }
    }

    public void a1(ASTCTextureData.a data, Runnable post) {
        O0(data);
        ASTCTextureData.b[] bVarArr = data.f79791g;
        if (bVarArr == null || bVarArr.length == 0) {
            throw new UnsupportedTextureOperation("ASTC mip data is missing");
        }
        int i10 = 0;
        boolean z10 = data.f79788d && bVarArr.length > 1;
        Runnable s02 = s0(post, new AtomicInteger(z10 ? data.f79791g.length : 1));
        if (!z10) {
            this.f79731q.n(0, data.f79792h, r0.f79795c, data.f79789e, data.f79791g[0].f79796d, s02);
            return;
        }
        while (true) {
            ASTCTextureData.b[] bVarArr2 = data.f79791g;
            if (i10 >= bVarArr2.length) {
                return;
            }
            this.f79731q.n(i10, data.f79792h, r0.f79795c, data.f79789e, bVarArr2[i10].f79796d, s02);
            i10++;
        }
    }

    private void b1(int x10, int y10) {
        if (x10 < 0 || x10 >= this.f79724j) {
            throw new IndexOutOfBoundsException("x(" + x10 + ") needs to be >= 0 and < width(" + this.f79724j + ")");
        }
        if (y10 < 0 || y10 >= this.f79725k) {
            throw new IndexOutOfBoundsException("y(" + y10 + ") needs to be >= 0 and < height(" + this.f79725k + ")");
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
    private static native char nativeCriticalGetPixelA(long pointer, int x10, int y10);

    @CriticalNative
    private static native char nativeCriticalGetPixelB(long pointer, int x10, int y10);

    @CriticalNative
    private static native char nativeCriticalGetPixelG(long pointer, int x10, int y10);

    @CriticalNative
    private static native char nativeCriticalGetPixelR(long pointer, int x10, int y10);

    @CriticalNative
    private static native int nativeCriticalGetWidth(long pointer);

    @CriticalNative
    private static native int nativeCriticalIsAlphaUsed(long pointer);

    @CriticalNative
    private static native float nativeCriticalLostOGLContext(long pointer);

    @CriticalNative
    private static native boolean nativeCriticalPaint(long pointer, long otherPointer, int startX, int startY, int width, int height);

    @CriticalNative
    private static native void nativeCriticalSetPixelA(long pointer, int x10, int y10, char value);

    @CriticalNative
    private static native void nativeCriticalSetPixelB(long pointer, int x10, int y10, char value);

    @CriticalNative
    private static native void nativeCriticalSetPixelG(long pointer, int x10, int y10, char value);

    @CriticalNative
    private static native void nativeCriticalSetPixelR(long pointer, int x10, int y10, char value);

    @CriticalNative
    private static native void nativeCriticalSetPixelRGB(long pointer, int x10, int y10, char r10, char g10, char b10);

    @CriticalNative
    private static native void nativeCriticalSetPixelRGBA(long pointer, int x10, int y10, char r10, char g10, char b10, char a10);

    @CriticalNative
    public static native long nativeCriticalTryCreate();

    private static native void nativeDeleteBuffer(long pointer);

    private static native int nativeGetHeight(long pointer);

    private static native char nativeGetPixelA(long pointer, int x10, int y10);

    private static native char nativeGetPixelB(long pointer, int x10, int y10);

    private static native char nativeGetPixelG(long pointer, int x10, int y10);

    private static native char nativeGetPixelR(long pointer, int x10, int y10);

    private static native long nativeGetPixelsPointer(long pointer);

    private static native int nativeGetWidth(long pointer);

    private static native int nativeIsAlphaUsed(long pointer);

    public static native boolean nativeLoadExternalFile(long pointer, boolean allowModifications, String path);

    private static native float nativeLostOGLContext(long pointer);

    private static native void nativeOnUploadFinished(long pointer);

    private static native boolean nativePaint(long pointer, long otherPointer, int startX, int startY, int width, int height);

    private static native void nativeSetPixelA(long pointer, int x10, int y10, char value);

    private static native void nativeSetPixelB(long pointer, int x10, int y10, char value);

    private static native void nativeSetPixelG(long pointer, int x10, int y10, char value);

    private static native void nativeSetPixelR(long pointer, int x10, int y10, char value);

    private static native void nativeSetPixelRGB(long pointer, int x10, int y10, char r10, char g10, char b10);

    private static native void nativeSetPixelRGBA(long pointer, int x10, int y10, char r10, char g10, char b10, char a10);

    public static native long nativeTryCreate();

    private Runnable s0(Runnable post, AtomicInteger remainingUploads) {
        return new c(remainingUploads, post);
    }

    public Runnable t0(Runnable post) {
        return new b(post);
    }

    private long u0(long pointer, int width, int height, boolean allowModifications) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalAllocBuffer(pointer, width, height, allowModifications) : nativeAllocBuffer(pointer, width, height, allowModifications);
    }

    private int v0(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetHeight(pointer) : nativeGetHeight(pointer);
    }

    private boolean validateAndThrow() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    private char x0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelB(pointer, x10, y10) : nativeGetPixelB(pointer, x10, y10);
    }

    private char y0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelG(pointer, x10, y10) : nativeGetPixelG(pointer, x10, y10);
    }

    private char z0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelR(pointer, x10, y10) : nativeGetPixelR(pointer, x10, y10);
    }

    @Override
    public boolean A() {
        if (isGarbage() || this.f79731q == null) {
            return false;
        }
        return this.f79728n;
    }

    @Override
    public boolean B() {
        return this.f79727m;
    }

    @Override
    public void C(com.itsmagic.engine.Engines.Engine.Texture.Data.a nativeTexture, int startX, int startY, int width, int height) {
        int i10 = width + startX;
        if (i10 > getWidth()) {
            throw new TextureOutOfBoundingException("width + startX (" + i10 + ") can't be > this.width (" + getWidth() + ")");
        }
        int i11 = height + startY;
        if (i11 > getHeight()) {
            throw new TextureOutOfBoundingException("height + startY (" + i11 + ") can't be > this.height (" + getHeight() + ")");
        }
        if (startX < 0) {
            throw new TextureOutOfBoundingException("startX can't be < 0");
        }
        if (startY < 0) {
            throw new TextureOutOfBoundingException("startX can't be < 0");
        }
        if (nativeTexture == null) {
            throw new NullPointerException("nativeTexture can't be null");
        }
        G0(nativeTexture, startX, startY, width, height);
    }

    @Override
    public void D(int x10, int y10, float r10, float g10, float b10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                H0(this.f79726l, x10, y10, (char) (Nc.b.I(r10) * 255.0f), (char) (Nc.b.I(g10) * 255.0f), (char) (Nc.b.I(b10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final boolean D0(long pointer) {
        return (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalIsAlphaUsed(pointer) : nativeIsAlphaUsed(pointer)) == 1;
    }

    @Override
    public void E(int x10, int y10, float r10, float g10, float b10, float a10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                I0(this.f79726l, x10, y10, (char) (Nc.b.I(r10) * 255.0f), (char) (Nc.b.I(g10) * 255.0f), (char) (Nc.b.I(b10) * 255.0f), (char) (Nc.b.I(a10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void F(int x10, int y10, int r10, int g10, int b10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                H0(this.f79726l, x10, y10, (char) Nc.b.F(0, r10, 255), (char) Nc.b.F(0, g10, 255), (char) Nc.b.F(0, b10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void G(int x10, int y10, int r10, int g10, int b10, int a10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                I0(this.f79726l, x10, y10, (char) Nc.b.F(0, r10, 255), (char) Nc.b.F(0, g10, 255), (char) Nc.b.F(0, b10, 255), (char) Nc.b.F(0, a10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void H(int x10, int y10, ColorINT color) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                I0(this.f79726l, x10, y10, (char) (color.w() * 255.0f), (char) (color.u() * 255.0f), (char) (color.s() * 255.0f), (char) (color.r() * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void I(int x10, int y10, float v10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                J0(this.f79726l, x10, y10, (char) (Nc.b.I(v10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void I0(long pointer, int x10, int y10, char r10, char g10, char b10, char a10) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelRGBA(pointer, x10, y10, r10, g10, b10, a10);
        } else {
            nativeSetPixelRGBA(pointer, x10, y10, r10, g10, b10, a10);
        }
    }

    @Override
    public void J(int x10, int y10, int v10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                J0(this.f79726l, x10, y10, (char) Nc.b.F(0, v10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void J0(long pointer, int x10, int y10, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelA(pointer, x10, y10, value);
        } else {
            nativeSetPixelA(pointer, x10, y10, value);
        }
    }

    @Override
    public void K(int x10, int y10, float v10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                K0(this.f79726l, x10, y10, (char) (Nc.b.I(v10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void L(int x10, int y10, int v10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                K0(this.f79726l, x10, y10, (char) Nc.b.F(0, v10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void M(int x10, int y10, float v10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                L0(this.f79726l, x10, y10, (char) (Nc.b.I(v10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void N(int x10, int y10, int v10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                L0(this.f79726l, x10, y10, (char) Nc.b.F(0, v10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void O(boolean enabled) {
        K8.a.G();
        TextureConfig textureConfig = this.f79729o;
        boolean z10 = textureConfig.genMipmaps != enabled;
        textureConfig.genMipmaps = enabled;
        FilamentTexture filamentTexture = this.f79731q;
        if (filamentTexture == null || !z10) {
            return;
        }
        filamentTexture.M(FilamentTexture.j(textureConfig));
    }

    @Override
    public void P(int x10, int y10, float v10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                M0(this.f79726l, x10, y10, (char) (Nc.b.I(v10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void Q(int x10, int y10, int v10) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                M0(this.f79726l, x10, y10, (char) Nc.b.F(0, v10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void Q0() {
        K8.a.G();
    }

    @Override
    public void S(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        if (!A()) {
            throw new RuntimeException("Texture is not renderable yet.");
        }
        this.extractingRT = new FilamentRenderTarget(new RenderTarget.b().f(RenderTarget.a.COLOR, this.f79731q.C()), this.f79731q, (FilamentTexture) null);
        ByteBuffer order = ByteBuffer.allocateDirect(w10 * h10 * 4).order(ByteOrder.nativeOrder());
        this.rgba = order;
        Texture.g gVar = new Texture.g(order, Texture.e.RGBA, Texture.k.UBYTE, 1);
        this.pbd = gVar;
        gVar.b(Qb.e.a(), new e(w10, h10, extractCallback));
        Qb.a.g().n(this.extractingRT.f(), ofx, ofy, w10, h10, this.pbd);
    }

    public void Z0(NativeByteBuffer buf, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f79728n && !this.f79727m) {
            throw new UnsupportedTextureOperation("Can not reapply a texture without allow modifications flag");
        }
        FilamentTexture filamentTexture = this.f79731q;
        if (filamentTexture == null) {
            this.f79731q = new FilamentTexture(this.f79724j, this.f79725k, Texture.e.RGBA, Texture.k.UBYTE, new Texture.a().d(this.f79729o.gammaCorrection ? Texture.f.SRGB8_A8 : Texture.f.RGBA8), FilamentTexture.j(this.f79729o), this.f79729o.j(), 8);
        } else {
            filamentTexture.M(FilamentTexture.j(this.f79729o));
        }
        if (post != null) {
            this.f79731q.u(buf, new a(post));
        } else {
            this.f79731q.s(buf);
            this.f79728n = true;
        }
    }

    @Override
    public int bytesPerItem() {
        return 4;
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
        FilamentTexture filamentTexture = this.f79731q;
        if (filamentTexture != null) {
            try {
                filamentTexture.destroyImmediate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f79731q = null;
        }
        ASTCTextureData.a aVar = this.f79732r;
        if (aVar != null) {
            aVar.a();
            this.f79732r = null;
        }
    }

    @Override
    public boolean e(Runnable post) {
        K8.a.I(new d(post));
        return true;
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (this.f79731q == null) {
            throw new RuntimeException("Texture is not renderable");
        }
        if (isGarbage()) {
            throw new RuntimeException("Texture was deleted from memory");
        }
        FilamentTexture filamentTexture = this.f79731q;
        m10.q(attributeName, filamentTexture, filamentTexture.B());
    }

    @Override
    public int getHeight() {
        return this.f79725k;
    }

    @Override
    public long getPointerCritical() {
        return this.f79726l;
    }

    @Override
    public int getWidth() {
        return this.f79724j;
    }

    @Override
    public void h(File file, int quality, a.EnumC1369a exportFormat) {
        boolean z10;
        Thread.requestOpenglEngineThread();
        try {
            if (B()) {
                z10 = false;
            } else {
                if (!this.f79728n) {
                    throw new UnsupportedTextureOperation("Texture is not writable and and theres no GPU data to be exported");
                }
                z10 = true;
            }
            int width = getWidth();
            int height = getHeight();
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            if (z10) {
                if (z10) {
                    throw new UnsupportedTextureOperation("GPU data extraction is not available yet, its a comming update, now, you will need to use writable textures");
                }
                return;
            }
            ColorINT colorINT = new ColorINT();
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            for (int i10 = 0; i10 < width; i10++) {
                for (int i11 = 0; i11 < height; i11++) {
                    j(i10, i11, colorINT);
                    createBitmap.setPixel(i10, i11, colorINT.intColor);
                }
            }
            int i12 = f.f79752a[exportFormat.ordinal()];
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
        Y0();
        return j(x10, y10, new ColorINT());
    }

    @Override
    public boolean isNative() {
        return true;
    }

    @Override
    public ColorINT j(int x10, int y10, ColorINT out) {
        Y0();
        if (validateAndThrow()) {
            b1(x10, y10);
            try {
                out.Y(w0(this.f79726l, x10, y10), z0(this.f79726l, x10, y10), y0(this.f79726l, x10, y10), x0(this.f79726l, x10, y10));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
        return out;
    }

    @Override
    public FilamentTexture k() {
        return this.f79731q;
    }

    @Override
    public float l(int x10, int y10) {
        Y0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        b1(x10, y10);
        try {
            return w0(this.f79726l, x10, y10) / 255.0f;
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public void lostOGLContext() {
        try {
            callLostOGLContext(this.f79726l);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public float m(int x10, int y10) {
        Y0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        b1(x10, y10);
        try {
            return x0(this.f79726l, x10, y10) / 255.0f;
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public float n(int x10, int y10) {
        Y0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        b1(x10, y10);
        try {
            return y0(this.f79726l, x10, y10) / 255.0f;
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public long nativeUsedBytes() {
        ASTCTextureData.a aVar = this.f79732r;
        if (aVar != null) {
            NativeByteBuffer nativeByteBuffer = aVar.f79792h;
            if (nativeByteBuffer == null) {
                return 0L;
            }
            return nativeByteBuffer.nativeUsedBytes();
        }
        if (isGarbage() || (!this.f79727m && this.f79728n)) {
            return 0L;
        }
        return (getWidth() * getHeight() * bytesPerItem()) + 26;
    }

    @Override
    public float o(int x10, int y10) {
        Y0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        b1(x10, y10);
        try {
            return z0(this.f79726l, x10, y10) / 255.0f;
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public long p() {
        FilamentTexture filamentTexture = this.f79731q;
        if (filamentTexture == null || !filamentTexture.D()) {
            return 0L;
        }
        return this.f79731q.A();
    }

    @Override
    public int q(int x10, int y10) {
        Y0();
        if (!validateAndThrow()) {
            return 0;
        }
        b1(x10, y10);
        try {
            return w0(this.f79726l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override
    public int r(int x10, int y10) {
        Y0();
        if (!validateAndThrow()) {
            return 0;
        }
        b1(x10, y10);
        try {
            return x0(this.f79726l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public void r0(Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f79728n && !this.f79727m) {
            throw new UnsupportedTextureOperation("Can not reapply a texture without allow modifications flag");
        }
        ASTCTextureData.a aVar = this.f79732r;
        if (aVar != null) {
            if (aVar.f79792h == null) {
                throw new UnsupportedTextureOperation("ASTC upload buffer is no longer available");
            }
            if (N0()) {
                a1(this.f79732r, post);
                return;
            }
        }
        long B02 = B0(this.f79726l);
        if (B02 <= 0) {
            throw new UnsupportedTextureOperation("apply failed");
        }
        TextureConfig textureConfig = this.f79729o;
        int i10 = textureConfig.mipmapLevels;
        if (!textureConfig.genMipmaps) {
            i10 = 0;
        } else if (i10 <= 0) {
            i10 = 1;
        }
        P0(i10);
        this.f79731q.r(B02, this.f79724j * this.f79725k * 4, t0(post));
    }

    @Override
    public int s(int x10, int y10) {
        Y0();
        if (!validateAndThrow()) {
            return 0;
        }
        b1(x10, y10);
        try {
            return y0(this.f79726l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override
    public void setDeleted() {
        this.f79726l = 0L;
        super.setDeleted();
    }

    @Override
    public int u(int x10, int y10) {
        Y0();
        if (!validateAndThrow()) {
            return 0;
        }
        b1(x10, y10);
        try {
            return z0(this.f79726l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override
    public TextureConfig.d v() {
        return TextureConfig.d.RGBA8;
    }

    @Override
    public long w() {
        return this.f79726l;
    }

    public final char w0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelA(pointer, x10, y10) : nativeGetPixelA(pointer, x10, y10);
    }

    @Override
    public boolean x() {
        return this.f79730p;
    }

    @Override
    public boolean y() {
        return true;
    }

    @Override
    public boolean z() {
        return this.f79729o.genMipmaps;
    }

    public NativeTextureRGBA8(int width, int height, boolean allowModifications) {
        this(width, height, allowModifications, null);
    }

    public NativeTextureRGBA8(int width, int height, TextureConfig config) {
        this(width, height, config != null && config.allowModifications, config);
    }

    public NativeTextureRGBA8(int width, int height, boolean allowModifications, TextureConfig textureConfig) {
        this.f79730p = false;
        if (width > 0 && height > 0) {
            this.f79724j = width;
            this.f79725k = height;
            this.f79727m = allowModifications;
            if (textureConfig == null) {
                TextureConfig textureConfig2 = new TextureConfig();
                this.f79729o = textureConfig2;
                textureConfig2.allowModifications = allowModifications;
            } else {
                this.f79729o = textureConfig;
            }
            long callTryCreate = callTryCreate();
            this.f79726l = callTryCreate;
            u0(callTryCreate, width, height, allowModifications);
            this.f79730p = true;
            SGC.put(this, this.f79726l, f79722t, true);
            return;
        }
        throw new IllegalArgumentException("Width and height can't be <= 0");
    }

    public NativeTextureRGBA8(Context context, b.d state, TextureConfig textureConfig) {
        String str;
        this.f79730p = false;
        if (textureConfig == null) {
            this.f79729o = new TextureConfig();
        } else {
            this.f79729o = textureConfig;
        }
        boolean z10 = this.f79729o.allowModifications;
        this.f79727m = z10;
        this.f79726l = callTryCreate();
        if (state.f79822c) {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.a.a(state);
        }
        if (!state.f79822c && !z10 && (str = state.f79821b) != null && !str.isEmpty()) {
            ASTCTextureData.a d10 = ASTCTextureData.d(new File(state.f79821b), this.f79729o);
            this.f79732r = d10;
            if (d10 != null) {
                this.f79724j = d10.f79785a;
                this.f79725k = d10.f79786b;
                this.f79730p = true;
                this.f79733s = state.f79820a;
                SGC.put(this, this.f79726l, f79722t, true);
                return;
            }
            throw new RuntimeException("Failed to decode ASTC from file:" + state.f79821b);
        }
        if (!state.f79822c) {
            if (E0(this.f79726l, z10, state.f79820a)) {
                this.f79730p = D0(this.f79726l);
                this.f79724j = C0(this.f79726l);
                this.f79725k = v0(this.f79726l);
                SGC.put(this, this.f79726l, f79722t, true);
                return;
            }
            throw new FailedToLoadTexture("Failed to load texture on c++ (" + state.f79820a + ")");
        }
        throw new RuntimeException("loading assets is not implemented yet!");
    }

    public NativeTextureRGBA8(TextureConfig textureConfig) {
        this.f79730p = false;
        if (textureConfig == null) {
            this.f79729o = new TextureConfig();
        } else {
            this.f79729o = textureConfig;
        }
        this.f79727m = this.f79729o.allowModifications;
        long callTryCreate = callTryCreate();
        this.f79726l = callTryCreate;
        SGC.put(this, callTryCreate, f79722t, true);
    }
}
