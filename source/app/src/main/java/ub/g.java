package ub;

import JAVARuntime.Texture;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureR8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGB8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGBA8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.UnsupportedTextureOperation;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import java.io.File;
import ub.p;
import yb.C16165b;

public class g extends p {

    public String f118744m;

    public String f118745n;

    public boolean f118746o;

    public TextureConfig f118747p;

    public TextureConfig f118748q;

    public com.itsmagic.engine.Engines.Engine.Texture.Data.a f118749r;

    public class a implements Runnable {

        public final boolean f118750b;

        public a(final boolean val$applyOGL) {
            this.f118750b = val$applyOGL;
        }

        @Override
        public void run() {
            try {
                g.this.y0(this.f118750b);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            g.this.f118749r.e(g.this.v0());
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            if (g.this.f118749r != null) {
                try {
                    g.this.f118749r.destroyImmediate();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                g.this.f118749r = null;
            }
        }
    }

    public static class d {

        public static final int[] f118754a;

        static {
            int[] iArr = new int[TextureConfig.d.values().length];
            f118754a = iArr;
            try {
                iArr[TextureConfig.d.R8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f118754a[TextureConfig.d.RGBA8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f118754a[TextureConfig.d.RGB8.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public g(File ioFile) {
        this.f118746o = false;
        if (ioFile != null) {
            if (ioFile.exists()) {
                this.f118746o = true;
                this.f118744m = ioFile.getAbsolutePath();
                y0(true);
                return;
            } else {
                throw new RuntimeException("File not found:" + ioFile.getAbsolutePath());
            }
        }
        throw new RuntimeException("null file");
    }

    public static g B0(String file) {
        return C16165b.i(file);
    }

    public static boolean w0(Texture texture) {
        if (texture != null) {
            return x0(texture.instance);
        }
        return false;
    }

    public static boolean x0(p texture) {
        if (texture == null || !(texture instanceof g)) {
            return false;
        }
        g gVar = (g) texture;
        return gVar.u0() != null && gVar.u0().type == TextureConfig.f.Sprite;
    }

    @Override
    public boolean B() {
        TextureConfig u02 = u0();
        if (u02 != null) {
            return u02.z();
        }
        return false;
    }

    @Override
    public boolean C() {
        F0();
        return this.f118749r.x();
    }

    public void C0(TextureConfig config) {
    }

    public TextureConfig D0() {
        TextureConfig textureConfig = this.f118748q;
        if (textureConfig != null) {
            this.f118747p = textureConfig;
            return textureConfig;
        }
        this.f118747p = null;
        return u0();
    }

    public void E0() {
        this.f118747p = null;
        u0();
        this.f118745n = null;
        y0(true);
    }

    public final void F0() {
        if (this.f118749r == null) {
            throw new IllegalStateException("Texture not loaded yet, you may need to wait for the next frame, before calling modifications");
        }
    }

    @Override
    public boolean H() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        return aVar != null && aVar.y();
    }

    @Override
    public boolean I() {
        return this.f118749r.z();
    }

    @Override
    public boolean J() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        return aVar != null && aVar.A();
    }

    @Override
    public boolean N() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        if (aVar == null) {
            return false;
        }
        return aVar.B();
    }

    @Override
    public void S(p textureInstance, int startX, int startY, int width, int height) {
        if (textureInstance == null) {
            throw new NullPointerException("textureInstance can't be null");
        }
        y0(true);
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        if (aVar == null) {
            throw new UnsupportedTextureOperation("Can't paint a unloaded texture");
        }
        aVar.C(textureInstance.x(), startX, startY, width, height);
    }

    @Override
    public void V(int w10, int h10, p.e resizeFilter) {
        throw new UnsupportedTextureOperation("Can't resize textures loaded from a file, copy pixels to a new resized texture");
    }

    @Override
    public void Y(int x10, int y10, ColorINT color) {
        F0();
        this.f118749r.H(x10, y10, color);
    }

    @Override
    public void a0(int x10, int y10, float v10) {
        F0();
        this.f118749r.I(x10, y10, v10);
    }

    @Override
    public void apply() {
        y0(true);
        if (this.f118749r == null) {
            throw new UnsupportedTextureOperation("Can't apply a unloaded texture");
        }
        Z(true);
        if (K8.a.r()) {
            this.f118749r.e(v0());
        } else {
            K8.a.I(new b());
        }
    }

    @Override
    public void b0(int x10, int y10, float v10) {
        F0();
        this.f118749r.K(x10, y10, v10);
    }

    @Override
    public void c0(int x10, int y10, float v10) {
        F0();
        this.f118749r.M(x10, y10, v10);
    }

    @Override
    public void d0(int x10, int y10, float v10) {
        F0();
        this.f118749r.P(x10, y10, v10);
    }

    @Override
    public void destroyImmediate() {
        if (this.f118749r != null) {
            K8.a.I(new c());
        }
    }

    @Override
    public void e0(int x10, int y10, float r10, float g10, float b10) {
        F0();
        this.f118749r.D(x10, y10, r10, g10, b10);
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (m10 == null) {
            throw new RuntimeException("Material can`t be null");
        }
        if (isGarbage()) {
            throw new RuntimeException();
        }
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        if (aVar == null || !aVar.A()) {
            throw new UnsupportedTextureOperation("Texture not renderable");
        }
        this.f118749r.f(m10, attributeName);
    }

    @Override
    public void f0(int x10, int y10, float r10, float g10, float b10, float a10) {
        F0();
        this.f118749r.E(x10, y10, r10, g10, b10, a10);
    }

    public String getFile() {
        return this.f118744m;
    }

    @Override
    public int getHeight() {
        F0();
        return this.f118749r.getHeight();
    }

    @Override
    public int getWidth() {
        F0();
        return this.f118749r.getWidth();
    }

    @Override
    public void h(File file, int quality, a.EnumC1369a exportFormat) {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        if (aVar == null) {
            throw new UnsupportedTextureOperation("Texture not loaded yet!");
        }
        aVar.h(file, quality, exportFormat);
    }

    @Override
    public void h0(int x10, int y10, int v10) {
        F0();
        this.f118749r.J(x10, y10, v10);
    }

    @Override
    public ColorINT i(int x10, int y10) {
        F0();
        return this.f118749r.i(x10, y10);
    }

    @Override
    public void i0(int x10, int y10, int v10) {
        F0();
        this.f118749r.L(x10, y10, v10);
    }

    @Override
    public ColorINT j(int x10, int y10, ColorINT out) {
        F0();
        return this.f118749r.j(x10, y10, out);
    }

    @Override
    public void j0(int x10, int y10, int v10) {
        F0();
        this.f118749r.N(x10, y10, v10);
    }

    @Override
    public FilamentTexture k() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        if (aVar != null) {
            return aVar.k();
        }
        return null;
    }

    @Override
    public void k0(int x10, int y10, int v10) {
        F0();
        this.f118749r.Q(x10, y10, v10);
    }

    @Override
    public float l(int x10, int y10) {
        F0();
        return this.f118749r.l(x10, y10);
    }

    @Override
    public void l0(int x10, int y10, int r10, int g10, int b10) {
        F0();
        this.f118749r.F(x10, y10, r10, g10, b10);
    }

    @Override
    public float m(int x10, int y10) {
        F0();
        return this.f118749r.m(x10, y10);
    }

    @Override
    public void m0(int x10, int y10, int r10, int g10, int b10, int a10) {
        F0();
        this.f118749r.G(x10, y10, r10, g10, b10, a10);
    }

    @Override
    public float n(int x10, int y10) {
        F0();
        return this.f118749r.n(x10, y10);
    }

    @Override
    public void n0(boolean value) {
        TextureConfig u02 = u0();
        if (u02 != null) {
            u02.u0(value);
        }
    }

    @Override
    public float o(int x10, int y10) {
        F0();
        return this.f118749r.o(x10, y10);
    }

    @Override
    public void o0(boolean enabled) {
        this.f118749r.O(enabled);
    }

    @Override
    public long q() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        if (aVar != null) {
            return aVar.p();
        }
        throw new UnsupportedTextureOperation("Texture not renderable");
    }

    @Override
    public int r(int x10, int y10) {
        F0();
        return this.f118749r.q(x10, y10);
    }

    @Override
    public int s(int x10, int y10) {
        F0();
        return this.f118749r.r(x10, y10);
    }

    @Override
    public int u(int x10, int y10) {
        F0();
        return this.f118749r.s(x10, y10);
    }

    public TextureConfig u0() {
        TextureConfig textureConfig = this.f118748q;
        if (textureConfig != null) {
            this.f118747p = textureConfig;
            return textureConfig;
        }
        if (this.f118747p == null) {
            this.f118747p = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.q(this.f118744m, N7.c.t(), this.f118746o);
        }
        if (this.f118747p == null) {
            this.f118747p = new TextureConfig();
        }
        C0(this.f118747p);
        return this.f118747p;
    }

    @Override
    public int v(int x10, int y10) {
        F0();
        return this.f118749r.u(x10, y10);
    }

    public final Runnable v0() {
        return new Runnable() {
            @Override
            public final void run() {
                g.this.Q();
            }
        };
    }

    @Override
    public TextureConfig.d w() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        if (aVar != null) {
            return aVar.v();
        }
        throw new UnsupportedTextureOperation("Texture is not loaded");
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.Texture.Data.a x() {
        return this.f118749r;
    }

    public final void y0(boolean applyOGL) {
        String str = this.f118745n;
        if (str != null && (str.isEmpty() || !this.f118745n.equals(this.f118744m))) {
            D0();
        }
        String str2 = this.f118745n;
        if (str2 == null || str2.isEmpty() || !this.f118745n.equals(this.f118744m)) {
            this.f118745n = this.f118744m;
            u0();
            com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
            if (aVar != null) {
                try {
                    aVar.destroyImmediate();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f118749r = null;
            }
            int i10 = d.f118754a[this.f118747p.i().ordinal()];
            if (i10 == 1) {
                if (this.f118746o) {
                    this.f118749r = NativeTextureR8.B0(N7.c.t(), this.f118744m, applyOGL, u0(), v0());
                    return;
                } else {
                    this.f118749r = NativeTextureR8.y0(N7.c.t(), this.f118744m, applyOGL, u0(), v0());
                    return;
                }
            }
            if (i10 == 2) {
                if (this.f118746o) {
                    this.f118749r = NativeTextureRGBA8.W0(N7.c.t(), this.f118744m, applyOGL, u0(), v0());
                    return;
                } else {
                    this.f118749r = NativeTextureRGBA8.U0(N7.c.t(), this.f118744m, applyOGL, u0(), v0());
                    return;
                }
            }
            if (i10 != 3) {
                throw new RuntimeException("Invalid format " + ((Object) this.f118747p.l()));
            }
            if (this.f118746o) {
                this.f118749r = NativeTextureRGB8.L0(N7.c.t(), this.f118744m, applyOGL, u0(), v0());
            } else {
                this.f118749r = NativeTextureRGB8.J0(N7.c.t(), this.f118744m, applyOGL, u0(), v0());
            }
        }
    }

    @Override
    public void z(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118749r;
        if (aVar == null) {
            throw new RuntimeException("Texture is not renderable yet.");
        }
        aVar.S(ofx, ofy, w10, h10, extractCallback);
    }

    public final void z0(boolean applyOGL) {
        O9.b.d(new a(applyOGL));
    }

    public g(File ioFile, TextureConfig config) {
        this.f118746o = false;
        if (ioFile != null) {
            if (ioFile.exists()) {
                this.f118747p = config;
                if (config != null) {
                    this.f118748q = config;
                }
                this.f118746o = true;
                this.f118744m = ioFile.getAbsolutePath();
                y0(true);
                return;
            }
            throw new RuntimeException("File not found:" + ioFile.getAbsolutePath());
        }
        throw new RuntimeException("null file");
    }

    public g(File ioFile, TextureConfig config, boolean applyOGL, boolean async) {
        this.f118746o = false;
        if (ioFile != null) {
            if (ioFile.exists()) {
                this.f118747p = config;
                if (config != null) {
                    this.f118748q = config;
                }
                this.f118746o = true;
                this.f118744m = ioFile.getAbsolutePath();
                if (!async) {
                    y0(applyOGL);
                    return;
                } else {
                    z0(applyOGL);
                    return;
                }
            }
            throw new RuntimeException("File not found:" + ioFile.getAbsolutePath());
        }
        throw new RuntimeException("null file");
    }

    public g(String file) {
        this.f118746o = false;
        this.f118744m = file;
        if (file != null && !file.isEmpty()) {
            y0(true);
            return;
        }
        throw new IllegalArgumentException("File can't be null or empty");
    }

    public g(String file, TextureConfig config) {
        this.f118746o = false;
        this.f118744m = file;
        this.f118747p = config;
        if (config != null) {
            this.f118748q = config;
        }
        if (file != null && !file.isEmpty()) {
            y0(true);
            return;
        }
        throw new IllegalArgumentException("File can't be null or empty");
    }

    public g(String file, TextureConfig config, boolean applyOGL) {
        this.f118746o = false;
        this.f118744m = file;
        this.f118747p = config;
        if (config != null) {
            this.f118748q = config;
        }
        if (file != null && !file.isEmpty()) {
            y0(applyOGL);
            return;
        }
        throw new IllegalArgumentException("File can't be null or empty");
    }

    public g(String file, TextureConfig config, boolean applyOGL, boolean async) {
        this.f118746o = false;
        this.f118744m = file;
        this.f118747p = config;
        if (config != null) {
            this.f118748q = config;
        }
        if (file == null || file.isEmpty()) {
            throw new IllegalArgumentException("File can't be null or empty");
        }
        if (!async) {
            y0(applyOGL);
        } else {
            z0(applyOGL);
        }
    }

    public g(File ioFile, boolean fromRenderTexture) {
        this.f118746o = false;
        if (ioFile != null) {
            if (ioFile.exists()) {
                this.f118746o = true;
                this.f118744m = ioFile.getAbsolutePath();
                return;
            } else {
                throw new RuntimeException("File not found:" + ioFile.getAbsolutePath());
            }
        }
        throw new RuntimeException("null file");
    }

    public g(String file, boolean fromRenderTexture) {
        this.f118746o = false;
        this.f118744m = file;
        if (file == null || file.isEmpty()) {
            throw new IllegalArgumentException("File can't be null or empty");
        }
    }
}
