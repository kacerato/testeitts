package com.itsmagic.engine.Engines.Engine.Texture.Data;

import Ic.C2633l;
import JAVARuntime.Thread;
import Qb.e;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.Keep;
import c4.C4153a;
import com.google.android.filament.RenderTarget;
import com.google.android.filament.Texture;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureR8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.FailedToLoadTexture;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureNeedsImport;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.UnsupportedTextureOperation;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.b;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderTarget;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import dalvik.annotation.optimization.CriticalNative;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class NativeTextureR8 extends com.itsmagic.engine.Engines.Engine.Texture.Data.a {

    public static final M9.c f79671q = new M9.c() {
        @Override
        public final void a(long j10) {
            NativeTextureR8.deleteBuffer(j10);
        }
    };

    public static final int f79672r = 1;

    @Keep
    private FilamentRenderTarget extractingRT;

    public int f79673j;

    public int f79674k;

    @Keep
    private FilamentTexture keepAliveExtractionTexture;

    public long f79675l;

    public final boolean f79676m;

    public boolean f79677n;

    public final TextureConfig f79678o;

    public FilamentTexture f79679p;

    @Keep
    private Texture.g pbd;

    @Keep
    private ByteBuffer rgba;

    public class a implements Runnable {

        public final Runnable f79680b;

        public class RunnableC1363a implements Runnable {
            public RunnableC1363a() {
            }

            @Override
            public void run() {
                Runnable runnable = a.this.f79680b;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public a(final Runnable val$post) {
            this.f79680b = val$post;
        }

        @Override
        public void run() {
            NativeTextureR8 nativeTextureR8 = NativeTextureR8.this;
            nativeTextureR8.u0(nativeTextureR8.f79675l);
            NativeTextureR8.this.f79677n = true;
            K8.a.I(new RunnableC1363a());
        }
    }

    public class b implements Runnable {

        public final Runnable f79683b;

        public b(final Runnable val$post) {
            this.f79683b = val$post;
        }

        @Override
        public void run() {
            Qb.a.d();
            K8.a.G();
            if (NativeTextureR8.this.f79677n && !NativeTextureR8.this.f79676m) {
                throw new UnsupportedTextureOperation("Can not reapply a texture without allow modifications flag");
            }
            NativeTextureR8 nativeTextureR8 = NativeTextureR8.this;
            long r02 = nativeTextureR8.r0(nativeTextureR8.f79675l);
            if (r02 == 0) {
                throw new UnsupportedTextureOperation("apply failed");
            }
            NativeTextureR8 nativeTextureR82 = NativeTextureR8.this;
            nativeTextureR82.w0(nativeTextureR82.f79678o.j());
            NativeTextureR8.this.f79679p.r(r02, NativeTextureR8.this.f79673j * NativeTextureR8.this.f79674k, NativeTextureR8.this.n0(this.f79683b));
        }
    }

    public class c implements Runnable {

        public final int f79685b;

        public final int f79686c;

        public final a.b f79687d;

        public class a implements Runnable {

            public class RunnableC1364a implements Runnable {
                public RunnableC1364a() {
                }

                @Override
                public void run() {
                    NativeTextureR8.this.extractingRT.destroyImmediate();
                    NativeTextureR8.this.extractingRT = null;
                    NativeTextureR8.this.keepAliveExtractionTexture = null;
                    NativeTextureR8.this.pbd = null;
                    NativeTextureR8.this.rgba = null;
                }
            }

            public a() {
            }

            @Override
            public void run() {
                try {
                    NativeTextureR8.this.rgba.rewind();
                    c cVar = c.this;
                    int[] iArr = new int[cVar.f79685b * cVar.f79686c];
                    int i10 = 0;
                    while (true) {
                        c cVar2 = c.this;
                        int i11 = cVar2.f79685b;
                        int i12 = cVar2.f79686c;
                        if (i10 >= i11 * i12) {
                            Bitmap createBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
                            c cVar3 = c.this;
                            int i13 = cVar3.f79685b;
                            createBitmap.setPixels(iArr, 0, i13, 0, 0, i13, cVar3.f79686c);
                            c.this.f79687d.on(createBitmap);
                            K8.a.I(new RunnableC1364a());
                            return;
                        }
                        int i14 = NativeTextureR8.this.rgba.get() & 255;
                        int i15 = NativeTextureR8.this.rgba.get() & 255;
                        iArr[i10] = (i14 << 16) | ((NativeTextureR8.this.rgba.get() & 255) << 24) | (i15 << 8) | (NativeTextureR8.this.rgba.get() & 255);
                        i10++;
                    }
                } catch (Throwable th2) {
                    K8.a.I(new RunnableC1364a());
                    throw th2;
                }
            }
        }

        public c(final int val$w, final int val$h, final a.b val$extractCallback) {
            this.f79685b = val$w;
            this.f79686c = val$h;
            this.f79687d = val$extractCallback;
        }

        @Override
        public void run() {
            O9.b.d(new a());
        }
    }

    public static class d {

        public static final int[] f79691a;

        static {
            int[] iArr = new int[a.EnumC1369a.values().length];
            f79691a = iArr;
            try {
                iArr[a.EnumC1369a.PNG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79691a[a.EnumC1369a.JPG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        System.loadLibrary("native-texture-r8");
    }

    public NativeTextureR8(int width, int height) {
        this(width, height, (TextureConfig) null);
    }

    public static NativeTextureR8 B0(Context context, String path, boolean applyOGL, TextureConfig config, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        b.d dVar = new b.d();
        try {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.o(context, path, dVar, true);
            if (config == null) {
                config = new TextureConfig();
            }
            NativeTextureR8 nativeTextureR8 = new NativeTextureR8(context, dVar, config);
            if (applyOGL) {
                nativeTextureR8.e(post);
            }
            return nativeTextureR8;
        } catch (TextureNeedsImport unused) {
            return null;
        }
    }

    private void D0() {
        if (!this.f79676m) {
            throw new RuntimeException("Immutable texture, if you want to modify the pixels in real time, go to the texture settings and activate the \"modifiable\" option (if texture was loaded from a file)");
        }
    }

    private void E0(int x10, int y10) {
        if (x10 < 0 || x10 >= this.f79673j) {
            throw new IndexOutOfBoundsException("x(" + x10 + ") needs to be >= 0 and < width(" + this.f79673j + ")");
        }
        if (y10 < 0 || y10 >= this.f79674k) {
            throw new IndexOutOfBoundsException("y(" + y10 + ") needs to be >= 0 and < height(" + this.f79674k + ")");
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
    private static native char nativeCriticalGetPixelR(long pointer, int x10, int y10);

    @CriticalNative
    private static native int nativeCriticalGetWidth(long pointer);

    @CriticalNative
    private static native float nativeCriticalLostOGLContext(long pointer);

    @CriticalNative
    private static native void nativeCriticalSetPixelR(long pointer, int x10, int y10, char value);

    @CriticalNative
    public static native long nativeCriticalTryCreate();

    private static native void nativeDeleteBuffer(long pointer);

    private static native int nativeGetHeight(long pointer);

    private static native char nativeGetPixelR(long pointer, int x10, int y10);

    private static native long nativeGetPixelsPointer(long pointer);

    private static native int nativeGetWidth(long pointer);

    public static native boolean nativeLoadExternalFile(long pointer, boolean allowModifications, String path);

    private static native float nativeLostOGLContext(long pointer);

    private static native void nativeOnUploadFinished(long pointer);

    private static native void nativeSetPixelR(long pointer, int x10, int y10, char value);

    public static native long nativeTryCreate();

    private long o0(long pointer, int width, int height, boolean allowModifications) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalAllocBuffer(pointer, width, height, allowModifications) : nativeAllocBuffer(pointer, width, height, allowModifications);
    }

    private int p0(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetHeight(pointer) : nativeGetHeight(pointer);
    }

    public long r0(long pointer) {
        return nativeGetPixelsPointer(pointer);
    }

    private int s0(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetWidth(pointer) : nativeGetWidth(pointer);
    }

    public void u0(long pointer) {
        nativeOnUploadFinished(pointer);
    }

    private boolean validateAndThrow() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    public static NativeTextureR8 y0(Context context, String path, boolean applyOGL, TextureConfig config, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        if (config == null) {
            config = new TextureConfig();
        }
        b.d dVar = new b.d();
        try {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(context, path, dVar);
            NativeTextureR8 nativeTextureR8 = new NativeTextureR8(context, dVar, config);
            if (applyOGL) {
                nativeTextureR8.e(post);
            }
            return nativeTextureR8;
        } catch (TextureNeedsImport unused) {
            NativeTextureR8 nativeTextureR82 = new NativeTextureR8(config);
            if (!C2633l.b(path, ".ivo")) {
                com.itsmagic.engine.Engines.Engine.Texture.Utils.b.g(context, dVar, new b.C1370b().a(b.c.ONLY_TEXTURE).b(false));
                C4153a.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + path), com.itsmagic.engine.Core.Components.ProjectController.a.T());
                nativeTextureR82.C0(dVar);
            }
            if (applyOGL) {
                nativeTextureR82.e(post);
            }
            return nativeTextureR82;
        }
    }

    @Deprecated
    public static NativeTextureR8 z0(Context context, String path, boolean applyOGL, Runnable post) {
        if (path == null || path.isEmpty()) {
            throw new IllegalArgumentException("Path can't be null or empty");
        }
        b.d dVar = new b.d();
        com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(context, path, dVar);
        TextureConfig q10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.q(path, context, false);
        if (q10 == null) {
            q10 = new TextureConfig();
        }
        NativeTextureR8 nativeTextureR8 = new NativeTextureR8(context, dVar, q10);
        if (applyOGL) {
            nativeTextureR8.e(post);
        }
        return nativeTextureR8;
    }

    @Override
    public boolean A() {
        if (isGarbage() || this.f79679p == null) {
            return false;
        }
        return this.f79677n;
    }

    @Override
    public boolean B() {
        return this.f79676m;
    }

    public final void C0(b.d state) {
        if (state.f79822c) {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.a.a(state);
        }
        if (state.f79822c) {
            throw new RuntimeException("loading assets is not implemented yet!");
        }
        if (t0(this.f79675l, this.f79676m, state.f79820a)) {
            this.f79673j = s0(this.f79675l);
            this.f79674k = p0(this.f79675l);
        } else {
            throw new FailedToLoadTexture("Failed to load texture on c++ (" + state.f79820a + ")");
        }
    }

    @Override
    public void D(int x10, int y10, float r10, float g10, float b10) {
        D0();
        if (validateAndThrow()) {
            E0(x10, y10);
            try {
                v0(this.f79675l, x10, y10, (char) (Nc.b.I(r10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void E(int x10, int y10, float r10, float g10, float b10, float a10) {
        D0();
        if (validateAndThrow()) {
            E0(x10, y10);
            try {
                v0(this.f79675l, x10, y10, (char) (Nc.b.I(r10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void F(int x10, int y10, int r10, int g10, int b10) {
        D0();
        if (validateAndThrow()) {
            E0(x10, y10);
            try {
                v0(this.f79675l, x10, y10, (char) Nc.b.F(0, r10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void G(int x10, int y10, int r10, int g10, int b10, int a10) {
        D0();
        if (validateAndThrow()) {
            E0(x10, y10);
            try {
                v0(this.f79675l, x10, y10, (char) Nc.b.F(0, r10, 255));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void H(int x10, int y10, ColorINT color) {
        D0();
        if (validateAndThrow()) {
            E0(x10, y10);
            try {
                v0(this.f79675l, x10, y10, (char) (color.w() * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void O(boolean enabled) {
        K8.a.G();
        TextureConfig textureConfig = this.f79678o;
        boolean z10 = textureConfig.genMipmaps != enabled;
        textureConfig.genMipmaps = enabled;
        FilamentTexture filamentTexture = this.f79679p;
        if (filamentTexture == null || !z10) {
            return;
        }
        filamentTexture.M(FilamentTexture.j(textureConfig));
    }

    @Override
    public void P(int x10, int y10, float v10) {
        D0();
        if (validateAndThrow()) {
            E0(x10, y10);
            try {
                v0(this.f79675l, x10, y10, (char) (Nc.b.I(v10) * 255.0f));
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void Q(int x10, int y10, int v10) {
        D0();
        if (validateAndThrow()) {
            E0(x10, y10);
            try {
                v0(this.f79675l, x10, y10, (char) Nc.b.F(0, v10, 255));
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
        this.extractingRT = new FilamentRenderTarget(new RenderTarget.b().f(RenderTarget.a.COLOR, this.f79679p.C()), this.f79679p, (FilamentTexture) null);
        ByteBuffer order = ByteBuffer.allocateDirect(w10 * h10 * 4).order(ByteOrder.nativeOrder());
        this.rgba = order;
        Texture.g gVar = new Texture.g(order, Texture.e.RGBA, Texture.k.UBYTE, 1);
        this.pbd = gVar;
        gVar.b(e.a(), new c(w10, h10, extractCallback));
        Qb.a.g().n(this.extractingRT.f(), ofx, ofy, w10, h10, this.pbd);
    }

    @Override
    public int bytesPerItem() {
        return 1;
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
        FilamentTexture filamentTexture = this.f79679p;
        if (filamentTexture != null) {
            try {
                filamentTexture.destroyImmediate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f79679p = null;
        }
    }

    @Override
    public boolean e(Runnable post) {
        K8.a.I(new b(post));
        return true;
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (isGarbage()) {
            throw new RuntimeException("Texture was deleted from memory");
        }
        FilamentTexture filamentTexture = this.f79679p;
        m10.q(attributeName, filamentTexture, filamentTexture.B());
    }

    @Override
    public int getHeight() {
        return this.f79674k;
    }

    @Override
    public long getPointerCritical() {
        return this.f79675l;
    }

    @Override
    public int getWidth() {
        return this.f79673j;
    }

    @Override
    public void h(File file, int quality, a.EnumC1369a exportFormat) {
        boolean z10;
        Thread.requestOpenglEngineThread();
        try {
            if (B()) {
                z10 = false;
            } else {
                if (!this.f79677n) {
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
            int i12 = d.f79691a[exportFormat.ordinal()];
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
        D0();
        return j(x10, y10, new ColorINT());
    }

    @Override
    public boolean isNative() {
        return true;
    }

    @Override
    public ColorINT j(int x10, int y10, ColorINT out) {
        D0();
        if (validateAndThrow()) {
            E0(x10, y10);
            try {
                out.Y(255, q0(this.f79675l, x10, y10), 255, 255);
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
        return out;
    }

    @Override
    public FilamentTexture k() {
        return this.f79679p;
    }

    @Override
    public void lostOGLContext() {
        try {
            callLostOGLContext(this.f79675l);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public void m0(Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f79677n && !this.f79676m) {
            throw new UnsupportedTextureOperation("Can not reapply a texture without allow modifications flag");
        }
        long r02 = r0(this.f79675l);
        if (r02 == 0) {
            throw new UnsupportedTextureOperation("apply failed");
        }
        TextureConfig textureConfig = this.f79678o;
        int i10 = textureConfig.mipmapLevels;
        if (!textureConfig.genMipmaps) {
            i10 = 0;
        } else if (i10 <= 0) {
            i10 = 1;
        }
        w0(i10);
        this.f79679p.r(r02, this.f79673j * this.f79674k, n0(post));
    }

    public final Runnable n0(Runnable post) {
        return new a(post);
    }

    @Override
    public long nativeUsedBytes() {
        if (isGarbage()) {
            return 0L;
        }
        if (this.f79676m || !this.f79677n) {
            return (getWidth() * getHeight() * bytesPerItem()) + 25;
        }
        return 0L;
    }

    @Override
    public float o(int x10, int y10) {
        D0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        E0(x10, y10);
        try {
            return q0(this.f79675l, x10, y10) / 255.0f;
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    @Override
    public long p() {
        FilamentTexture filamentTexture = this.f79679p;
        if (filamentTexture == null || !filamentTexture.D()) {
            return 0L;
        }
        return this.f79679p.A();
    }

    public final char q0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelR(pointer, x10, y10) : nativeGetPixelR(pointer, x10, y10);
    }

    @Override
    public void setDeleted() {
        this.f79675l = 0L;
        super.setDeleted();
    }

    public final boolean t0(long pointer, boolean allowModifications, String path) {
        return nativeLoadExternalFile(pointer, allowModifications, path);
    }

    @Override
    public int u(int x10, int y10) {
        D0();
        if (!validateAndThrow()) {
            return 0;
        }
        E0(x10, y10);
        try {
            return q0(this.f79675l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override
    public TextureConfig.d v() {
        return TextureConfig.d.RGBA8;
    }

    public final void v0(long pointer, int x10, int y10, char value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelR(pointer, x10, y10, value);
        } else {
            nativeSetPixelR(pointer, x10, y10, value);
        }
    }

    @Override
    public long w() {
        return this.f79675l;
    }

    public final void w0(int levels) {
        FilamentTexture filamentTexture = this.f79679p;
        if (filamentTexture != null) {
            filamentTexture.M(FilamentTexture.j(this.f79678o));
        } else {
            this.f79679p = new FilamentTexture(this.f79673j, this.f79674k, Texture.e.R, Texture.k.UBYTE, new Texture.a().d(Texture.f.R8), FilamentTexture.j(this.f79678o), levels, 8);
        }
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
        return this.f79678o.genMipmaps;
    }

    public NativeTextureR8(int width, int height, boolean allowModifications) {
        this(width, height, allowModifications, null);
    }

    public NativeTextureR8(int width, int height, TextureConfig config) {
        this(width, height, config != null && config.allowModifications, config);
    }

    public NativeTextureR8(int width, int height, boolean allowModifications, TextureConfig textureConfig) {
        if (width > 0 && height > 0) {
            this.f79673j = width;
            this.f79674k = height;
            this.f79676m = allowModifications;
            if (textureConfig == null) {
                TextureConfig textureConfig2 = new TextureConfig();
                this.f79678o = textureConfig2;
                textureConfig2.allowModifications = allowModifications;
            } else {
                this.f79678o = textureConfig;
            }
            long callTryCreate = callTryCreate();
            this.f79675l = callTryCreate;
            o0(callTryCreate, width, height, allowModifications);
            SGC.put(this, this.f79675l, f79671q, true);
            return;
        }
        throw new IllegalArgumentException("Width and height can't be <= 0");
    }

    public NativeTextureR8(Context context, b.d state, TextureConfig textureConfig) {
        if (textureConfig == null) {
            this.f79678o = new TextureConfig();
        } else {
            this.f79678o = textureConfig;
        }
        boolean z10 = this.f79678o.allowModifications;
        this.f79676m = z10;
        this.f79675l = callTryCreate();
        if (state.f79822c) {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.a.a(state);
        }
        if (!state.f79822c) {
            if (t0(this.f79675l, z10, state.f79820a)) {
                this.f79673j = s0(this.f79675l);
                this.f79674k = p0(this.f79675l);
                SGC.put(this, this.f79675l, f79671q, true);
                return;
            } else {
                throw new FailedToLoadTexture("Failed to load texture on c++ (" + state.f79820a + ")");
            }
        }
        throw new RuntimeException("loading assets is not implemented yet!");
    }

    public NativeTextureR8(TextureConfig textureConfig) {
        if (textureConfig == null) {
            this.f79678o = new TextureConfig();
        } else {
            this.f79678o = textureConfig;
        }
        this.f79676m = this.f79678o.allowModifications;
        long callTryCreate = callTryCreate();
        this.f79675l = callTryCreate;
        SGC.put(this, callTryCreate, f79671q, true);
    }
}
