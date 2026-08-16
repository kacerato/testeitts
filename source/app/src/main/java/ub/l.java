package ub;

import JAVARuntime.Runnable;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.UnsupportedTextureOperation;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import ub.p;

public class l extends p {

    public com.itsmagic.engine.Engines.Engine.Texture.Data.a f118762m;

    public TextureConfig f118763n;

    public class a implements Runnable {

        public final com.itsmagic.engine.Engines.Engine.Texture.Data.a f118764b;

        public a(final com.itsmagic.engine.Engines.Engine.Texture.Data.a val$nativeTexture) {
            this.f118764b = val$nativeTexture;
        }

        @Override
        public void run() {
            this.f118764b.e(new k(l.this));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            if (l.this.f118762m != null) {
                l.this.f118762m.destroyImmediate();
                l.this.f118762m = null;
            }
        }
    }

    public l(com.itsmagic.engine.Engines.Engine.Texture.Data.a nativeTexture) {
        this(nativeTexture, null);
    }

    @Override
    public boolean B() {
        TextureConfig textureConfig = this.f118763n;
        return textureConfig != null && textureConfig.z();
    }

    @Override
    public boolean C() {
        return t0().x();
    }

    @Override
    public boolean H() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118762m;
        return aVar != null && aVar.y();
    }

    @Override
    public boolean I() {
        return t0().z();
    }

    @Override
    public boolean J() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118762m;
        return aVar != null && aVar.A();
    }

    @Override
    public boolean N() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118762m;
        return aVar != null && aVar.B();
    }

    @Override
    public void S(p textureInstance, int startX, int startY, int width, int height) {
        if (textureInstance == null) {
            throw new NullPointerException("textureInstance can't be null");
        }
        t0().C(textureInstance.x(), startX, startY, width, height);
    }

    @Override
    public void V(int w10, int h10, p.e resizeFilter) {
        throw new UnsupportedTextureOperation("ProvidedNativeTexture can't resize its provided native texture");
    }

    @Override
    public void Y(int x10, int y10, ColorINT color) {
        t0().H(x10, y10, color);
    }

    @Override
    public void a0(int x10, int y10, float v10) {
        t0().I(x10, y10, v10);
    }

    @Override
    public void apply() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a t02 = t0();
        if (K8.a.r()) {
            t02.e(new k(this));
        } else {
            K8.a.I(new a(t02));
        }
    }

    @Override
    public void b0(int x10, int y10, float v10) {
        t0().K(x10, y10, v10);
    }

    @Override
    public void c0(int x10, int y10, float v10) {
        t0().M(x10, y10, v10);
    }

    @Override
    public void d0(int x10, int y10, float v10) {
        t0().P(x10, y10, v10);
    }

    @Override
    public void destroyImmediate() {
        if (this.f118762m != null) {
            g0(true);
            K8.a.I(new b());
        }
    }

    @Override
    public void e0(int x10, int y10, float r10, float g10, float b10) {
        t0().D(x10, y10, r10, g10, b10);
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (m10 == null) {
            throw new RuntimeException("Material can`t be null");
        }
        if (isGarbage()) {
            throw new RuntimeException();
        }
        com.itsmagic.engine.Engines.Engine.Texture.Data.a t02 = t0();
        if (!t02.A()) {
            throw new UnsupportedTextureOperation("Texture not renderable");
        }
        t02.f(m10, attributeName);
    }

    @Override
    public void f0(int x10, int y10, float r10, float g10, float b10, float a10) {
        t0().E(x10, y10, r10, g10, b10, a10);
    }

    @Override
    public void h0(int x10, int y10, int v10) {
        t0().J(x10, y10, v10);
    }

    @Override
    public ColorINT i(int x10, int y10) {
        return t0().i(x10, y10);
    }

    @Override
    public void i0(int x10, int y10, int v10) {
        t0().L(x10, y10, v10);
    }

    @Override
    public ColorINT j(int x10, int y10, ColorINT out) {
        return t0().j(x10, y10, out);
    }

    @Override
    public void j0(int x10, int y10, int v10) {
        t0().N(x10, y10, v10);
    }

    @Override
    public FilamentTexture k() {
        return t0().k();
    }

    @Override
    public void k0(int x10, int y10, int v10) {
        t0().Q(x10, y10, v10);
    }

    @Override
    public float l(int x10, int y10) {
        return t0().l(x10, y10);
    }

    @Override
    public void l0(int x10, int y10, int r10, int g10, int b10) {
        t0().F(x10, y10, r10, g10, b10);
    }

    @Override
    public float m(int x10, int y10) {
        return t0().m(x10, y10);
    }

    @Override
    public void m0(int x10, int y10, int r10, int g10, int b10, int a10) {
        t0().G(x10, y10, r10, g10, b10, a10);
    }

    @Override
    public float n(int x10, int y10) {
        return t0().n(x10, y10);
    }

    @Override
    public void n0(boolean value) {
        TextureConfig textureConfig = this.f118763n;
        if (textureConfig != null) {
            textureConfig.u0(value);
        }
    }

    @Override
    public float o(int x10, int y10) {
        return t0().o(x10, y10);
    }

    @Override
    public void o0(boolean enabled) {
        t0().O(enabled);
    }

    @Override
    public long q() {
        return t0().p();
    }

    @Override
    public int r(int x10, int y10) {
        return t0().q(x10, y10);
    }

    @Override
    public int s(int x10, int y10) {
        return t0().r(x10, y10);
    }

    public TextureConfig s0() {
        return this.f118763n;
    }

    public final com.itsmagic.engine.Engines.Engine.Texture.Data.a t0() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118762m;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("Texture not loaded yet");
    }

    @Override
    public int u(int x10, int y10) {
        return t0().s(x10, y10);
    }

    public void u0(com.itsmagic.engine.Engines.Engine.Texture.Data.a nativeTexture) {
        v0(nativeTexture, this.f118763n);
    }

    @Override
    public int v(int x10, int y10) {
        return t0().u(x10, y10);
    }

    public void v0(com.itsmagic.engine.Engines.Engine.Texture.Data.a nativeTexture, TextureConfig config) {
        if (nativeTexture == null) {
            throw new NullPointerException("nativeTexture can't be null");
        }
        this.f118762m = nativeTexture;
        if (config == null) {
            config = new TextureConfig();
        }
        this.f118763n = config;
        this.f118776c = nativeTexture.getWidth();
        this.f118777d = nativeTexture.getHeight();
        g0(false);
    }

    @Override
    public TextureConfig.d w() {
        return t0().v();
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.Texture.Data.a x() {
        return t0();
    }

    @Override
    public void z(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        t0().S(ofx, ofy, w10, h10, extractCallback);
    }

    public l(com.itsmagic.engine.Engines.Engine.Texture.Data.a nativeTexture, TextureConfig config) {
        v0(nativeTexture, config);
    }
}
