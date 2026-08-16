package com.itsmagic.engine.Engines.Engine.Texture;

import Qb.e;
import android.graphics.Bitmap;
import androidx.annotation.Keep;
import com.google.android.filament.RenderTarget;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.DepthTexture;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.InvalidTextureSizeException;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderTarget;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import ub.p;

public class DepthTexture extends p {

    @Keep
    private ByteBuffer byteBuffer;

    @Keep
    private FilamentRenderTarget extractingRT;

    @Keep
    private FilamentTexture keepAliveExtractionTexture;

    public final FilamentTexture f79759m;

    public final TextureSampler f79760n;

    public final Texture.f f79761o;

    @Keep
    private Texture.g pbd;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            DepthTexture.this.extractingRT.destroyImmediate();
            DepthTexture.this.extractingRT = null;
            DepthTexture.this.keepAliveExtractionTexture = null;
            DepthTexture.this.pbd = null;
            DepthTexture.this.byteBuffer = null;
        }
    }

    public class b implements Runnable {

        public final d f79763b;

        public b(final d val$extractCallback) {
            this.f79763b = val$extractCallback;
        }

        @Override
        public void run() {
            DepthTexture.this.byteBuffer.rewind();
            DepthTexture.this.extractingRT.destroyImmediate();
            DepthTexture.this.extractingRT = null;
            DepthTexture.this.keepAliveExtractionTexture = null;
            DepthTexture.this.pbd = null;
            this.f79763b.a((DepthTexture.this.byteBuffer.getShort() & 65535) / 65535.0f);
        }
    }

    public class c implements Runnable {

        public final ByteBuffer f79765b;

        public final d f79766c;

        public c(final ByteBuffer val$buffer, final d val$extractCallback) {
            this.f79765b = val$buffer;
            this.f79766c = val$extractCallback;
        }

        @Override
        public void run() {
            this.f79765b.rewind();
            DepthTexture.this.extractingRT.destroyImmediate();
            DepthTexture.this.extractingRT = null;
            DepthTexture.this.keepAliveExtractionTexture = null;
            DepthTexture.this.pbd = null;
            this.f79766c.a((this.f79765b.getShort() & 65535) / 65535.0f);
        }
    }

    public interface d {
        void a(float depth);
    }

    public DepthTexture(int width, int height, TextureSampler.f wrapMode) {
        Qb.a.d();
        width = Nc.b.J0(width) ? width : width - 1;
        height = Nc.b.J0(height) ? height : height - 1;
        if (width <= 0 || height <= 0) {
            throw new InvalidTextureSizeException("Width and height can't be <= 0");
        }
        TextureSampler textureSampler = new TextureSampler(TextureSampler.e.NEAREST, TextureSampler.d.NEAREST, wrapMode);
        this.f79760n = textureSampler;
        Texture.f fVar = Texture.f.DEPTH16;
        this.f79761o = fVar;
        int i10 = width;
        int i11 = height;
        FilamentTexture filamentTexture = new FilamentTexture(i10, i11, Texture.e.DEPTH_COMPONENT, Texture.k.USHORT, new Texture.a().d(fVar), textureSampler, 0, 67);
        this.f79759m = filamentTexture;
        A(i10, i11, filamentTexture.A(), false);
    }

    public Texture B0() {
        return this.f79759m.C();
    }

    @Override
    public boolean C() {
        return true;
    }

    public void C0(int x10, int y10, final d extractCallback) {
        if (this.extractingRT != null) {
            throw new RuntimeException("Data extraction already running");
        }
        this.extractingRT = new FilamentRenderTarget(new RenderTarget.b().f(RenderTarget.a.COLOR, this.f79759m.C()), (FilamentTexture) null, this.f79759m);
        this.keepAliveExtractionTexture = this.f79759m;
        ByteBuffer order = ByteBuffer.allocateDirect(4).order(ByteOrder.nativeOrder());
        this.byteBuffer = order;
        Texture.g gVar = new Texture.g(order, Texture.e.RG, Texture.k.USHORT);
        this.pbd = gVar;
        gVar.b(e.a(), new Runnable() {
            @Override
            public final void run() {
                DepthTexture.this.E0(extractCallback);
            }
        });
        Qb.a.g().n(this.extractingRT.f(), x10, y10, 1, 1, this.pbd);
    }

    public void D0(int x10, int y10, final ByteBuffer buffer, final d extractCallback) {
        if (this.extractingRT != null) {
            throw new RuntimeException("Data extraction already running");
        }
        this.extractingRT = new FilamentRenderTarget(new RenderTarget.b().f(RenderTarget.a.COLOR, this.f79759m.C()), (FilamentTexture) null, this.f79759m);
        this.keepAliveExtractionTexture = this.f79759m;
        buffer.position(0);
        buffer.limit(4);
        Texture.g gVar = new Texture.g(buffer, Texture.e.RG, Texture.k.USHORT);
        this.pbd = gVar;
        gVar.b(e.a(), new Runnable() {
            @Override
            public final void run() {
                DepthTexture.this.F0(buffer, extractCallback);
            }
        });
        Qb.a.g().n(this.extractingRT.f(), x10, y10, 1, 1, this.pbd);
    }

    public final void E0(d dVar) {
        K8.a.I(new b(dVar));
    }

    public final void F0(ByteBuffer byteBuffer, d dVar) {
        K8.a.I(new c(byteBuffer, dVar));
    }

    public final void G0(int i10, int i11, a.b bVar) {
        try {
            this.byteBuffer.rewind();
            int i12 = i10 * i11;
            int[] iArr = new int[i12];
            for (int i13 = 0; i13 < i12; i13++) {
                int i14 = (this.byteBuffer.getShort() & 65535) >> 8;
                iArr[i13] = i14 | (i14 << 16) | (-16777216) | (i14 << 8);
            }
            Bitmap createBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            createBitmap.setPixels(iArr, 0, i10, 0, 0, i10, i11);
            bVar.on(createBitmap);
            K8.a.I(new a());
        } catch (Throwable th2) {
            K8.a.I(new a());
            throw th2;
        }
    }

    public final void H0(final int i10, final int i11, final a.b bVar) {
        O9.b.d(new Runnable() {
            @Override
            public final void run() {
                DepthTexture.this.G0(i10, i11, bVar);
            }
        });
    }

    public void I0(int ofx, int ofy, final int w10, final int h10, final a.b extractCallback) {
        if (this.extractingRT != null) {
            throw new RuntimeException("Data extraction already running");
        }
        this.extractingRT = new FilamentRenderTarget(new RenderTarget.b().f(RenderTarget.a.COLOR, this.f79759m.C()), (FilamentTexture) null, this.f79759m);
        this.keepAliveExtractionTexture = this.f79759m;
        ByteBuffer order = ByteBuffer.allocateDirect(w10 * h10 * 4).order(ByteOrder.nativeOrder());
        this.byteBuffer = order;
        Texture.g gVar = new Texture.g(order, Texture.e.RG, Texture.k.USHORT, 1);
        this.pbd = gVar;
        gVar.b(e.a(), new Runnable() {
            @Override
            public final void run() {
                DepthTexture.this.H0(w10, h10, extractCallback);
            }
        });
        Qb.a.g().n(this.extractingRT.f(), ofx, ofy, w10, h10, this.pbd);
    }

    @Override
    public boolean J() {
        return true;
    }

    public void J0(a.b extractCallback) {
        I0(0, 0, getWidth(), getHeight(), extractCallback);
    }

    @Override
    public boolean N() {
        return false;
    }

    @Override
    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        this.f79759m.destroyImmediate();
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (isGarbage()) {
            throw new RuntimeException();
        }
        m10.q(attributeName, this.f79759m, this.f79760n);
    }

    @Override
    public FilamentTexture k() {
        return this.f79759m;
    }

    @Override
    public long q() {
        return this.f79759m.A();
    }

    @Override
    public TextureConfig.d w() {
        return TextureConfig.d.Depth;
    }

    @Override
    public void z(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        I0(ofx, ofy, w10, h10, extractCallback);
    }
}
