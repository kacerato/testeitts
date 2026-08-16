package com.itsmagic.engine.Engines.Engine.Texture.Data;

import JAVARuntime.Thread;
import Qb.e;
import android.graphics.Bitmap;
import androidx.annotation.Keep;
import com.google.android.filament.RenderTarget;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureR32F;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureOutOfBoundingException;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.UnsupportedTextureOperation;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
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

public class NativeTextureR32F extends com.itsmagic.engine.Engines.Engine.Texture.Data.a {

    public static final M9.c f79651q = new M9.c() {
        @Override
        public final void a(long j10) {
            NativeTextureR32F.deleteBuffer(j10);
        }
    };

    public static final int f79652r = 1;

    @Keep
    private FilamentRenderTarget extractingRT;

    public final int f79653j;

    public final int f79654k;

    @Keep
    private FilamentTexture keepAliveExtractionTexture;

    public long f79655l;

    public final boolean f79656m;

    public boolean f79657n;

    public final TextureConfig f79658o;

    public FilamentTexture f79659p;

    @Keep
    private Texture.g pbd;

    @Keep
    private ByteBuffer rgba;

    public class a implements Runnable {

        public final Runnable f79660b;

        public class RunnableC1360a implements Runnable {

            public class RunnableC1361a implements Runnable {
                public RunnableC1361a() {
                }

                @Override
                public void run() {
                    Runnable runnable = a.this.f79660b;
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            }

            public RunnableC1360a() {
            }

            @Override
            public void run() {
                NativeTextureR32F nativeTextureR32F = NativeTextureR32F.this;
                nativeTextureR32F.q0(nativeTextureR32F.f79655l);
                NativeTextureR32F.this.f79657n = true;
                K8.a.I(new RunnableC1361a());
            }
        }

        public a(final Runnable val$post) {
            this.f79660b = val$post;
        }

        @Override
        public void run() {
            Qb.a.d();
            K8.a.G();
            if (NativeTextureR32F.this.f79657n && !NativeTextureR32F.this.f79656m) {
                throw new UnsupportedTextureOperation("Can not reapply a texture without allow modifications flag");
            }
            NativeTextureR32F nativeTextureR32F = NativeTextureR32F.this;
            long o02 = nativeTextureR32F.o0(nativeTextureR32F.f79655l);
            if (o02 == 0) {
                throw new UnsupportedTextureOperation("apply failed");
            }
            if (NativeTextureR32F.this.f79659p == null) {
                TextureSampler j10 = FilamentTexture.j(NativeTextureR32F.this.f79658o);
                int j11 = NativeTextureR32F.this.f79658o.j();
                NativeTextureR32F.this.f79659p = new FilamentTexture(NativeTextureR32F.this.f79653j, NativeTextureR32F.this.f79654k, Texture.e.R, Texture.k.FLOAT, new Texture.a().d(Texture.f.R32F), j10, j11, 8);
            } else {
                NativeTextureR32F.this.f79659p.M(FilamentTexture.j(NativeTextureR32F.this.f79658o));
            }
            NativeTextureR32F.this.f79659p.r(o02, NativeTextureR32F.this.f79653j * NativeTextureR32F.this.f79654k * 4, new RunnableC1360a());
        }
    }

    public class b implements Runnable {

        public final int f79664b;

        public final int f79665c;

        public final a.b f79666d;

        public class a implements Runnable {

            public class RunnableC1362a implements Runnable {
                public RunnableC1362a() {
                }

                @Override
                public void run() {
                    NativeTextureR32F.this.extractingRT.destroyImmediate();
                    NativeTextureR32F.this.extractingRT = null;
                    NativeTextureR32F.this.keepAliveExtractionTexture = null;
                    NativeTextureR32F.this.pbd = null;
                    NativeTextureR32F.this.rgba = null;
                }
            }

            public a() {
            }

            @Override
            public void run() {
                try {
                    NativeTextureR32F.this.rgba.rewind();
                    b bVar = b.this;
                    int[] iArr = new int[bVar.f79664b * bVar.f79665c];
                    int i10 = 0;
                    while (true) {
                        b bVar2 = b.this;
                        int i11 = bVar2.f79664b;
                        int i12 = bVar2.f79665c;
                        if (i10 >= i11 * i12) {
                            Bitmap createBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
                            b bVar3 = b.this;
                            int i13 = bVar3.f79664b;
                            createBitmap.setPixels(iArr, 0, i13, 0, 0, i13, bVar3.f79665c);
                            b.this.f79666d.on(createBitmap);
                            K8.a.I(new RunnableC1362a());
                            return;
                        }
                        int i14 = NativeTextureR32F.this.rgba.get() & 255;
                        int i15 = NativeTextureR32F.this.rgba.get() & 255;
                        iArr[i10] = (i14 << 16) | ((NativeTextureR32F.this.rgba.get() & 255) << 24) | (i15 << 8) | (NativeTextureR32F.this.rgba.get() & 255);
                        i10++;
                    }
                } catch (Throwable th2) {
                    K8.a.I(new RunnableC1362a());
                    throw th2;
                }
            }
        }

        public b(final int val$w, final int val$h, final a.b val$extractCallback) {
            this.f79664b = val$w;
            this.f79665c = val$h;
            this.f79666d = val$extractCallback;
        }

        @Override
        public void run() {
            O9.b.d(new a());
        }
    }

    public static class c {

        public static final int[] f79670a;

        static {
            int[] iArr = new int[a.EnumC1369a.values().length];
            f79670a = iArr;
            try {
                iArr[a.EnumC1369a.PNG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79670a[a.EnumC1369a.JPG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        System.loadLibrary("native-texture-r32f");
    }

    public NativeTextureR32F(int width, int height) {
        this(width, height, (TextureConfig) null);
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
    private static native float nativeCriticalGetPixelR(long pointer, int x10, int y10);

    @CriticalNative
    private static native int nativeCriticalGetWidth(long pointer);

    @CriticalNative
    private static native float nativeCriticalLostOGLContext(long pointer);

    @CriticalNative
    private static native boolean nativeCriticalPaint(long pointer, long otherPointer, int startX, int startY, int width, int height);

    @CriticalNative
    private static native void nativeCriticalSetPixelR(long pointer, int x10, int y10, float value);

    @CriticalNative
    public static native long nativeCriticalTryCreate();

    private static native void nativeDeleteBuffer(long pointer);

    private static native int nativeGetHeight(long pointer);

    private static native float nativeGetPixelR(long pointer, int x10, int y10);

    private static native long nativeGetPixelsPointer(long pointer);

    private static native int nativeGetWidth(long pointer);

    private static native float nativeLostOGLContext(long pointer);

    private static native void nativeOnUploadFinished(long pointer);

    private static native boolean nativePaint(long pointer, long otherPointer, int startX, int startY, int width, int height);

    private static native void nativeSetPixelR(long pointer, int x10, int y10, float value);

    public static native long nativeTryCreate();

    @Override
    public boolean A() {
        if (isGarbage() || this.f79659p == null) {
            return false;
        }
        return this.f79657n;
    }

    @Override
    public boolean B() {
        return this.f79656m;
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
        r0(nativeTexture, startX, startY, width, height);
    }

    @Override
    public void O(boolean enabled) {
        K8.a.G();
        TextureConfig textureConfig = this.f79658o;
        boolean z10 = textureConfig.genMipmaps != enabled;
        textureConfig.genMipmaps = enabled;
        FilamentTexture filamentTexture = this.f79659p;
        if (filamentTexture == null || !z10) {
            return;
        }
        filamentTexture.M(FilamentTexture.j(textureConfig));
    }

    @Override
    public void P(int x10, int y10, float v10) {
        v0(x10, y10, v10);
    }

    @Override
    public void S(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        if (!A()) {
            throw new RuntimeException("Texture is not renderable yet.");
        }
        this.extractingRT = new FilamentRenderTarget(new RenderTarget.b().f(RenderTarget.a.COLOR, this.f79659p.C()), this.f79659p, (FilamentTexture) null);
        ByteBuffer order = ByteBuffer.allocateDirect(w10 * h10 * 4).order(ByteOrder.nativeOrder());
        this.rgba = order;
        Texture.g gVar = new Texture.g(order, Texture.e.RGBA, Texture.k.UBYTE, 1);
        this.pbd = gVar;
        gVar.b(e.a(), new b(w10, h10, extractCallback));
        Qb.a.g().n(this.extractingRT.f(), ofx, ofy, w10, h10, this.pbd);
    }

    @Override
    public int bytesPerItem() {
        return 4;
    }

    public final void callLostOGLContext(long pointer) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalLostOGLContext(pointer);
        } else {
            nativeLostOGLContext(pointer);
        }
    }

    public final long callTryCreate() {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalTryCreate() : nativeTryCreate();
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
        FilamentTexture filamentTexture = this.f79659p;
        if (filamentTexture != null) {
            try {
                filamentTexture.destroyImmediate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f79659p = null;
        }
    }

    @Override
    public boolean e(Runnable post) {
        K8.a.I(new a(post));
        return true;
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (isGarbage()) {
            throw new RuntimeException("Texture was deleted from memory");
        }
        FilamentTexture filamentTexture = this.f79659p;
        m10.q(attributeName, filamentTexture, filamentTexture.B());
    }

    @Override
    public int getHeight() {
        return this.f79654k;
    }

    @Override
    public long getPointerCritical() {
        return this.f79655l;
    }

    @Override
    public int getWidth() {
        return this.f79653j;
    }

    @Override
    public void h(File file, int quality, a.EnumC1369a exportFormat) {
        boolean z10;
        Thread.requestOpenglEngineThread();
        try {
            if (B()) {
                z10 = false;
            } else {
                if (!this.f79657n) {
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
            int i12 = c.f79670a[exportFormat.ordinal()];
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
    public boolean isNative() {
        return true;
    }

    @Override
    public FilamentTexture k() {
        return this.f79659p;
    }

    public final long l0(long pointer, int width, int height, boolean allowModifications) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalAllocBuffer(pointer, width, height, allowModifications) : nativeAllocBuffer(pointer, width, height, allowModifications);
    }

    @Override
    public void lostOGLContext() {
        try {
            callLostOGLContext(this.f79655l);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
        }
    }

    public final int m0(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetHeight(pointer) : nativeGetHeight(pointer);
    }

    public final float n0(long pointer, int x10, int y10) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetPixelR(pointer, x10, y10) : nativeGetPixelR(pointer, x10, y10);
    }

    @Override
    public long nativeUsedBytes() {
        if (isGarbage()) {
            return 0L;
        }
        if (this.f79656m || !this.f79657n) {
            return (getWidth() * getHeight() * bytesPerItem()) + 25;
        }
        return 0L;
    }

    @Override
    public float o(int x10, int y10) {
        u0();
        if (!validateAndThrow()) {
            return 0.0f;
        }
        w0(x10, y10);
        try {
            return n0(this.f79655l, x10, y10);
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    public final long o0(long pointer) {
        return nativeGetPixelsPointer(pointer);
    }

    @Override
    public long p() {
        FilamentTexture filamentTexture = this.f79659p;
        if (filamentTexture == null || !filamentTexture.D()) {
            return 0L;
        }
        return this.f79659p.A();
    }

    public final int p0(long pointer) {
        return com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalGetWidth(pointer) : nativeGetWidth(pointer);
    }

    public final void q0(long pointer) {
        nativeOnUploadFinished(pointer);
    }

    public final void r0(com.itsmagic.engine.Engines.Engine.Texture.Data.a other, int startX, int startY, int width, int height) {
        if (isNative() && other.isNative() && other.y() && other.w() >= 0) {
            if (!(com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE ? nativeCriticalPaint(this.f79655l, other.w(), startX, startY, width, height) : nativePaint(this.f79655l, other.w(), startX, startY, width, height))) {
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

    public final void s0(long pointer, int x10, int y10, float value) {
        if (com.itsmagic.engine.Engines.Native.Base.a.USE_CRITICAL_NATIVE) {
            nativeCriticalSetPixelR(pointer, x10, y10, value);
        } else {
            nativeSetPixelR(pointer, x10, y10, value);
        }
    }

    @Override
    public void setDeleted() {
        this.f79655l = 0L;
        super.setDeleted();
    }

    public final void u0() {
        if (!this.f79656m && this.f79657n) {
            throw new RuntimeException("Immutable texture, if you want to modify the pixels in real time, go to the texture settings and activate the \"modifiable\" option (if texture was loaded from a file)");
        }
    }

    @Override
    public TextureConfig.d v() {
        return TextureConfig.d.R32F;
    }

    public void v0(int x10, int y10, float r10) {
        u0();
        if (validateAndThrow()) {
            w0(x10, y10);
            try {
                s0(this.f79655l, x10, y10, r10);
            } catch (RuntimeException e10) {
                e10.printStackTrace();
            }
        }
    }

    public final boolean validateAndThrow() {
        if (isGarbage()) {
            throw new RuntimeException("Buffer is garbage!");
        }
        return true;
    }

    @Override
    public long w() {
        return this.f79655l;
    }

    public final void w0(int x10, int y10) {
        if (x10 < 0 || x10 >= this.f79653j) {
            throw new IndexOutOfBoundsException("x(" + x10 + ") needs to be >= 0 and < width(" + this.f79653j + ")");
        }
        if (y10 < 0 || y10 >= this.f79654k) {
            throw new IndexOutOfBoundsException("y(" + y10 + ") needs to be >= 0 and < height(" + this.f79654k + ")");
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
        return this.f79658o.genMipmaps;
    }

    public NativeTextureR32F(int width, int height, boolean allowModifications) {
        this(width, height, allowModifications, null);
    }

    public NativeTextureR32F(int width, int height, TextureConfig config) {
        this(width, height, false, config);
    }

    public NativeTextureR32F(int width, int height, boolean allowModifications, TextureConfig textureConfig) {
        if (width > 0 && height > 0) {
            this.f79653j = width;
            this.f79654k = height;
            this.f79656m = allowModifications;
            if (textureConfig == null) {
                this.f79658o = new TextureConfig();
            } else {
                this.f79658o = textureConfig;
            }
            long callTryCreate = callTryCreate();
            this.f79655l = callTryCreate;
            l0(callTryCreate, width, height, allowModifications);
            SGC.put(this, this.f79655l, f79651q, true);
            return;
        }
        throw new IllegalArgumentException("Width and height can't be <= 0");
    }
}
