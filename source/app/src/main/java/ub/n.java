package ub;

import JAVARuntime.Runnable;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureR32F;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureR8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGB8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGBA8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.InvalidTextureSizeException;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.UnsupportedTextureOperation;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import ub.p;

public class n extends p {

    public TextureConfig f118768m;

    public com.itsmagic.engine.Engines.Engine.Texture.Data.a f118769n;

    public boolean f118770o;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            n.this.f118769n.e(n.this.u0());
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            if (n.this.f118769n != null) {
                try {
                    n.this.f118769n.destroyImmediate();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                n.this.f118769n = null;
            }
        }
    }

    public static class c {

        public static final int[] f118773a;

        static {
            int[] iArr = new int[TextureConfig.d.values().length];
            f118773a = iArr;
            try {
                iArr[TextureConfig.d.R8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f118773a[TextureConfig.d.RGBA8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f118773a[TextureConfig.d.RGB8.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f118773a[TextureConfig.d.R32F.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public n(int width, int height) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            TextureConfig textureConfig = new TextureConfig();
            this.f118768m = textureConfig;
            textureConfig.genMipmaps = false;
            textureConfig.allowModifications = true;
            v0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }

    public Runnable u0() {
        return new Runnable() {
            @Override
            public final void run() {
                n.this.Q();
            }
        };
    }

    private void v0() {
        if (this.f118770o || this.f118769n == null) {
            this.f118770o = false;
            com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
            if (aVar != null) {
                try {
                    aVar.destroyImmediate();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f118769n = null;
            }
            TextureConfig textureConfig = this.f118768m;
            if (textureConfig == null) {
                this.f118769n = new NativeTextureRGBA8(this.f118776c, this.f118777d, false, this.f118768m);
                return;
            }
            boolean z10 = textureConfig.allowModifications;
            int i10 = c.f118773a[textureConfig.l().ordinal()];
            if (i10 == 1) {
                this.f118769n = new NativeTextureR8(this.f118776c, this.f118777d, z10, this.f118768m);
                return;
            }
            if (i10 == 2) {
                this.f118769n = new NativeTextureRGBA8(this.f118776c, this.f118777d, z10, this.f118768m);
                return;
            }
            if (i10 == 3) {
                this.f118769n = new NativeTextureRGB8(this.f118776c, this.f118777d, z10, this.f118768m);
            } else {
                if (i10 == 4) {
                    this.f118769n = new NativeTextureR32F(this.f118776c, this.f118777d, z10, this.f118768m);
                    return;
                }
                throw new RuntimeException("Invalid format " + ((Object) this.f118768m.l()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static n w0(String str) {
        ?? r11;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2 = null;
        try {
            ?? r112 = (HttpURLConnection) new URL(str).openConnection();
            try {
                r112.setConnectTimeout(60000);
                r112.setReadTimeout(60000);
                r112.setInstanceFollowRedirects(true);
                r112.connect();
                if (r112.getResponseCode() != 200) {
                    throw new IOException("HTTP Error: " + r112.getResponseCode());
                }
                InputStream inputStream = r112.getInputStream();
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                if (decodeStream == null) {
                    throw new RuntimeException("No image decoded from url");
                }
                int K10 = Nc.b.K(decodeStream.getWidth(), 4096);
                int K11 = Nc.b.K(decodeStream.getHeight(), 4096);
                if (K10 == decodeStream.getWidth() && K11 == decodeStream.getHeight()) {
                    n nVar = new n(decodeStream.getWidth(), decodeStream.getHeight());
                    for (int i10 = 0; i10 < decodeStream.getWidth(); i10++) {
                        for (int i11 = 0; i11 < decodeStream.getHeight(); i11++) {
                            nVar.Y(i10, i11, new ColorINT(decodeStream.getPixel(i10, i11)));
                        }
                    }
                    nVar.apply();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    r112.disconnect();
                    return nVar;
                }
                n nVar2 = new n(decodeStream.getWidth(), decodeStream.getHeight());
                for (int i12 = 0; i12 < decodeStream.getWidth(); i12++) {
                    for (int i13 = 0; i13 < decodeStream.getHeight(); i13++) {
                        nVar2.Y((int) ((i12 / decodeStream.getWidth()) * nVar2.getWidth()), (int) ((i13 / decodeStream.getHeight()) * nVar2.getHeight()), new ColorINT(decodeStream.getPixel(i12, i13)));
                    }
                }
                nVar2.apply();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                r112.disconnect();
                return nVar2;
            } catch (Exception e10) {
                e = e10;
                autoCloseable2 = r112;
                autoCloseable = null;
                try {
                    throw new RuntimeException(e);
                } catch (Throwable th2) {
                    th = th2;
                    AutoCloseable autoCloseable3 = autoCloseable2;
                    autoCloseable2 = autoCloseable;
                    r11 = autoCloseable3;
                    if (autoCloseable2 != null) {
                        try {
                            autoCloseable2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    if (r11 != 0) {
                        throw th;
                    }
                    r11.disconnect();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                r11 = r112;
                if (autoCloseable2 != null) {
                }
                if (r11 != 0) {
                }
            }
        } catch (Exception e11) {
            e = e11;
            autoCloseable = null;
        } catch (Throwable th4) {
            th = th4;
            r11 = 0;
        }
    }

    private void x0() {
        if (this.f118769n == null) {
            throw new IllegalStateException("Texture not loaded yet, you may need to wait for the next frame, before calling modifications");
        }
    }

    @Override
    public boolean B() {
        TextureConfig t02 = t0();
        if (t02 != null) {
            return t02.z();
        }
        return false;
    }

    @Override
    public boolean C() {
        x0();
        return this.f118769n.x();
    }

    @Override
    public boolean H() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        return aVar != null && aVar.y();
    }

    @Override
    public boolean I() {
        return this.f118769n.z();
    }

    @Override
    public boolean J() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        return aVar != null && aVar.A();
    }

    @Override
    public boolean N() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
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
        v0();
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        if (aVar == null) {
            throw new UnsupportedTextureOperation("Can't paint a unloaded texture");
        }
        aVar.C(textureInstance.x(), startX, startY, width, height);
    }

    @Override
    public void V(int w10, int h10, p.e resizeFilter) {
        if (!H()) {
            throw new UnsupportedTextureOperation("Can't resize a unloaded texture, you may need to wait a frame?");
        }
        if (w10 <= 0) {
            throw new RuntimeException("width can't be <= 0");
        }
        if (h10 <= 0) {
            throw new RuntimeException("height can't be <= 0");
        }
        TextureConfig textureConfig = this.f118768m;
        NativeTextureRGBA8 nativeTextureRGBA8 = new NativeTextureRGBA8(w10, h10, textureConfig != null ? textureConfig.allowModifications : false, this.f118768m);
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        if (aVar != null) {
            p.d y10 = p.y(aVar);
            p.d y11 = p.y(nativeTextureRGBA8);
            if (resizeFilter != null) {
                resizeFilter.a(y10, y11);
            }
            try {
                this.f118769n.destroyImmediate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f118769n = nativeTextureRGBA8;
        } else {
            this.f118769n = nativeTextureRGBA8;
        }
        this.f118776c = w10;
        this.f118777d = h10;
        this.f118770o = false;
    }

    @Override
    public void Y(int x10, int y10, ColorINT color) {
        x0();
        this.f118769n.H(x10, y10, color);
    }

    @Override
    public void a0(int x10, int y10, float v10) {
        x0();
        this.f118769n.I(x10, y10, v10);
    }

    @Override
    public void apply() {
        v0();
        if (this.f118769n == null) {
            throw new UnsupportedTextureOperation("Can't apply a unloaded texture");
        }
        K8.a.I(new a());
    }

    @Override
    public void b0(int x10, int y10, float v10) {
        x0();
        this.f118769n.K(x10, y10, v10);
    }

    @Override
    public void c0(int x10, int y10, float v10) {
        x0();
        this.f118769n.M(x10, y10, v10);
    }

    @Override
    public void d0(int x10, int y10, float v10) {
        x0();
        this.f118769n.P(x10, y10, v10);
    }

    @Override
    public void destroyImmediate() {
        if (this.f118769n != null) {
            K8.a.I(new b());
        }
    }

    @Override
    public void e0(int x10, int y10, float r10, float g10, float b10) {
        x0();
        this.f118769n.D(x10, y10, r10, g10, b10);
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (m10 == null) {
            throw new RuntimeException("Material can`t be null");
        }
        if (isGarbage()) {
            throw new RuntimeException();
        }
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        if (aVar == null || !aVar.A()) {
            throw new UnsupportedTextureOperation("Texture not renderable");
        }
        this.f118769n.f(m10, attributeName);
    }

    @Override
    public void f0(int x10, int y10, float r10, float g10, float b10, float a10) {
        x0();
        this.f118769n.E(x10, y10, r10, g10, b10, a10);
    }

    @Override
    public void h(File file, int quality, a.EnumC1369a exportFormat) {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        if (aVar == null) {
            throw new UnsupportedTextureOperation("Texture not loaded yet!");
        }
        aVar.h(file, quality, exportFormat);
    }

    @Override
    public void h0(int x10, int y10, int v10) {
        x0();
        this.f118769n.J(x10, y10, v10);
    }

    @Override
    public ColorINT i(int x10, int y10) {
        x0();
        return this.f118769n.i(x10, y10);
    }

    @Override
    public void i0(int x10, int y10, int v10) {
        x0();
        this.f118769n.L(x10, y10, v10);
    }

    @Override
    public ColorINT j(int x10, int y10, ColorINT out) {
        x0();
        return this.f118769n.j(x10, y10, out);
    }

    @Override
    public void j0(int x10, int y10, int v10) {
        x0();
        this.f118769n.N(x10, y10, v10);
    }

    @Override
    public FilamentTexture k() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        if (aVar != null) {
            return aVar.k();
        }
        return null;
    }

    @Override
    public void k0(int x10, int y10, int v10) {
        x0();
        this.f118769n.Q(x10, y10, v10);
    }

    @Override
    public float l(int x10, int y10) {
        x0();
        return this.f118769n.l(x10, y10);
    }

    @Override
    public void l0(int x10, int y10, int r10, int g10, int b10) {
        x0();
        this.f118769n.F(x10, y10, r10, g10, b10);
    }

    @Override
    public float m(int x10, int y10) {
        x0();
        return this.f118769n.m(x10, y10);
    }

    @Override
    public void m0(int x10, int y10, int r10, int g10, int b10, int a10) {
        x0();
        this.f118769n.G(x10, y10, r10, g10, b10, a10);
    }

    @Override
    public float n(int x10, int y10) {
        x0();
        return this.f118769n.n(x10, y10);
    }

    @Override
    public void n0(boolean value) {
        TextureConfig t02 = t0();
        if (t02 != null) {
            t02.u0(value);
        }
    }

    @Override
    public float o(int x10, int y10) {
        x0();
        return this.f118769n.o(x10, y10);
    }

    @Override
    public void o0(boolean enabled) {
        this.f118769n.O(enabled);
    }

    @Override
    public long q() {
        v0();
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        if (aVar != null) {
            return aVar.p();
        }
        throw new UnsupportedTextureOperation("Texture not renderable");
    }

    @Override
    public int r(int x10, int y10) {
        x0();
        return this.f118769n.q(x10, y10);
    }

    @Override
    public int s(int x10, int y10) {
        x0();
        return this.f118769n.r(x10, y10);
    }

    public void setHeight(int v10) {
        if (this.f118777d != v10) {
            this.f118770o = true;
        }
        this.f118777d = v10;
    }

    public void setWidth(int v10) {
        if (this.f118776c != v10) {
            this.f118770o = true;
        }
        this.f118776c = v10;
    }

    public TextureConfig t0() {
        return this.f118768m;
    }

    @Override
    public int u(int x10, int y10) {
        x0();
        return this.f118769n.s(x10, y10);
    }

    @Override
    public int v(int x10, int y10) {
        x0();
        return this.f118769n.u(x10, y10);
    }

    @Override
    public TextureConfig.d w() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        if (aVar != null) {
            return aVar.v();
        }
        throw new UnsupportedTextureOperation("Texture is not loaded");
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.Texture.Data.a x() {
        return this.f118769n;
    }

    public void y0(TextureConfig config) {
        this.f118768m = config;
    }

    @Override
    public void z(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118769n;
        if (aVar == null) {
            throw new RuntimeException("Texture is not renderable yet.");
        }
        aVar.S(ofx, ofy, w10, h10, extractCallback);
    }

    public n(int width, int height, boolean allowModifications) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            TextureConfig textureConfig = new TextureConfig();
            this.f118768m = textureConfig;
            textureConfig.genMipmaps = false;
            textureConfig.allowModifications = allowModifications;
            v0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }

    public n(int width, int height, boolean allowModifications, boolean gammaCorrection) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            TextureConfig textureConfig = new TextureConfig();
            this.f118768m = textureConfig;
            textureConfig.genMipmaps = false;
            textureConfig.allowModifications = allowModifications;
            textureConfig.gammaCorrection = gammaCorrection;
            v0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }

    public n(int width, int height, TextureConfig config) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            this.f118768m = config;
            v0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }

    public n(int width, int height, TextureConfig config, boolean allowModifications) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            this.f118768m = config;
            config.allowModifications = allowModifications;
            v0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }
}
