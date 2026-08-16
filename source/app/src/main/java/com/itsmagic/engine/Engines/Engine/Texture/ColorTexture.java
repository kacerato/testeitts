package com.itsmagic.engine.Engines.Engine.Texture;

import Qb.e;
import android.graphics.Bitmap;
import androidx.annotation.Keep;
import com.google.android.filament.RenderTarget;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.InvalidTextureSizeException;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderTarget;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import ub.p;

public class ColorTexture extends p {

    @Keep
    private FilamentRenderTarget extractingRT;

    @Keep
    private FilamentTexture keepAliveExtractionTexture;

    public final FilamentTexture f79586m;

    public final TextureSampler f79587n;

    public final Object f79588o;

    public boolean f79589p;

    @Keep
    private Texture.g pbd;

    public d f79590q;

    @Keep
    private ByteBuffer rgba;

    public class a implements Runnable {

        public final d f79591b;

        public a(final d val$request) {
            this.f79591b = val$request;
        }

        @Override
        public void run() {
            d dVar;
            try {
                if (this.f79591b.f79613j && this.f79591b.f79604a != null) {
                    this.f79591b.f79604a.destroyImmediate();
                }
                synchronized (ColorTexture.this.f79588o) {
                    try {
                        if (this.f79591b.f79613j && ColorTexture.this.extractingRT == this.f79591b.f79604a) {
                            ColorTexture.this.extractingRT = null;
                        }
                        ColorTexture.this.keepAliveExtractionTexture = null;
                        ColorTexture.this.pbd = null;
                        ColorTexture.this.rgba = null;
                        ColorTexture.this.f79589p = false;
                        dVar = ColorTexture.this.f79590q;
                        ColorTexture.this.f79590q = null;
                        if (dVar != null) {
                            ColorTexture.this.f79589p = true;
                        }
                    } finally {
                    }
                }
                if (dVar == null) {
                    return;
                }
            } catch (Throwable th2) {
                try {
                    th2.printStackTrace();
                    synchronized (ColorTexture.this.f79588o) {
                        try {
                            if (this.f79591b.f79613j && ColorTexture.this.extractingRT == this.f79591b.f79604a) {
                                ColorTexture.this.extractingRT = null;
                            }
                            ColorTexture.this.keepAliveExtractionTexture = null;
                            ColorTexture.this.pbd = null;
                            ColorTexture.this.rgba = null;
                            ColorTexture.this.f79589p = false;
                            dVar = ColorTexture.this.f79590q;
                            ColorTexture.this.f79590q = null;
                            if (dVar != null) {
                                ColorTexture.this.f79589p = true;
                            }
                            if (dVar == null) {
                                return;
                            }
                        } finally {
                        }
                    }
                } catch (Throwable th3) {
                    synchronized (ColorTexture.this.f79588o) {
                        try {
                            if (this.f79591b.f79613j && ColorTexture.this.extractingRT == this.f79591b.f79604a) {
                                ColorTexture.this.extractingRT = null;
                            }
                            ColorTexture.this.keepAliveExtractionTexture = null;
                            ColorTexture.this.pbd = null;
                            ColorTexture.this.rgba = null;
                            ColorTexture.this.f79589p = false;
                            d dVar2 = ColorTexture.this.f79590q;
                            ColorTexture.this.f79590q = null;
                            if (dVar2 != null) {
                                ColorTexture.this.f79589p = true;
                            }
                            if (dVar2 != null) {
                                ColorTexture.this.F0(dVar2);
                            }
                            throw th3;
                        } finally {
                        }
                    }
                }
            }
            ColorTexture.this.F0(dVar);
        }
    }

    public class b implements Runnable {

        public final ByteBuffer f79593b;

        public final int[] f79594c;

        public final int f79595d;

        public final int f79596e;

        public final Texture.e f79597f;

        public final Bitmap f79598g;

        public final a.b f79599h;

        public final d f79600i;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                int i10;
                int i11;
                int i12;
                try {
                    b.this.f79593b.rewind();
                    b bVar = b.this;
                    int[] iArr = bVar.f79594c;
                    if (iArr == null || iArr.length != bVar.f79595d * bVar.f79596e) {
                        iArr = new int[bVar.f79595d * bVar.f79596e];
                    }
                    int[] iArr2 = iArr;
                    int i13 = 0;
                    while (true) {
                        b bVar2 = b.this;
                        if (i13 < bVar2.f79595d * bVar2.f79596e) {
                            int i14 = c.f79603a[bVar2.f79597f.ordinal()];
                            int i15 = 255;
                            if (i14 == 1) {
                                i10 = b.this.f79593b.get() & 255;
                                i11 = i10;
                                i12 = i11;
                            } else if (i14 == 2) {
                                i10 = b.this.f79593b.get() & 255;
                                i11 = b.this.f79593b.get() & 255;
                                i12 = 255;
                            } else if (i14 == 3) {
                                i10 = b.this.f79593b.get() & 255;
                                i11 = b.this.f79593b.get() & 255;
                                i12 = b.this.f79593b.get() & 255;
                            } else {
                                if (i14 != 4) {
                                    throw new RuntimeException("Unsupported texture format for bitmap extraction: " + ((Object) b.this.f79597f));
                                }
                                i10 = b.this.f79593b.get() & 255;
                                i11 = b.this.f79593b.get() & 255;
                                i12 = b.this.f79593b.get() & 255;
                                i15 = 255 & b.this.f79593b.get();
                            }
                            iArr2[i13] = (i10 << 16) | (i15 << 24) | (i11 << 8) | i12;
                            i13++;
                        } else {
                            Bitmap bitmap = bVar2.f79598g;
                            if (bitmap == null || bitmap.isRecycled() || bitmap.getWidth() != b.this.f79595d || bitmap.getHeight() != b.this.f79596e) {
                                b bVar3 = b.this;
                                bitmap = Bitmap.createBitmap(bVar3.f79595d, bVar3.f79596e, Bitmap.Config.ARGB_8888);
                            }
                            b bVar4 = b.this;
                            int i16 = bVar4.f79595d;
                            bitmap.setPixels(iArr2, 0, i16, 0, 0, i16, bVar4.f79596e);
                            b.this.f79599h.on(bitmap);
                        }
                    }
                } finally {
                    try {
                        b bVar5 = b.this;
                        ColorTexture.this.E0(bVar5.f79600i);
                    } catch (Throwable th2) {
                    }
                }
                b bVar52 = b.this;
                ColorTexture.this.E0(bVar52.f79600i);
            }
        }

        public b(final ByteBuffer val$localRgba, final int[] val$argbReuse, final int val$w, final int val$h, final Texture.e val$textureFormat, final Bitmap val$reuse, final a.b val$extractCallback, final d val$request) {
            this.f79593b = val$localRgba;
            this.f79594c = val$argbReuse;
            this.f79595d = val$w;
            this.f79596e = val$h;
            this.f79597f = val$textureFormat;
            this.f79598g = val$reuse;
            this.f79599h = val$extractCallback;
            this.f79600i = val$request;
        }

        @Override
        public void run() {
            O9.b.d(new a());
        }
    }

    public static class c {

        public static final int[] f79603a;

        static {
            int[] iArr = new int[Texture.e.values().length];
            f79603a = iArr;
            try {
                iArr[Texture.e.R.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79603a[Texture.e.RG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f79603a[Texture.e.RGB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f79603a[Texture.e.RGBA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static final class d {

        public final FilamentRenderTarget f79604a;

        public final int f79605b;

        public final int f79606c;

        public final int f79607d;

        public final int f79608e;

        public final Bitmap f79609f;

        public final int[] f79610g;

        public final ByteBuffer f79611h;

        public final a.b f79612i;

        public final boolean f79613j;

        public d(FilamentRenderTarget filamentRenderTarget, int i10, int i11, int i12, int i13, Bitmap bitmap, int[] iArr, ByteBuffer byteBuffer, a.b bVar, boolean z10, a aVar) {
            this(filamentRenderTarget, i10, i11, i12, i13, bitmap, iArr, byteBuffer, bVar, z10);
        }

        public d(FilamentRenderTarget renderTarget, int ofx, int ofy, int w10, int h10, Bitmap reuse, int[] argbReuse, ByteBuffer rgbaReuse, a.b extractCallback, boolean ownsRenderTarget) {
            this.f79604a = renderTarget;
            this.f79605b = ofx;
            this.f79606c = ofy;
            this.f79607d = w10;
            this.f79608e = h10;
            this.f79609f = reuse;
            this.f79610g = argbReuse;
            this.f79611h = rgbaReuse;
            this.f79612i = extractCallback;
            this.f79613j = ownsRenderTarget;
        }
    }

    public ColorTexture(int width, int height) {
        this(width, height, TextureSampler.f.CLAMP_TO_EDGE);
    }

    public static int C0(Texture.e format) {
        int i10 = c.f79603a[format.ordinal()];
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2) {
                i11 = 3;
                if (i10 != 3) {
                    if (i10 == 4) {
                        return 4;
                    }
                    throw new RuntimeException("Unsupported texture format for bitmap extraction: " + ((Object) format));
                }
            }
        }
        return i11;
    }

    @Override
    public boolean C() {
        return true;
    }

    public Texture D0() {
        return this.f79586m.C();
    }

    public final void E0(d request) {
        K8.a.I(new a(request));
    }

    public final void F0(d request) {
        FilamentRenderTarget filamentRenderTarget;
        ByteBuffer allocateDirect;
        int i10 = request.f79607d;
        int i11 = request.f79608e;
        Bitmap bitmap = request.f79609f;
        int[] iArr = request.f79610g;
        a.b bVar = request.f79612i;
        boolean z10 = request.f79613j;
        Texture.e z11 = this.f79586m.z();
        int C02 = C0(z11);
        synchronized (this.f79588o) {
            try {
                this.f79589p = true;
                filamentRenderTarget = request.f79604a;
                allocateDirect = (request.f79611h == null || !request.f79611h.isDirect() || request.f79611h.capacity() < (i10 * i11) * C02) ? ByteBuffer.allocateDirect(i10 * i11 * C02) : request.f79611h;
                allocateDirect.clear();
                allocateDirect.order(ByteOrder.nativeOrder());
                if (z10) {
                    this.extractingRT = filamentRenderTarget;
                }
                this.keepAliveExtractionTexture = this.f79586m;
                this.rgba = allocateDirect;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Texture.g gVar = new Texture.g(allocateDirect, z11, Texture.k.UBYTE, 1);
        synchronized (this.f79588o) {
            this.pbd = gVar;
        }
        gVar.b(e.a(), new b(allocateDirect, iArr, i10, i11, z11, bitmap, bVar, request));
        try {
            Qb.a.g().n(filamentRenderTarget.f(), request.f79605b, request.f79606c, i10, i11, gVar);
        } catch (Exception e10) {
            e10.printStackTrace();
            E0(request);
            bVar.on(null);
        }
    }

    public void G0(int ofx, int ofy, int w10, int h10, Bitmap reuse, a.b extractCallback) {
        O0(null, ofx, ofy, w10, h10, reuse, null, null, extractCallback);
    }

    public void H0(int ofx, int ofy, int w10, int h10, Bitmap reuse, int[] argbReuse, a.b extractCallback) {
        O0(null, ofx, ofy, w10, h10, reuse, argbReuse, null, extractCallback);
    }

    public void I0(int ofx, int ofy, int w10, int h10, Bitmap reuse, int[] argbReuse, ByteBuffer rgbaReuse, a.b extractCallback) {
        O0(null, ofx, ofy, w10, h10, reuse, argbReuse, rgbaReuse, extractCallback);
    }

    @Override
    public boolean J() {
        return true;
    }

    public void J0(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        O0(null, ofx, ofy, w10, h10, null, null, null, extractCallback);
    }

    public void K0(Bitmap reuse, a.b extractCallback) {
        O0(null, 0, 0, getWidth(), getHeight(), reuse, null, null, extractCallback);
    }

    public void L0(Bitmap reuse, int[] argbReuse, a.b extractCallback) {
        O0(null, 0, 0, getWidth(), getHeight(), reuse, argbReuse, null, extractCallback);
    }

    public void M0(Bitmap reuse, int[] argbReuse, ByteBuffer rgbaReuse, a.b extractCallback) {
        O0(null, 0, 0, getWidth(), getHeight(), reuse, argbReuse, rgbaReuse, extractCallback);
    }

    @Override
    public boolean N() {
        return false;
    }

    public void N0(a.b extractCallback) {
        O0(null, 0, 0, getWidth(), getHeight(), null, null, null, extractCallback);
    }

    public void O0(FilamentRenderTarget renderTarget, int ofx, int ofy, int w10, int h10, Bitmap reuse, int[] argbReuse, ByteBuffer rgbaReuse, a.b extractCallback) {
        boolean z10 = renderTarget == null;
        d dVar = new d(z10 ? new FilamentRenderTarget(new RenderTarget.b().f(RenderTarget.a.COLOR, this.f79586m.C()), this.f79586m, (FilamentTexture) null) : renderTarget, ofx, ofy, w10, h10, reuse, argbReuse, rgbaReuse, extractCallback, z10, null);
        synchronized (this.f79588o) {
            try {
                if (this.f79589p) {
                    this.f79590q = dVar;
                } else {
                    F0(dVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void P0(FilamentRenderTarget renderTarget, Bitmap reuse, a.b extractCallback) {
        O0(renderTarget, 0, 0, getWidth(), getHeight(), reuse, null, null, extractCallback);
    }

    public void Q0(FilamentRenderTarget renderTarget, Bitmap reuse, int[] argbReuse, a.b extractCallback) {
        O0(renderTarget, 0, 0, getWidth(), getHeight(), reuse, argbReuse, null, extractCallback);
    }

    public void R0(FilamentRenderTarget renderTarget, Bitmap reuse, int[] argbReuse, ByteBuffer rgbaReuse, a.b extractCallback) {
        O0(renderTarget, 0, 0, getWidth(), getHeight(), reuse, argbReuse, rgbaReuse, extractCallback);
    }

    public void U0(FilamentRenderTarget renderTarget, a.b extractCallback) {
        O0(renderTarget, 0, 0, getWidth(), getHeight(), null, null, null, extractCallback);
    }

    public void V0() {
    }

    @Override
    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        this.f79586m.destroyImmediate();
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (isGarbage()) {
            throw new RuntimeException();
        }
        m10.q(attributeName, this.f79586m, this.f79587n);
    }

    @Override
    public FilamentTexture k() {
        return this.f79586m;
    }

    @Override
    public long q() {
        return this.f79586m.A();
    }

    @Override
    public TextureConfig.d w() {
        return TextureConfig.d.Color;
    }

    @Override
    public void z(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        J0(ofx, ofy, w10, h10, extractCallback);
    }

    public ColorTexture(int width, int height, TextureSampler.f wrapMode) {
        this(width, height, wrapMode, Texture.e.RGBA, Texture.f.RGBA8);
    }

    public ColorTexture(int width, int height, TextureSampler.f wrapMode, Texture.e format, Texture.f internalFormat) {
        this(width, height, wrapMode, format, internalFormat, Texture.k.UBYTE);
    }

    public ColorTexture(int width, int height, TextureSampler.f wrapMode, Texture.e format, Texture.f internalFormat, Texture.k textureType) {
        this.f79588o = new Object();
        Qb.a.d();
        int i10 = !Nc.b.J0(width) ? width - 1 : width;
        int i11 = !Nc.b.J0(height) ? height - 1 : height;
        if (i10 > 0 && i11 > 0) {
            TextureSampler textureSampler = new TextureSampler(TextureSampler.e.LINEAR, TextureSampler.d.LINEAR, wrapMode);
            this.f79587n = textureSampler;
            FilamentTexture filamentTexture = new FilamentTexture(i10, i11, format, textureType, internalFormat, new Texture.a().d(internalFormat), textureSampler, 0, 65);
            this.f79586m = filamentTexture;
            A(i10, i11, filamentTexture.A(), false);
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }
}
