package ub;

import JAVARuntime.Runnable;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureR8;
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

public class i extends p {

    public TextureConfig f118756m;

    public NativeTextureR8 f118757n;

    public boolean f118758o;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            if (i.this.f118757n != null) {
                try {
                    i.this.f118757n.destroyImmediate();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                i.this.f118757n = null;
            }
        }
    }

    public i(int width, int height) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            TextureConfig textureConfig = new TextureConfig();
            this.f118756m = textureConfig;
            textureConfig.allowModifications = true;
            textureConfig.genMipmaps = false;
            textureConfig.mipmapLevels = 0;
            u0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }

    private Runnable t0() {
        return new Runnable() {
            @Override
            public final void run() {
                i.this.Q();
            }
        };
    }

    private void u0() {
        if (this.f118758o || this.f118757n == null) {
            this.f118758o = false;
            NativeTextureR8 nativeTextureR8 = this.f118757n;
            if (nativeTextureR8 != null) {
                try {
                    nativeTextureR8.destroyImmediate();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f118757n = null;
            }
            TextureConfig textureConfig = this.f118756m;
            if (textureConfig == null) {
                this.f118757n = new NativeTextureR8(this.f118776c, this.f118777d, false, this.f118756m);
            } else {
                this.f118757n = new NativeTextureR8(this.f118776c, this.f118777d, textureConfig.allowModifications, this.f118756m);
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
    public static i v0(String str) {
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
                    i iVar = new i(decodeStream.getWidth(), decodeStream.getHeight());
                    for (int i10 = 0; i10 < decodeStream.getWidth(); i10++) {
                        for (int i11 = 0; i11 < decodeStream.getHeight(); i11++) {
                            iVar.Y(i10, i11, new ColorINT(decodeStream.getPixel(i10, i11)));
                        }
                    }
                    iVar.apply();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    r112.disconnect();
                    return iVar;
                }
                i iVar2 = new i(decodeStream.getWidth(), decodeStream.getHeight());
                for (int i12 = 0; i12 < decodeStream.getWidth(); i12++) {
                    for (int i13 = 0; i13 < decodeStream.getHeight(); i13++) {
                        iVar2.Y((int) ((i12 / decodeStream.getWidth()) * iVar2.getWidth()), (int) ((i13 / decodeStream.getHeight()) * iVar2.getHeight()), new ColorINT(decodeStream.getPixel(i12, i13)));
                    }
                }
                iVar2.apply();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                r112.disconnect();
                return iVar2;
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

    private void w0() {
        if (this.f118757n == null) {
            throw new IllegalStateException("Texture not loaded yet, you may need to wait for the next frame, before calling modifications");
        }
    }

    @Override
    public boolean B() {
        TextureConfig s02 = s0();
        if (s02 != null) {
            return s02.z();
        }
        return false;
    }

    @Override
    public boolean C() {
        w0();
        return this.f118757n.x();
    }

    @Override
    public boolean H() {
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        return nativeTextureR8 != null && nativeTextureR8.y();
    }

    @Override
    public boolean I() {
        return this.f118757n.z();
    }

    @Override
    public boolean J() {
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        return nativeTextureR8 != null && nativeTextureR8.A();
    }

    @Override
    public boolean N() {
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 == null) {
            return false;
        }
        return nativeTextureR8.B();
    }

    @Override
    public void S(p textureInstance, int startX, int startY, int width, int height) {
        if (textureInstance == null) {
            throw new NullPointerException("textureInstance can't be null");
        }
        u0();
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 == null) {
            throw new UnsupportedTextureOperation("Can't paint a unloaded texture");
        }
        nativeTextureR8.C(textureInstance.x(), startX, startY, width, height);
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
        TextureConfig textureConfig = this.f118756m;
        NativeTextureR8 nativeTextureR8 = new NativeTextureR8(w10, h10, textureConfig != null ? textureConfig.allowModifications : false, this.f118756m);
        NativeTextureR8 nativeTextureR82 = this.f118757n;
        if (nativeTextureR82 != null) {
            p.d y10 = p.y(nativeTextureR82);
            p.d y11 = p.y(nativeTextureR8);
            if (resizeFilter != null) {
                resizeFilter.a(y10, y11);
            }
            try {
                this.f118757n.destroyImmediate();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f118757n = nativeTextureR8;
        } else {
            this.f118757n = nativeTextureR8;
        }
        this.f118776c = w10;
        this.f118777d = h10;
        this.f118758o = false;
    }

    @Override
    public void Y(int x10, int y10, ColorINT color) {
        w0();
        this.f118757n.H(x10, y10, color);
    }

    @Override
    public void a0(int x10, int y10, float v10) {
        w0();
        this.f118757n.I(x10, y10, v10);
    }

    @Override
    public void apply() {
        u0();
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 == null) {
            throw new UnsupportedTextureOperation("Can't apply a unloaded texture");
        }
        nativeTextureR8.m0(t0());
    }

    @Override
    public void b0(int x10, int y10, float v10) {
        w0();
        this.f118757n.K(x10, y10, v10);
    }

    @Override
    public void c0(int x10, int y10, float v10) {
        w0();
        this.f118757n.M(x10, y10, v10);
    }

    @Override
    public void d0(int x10, int y10, float v10) {
        w0();
        this.f118757n.P(x10, y10, v10);
    }

    @Override
    public void destroyImmediate() {
        if (this.f118757n != null) {
            K8.a.I(new a());
        }
    }

    @Override
    public void e0(int x10, int y10, float r10, float g10, float b10) {
        w0();
        this.f118757n.D(x10, y10, r10, g10, b10);
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        if (m10 == null) {
            throw new RuntimeException("Material can`t be null");
        }
        if (isGarbage()) {
            throw new RuntimeException();
        }
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 == null) {
            throw new UnsupportedTextureOperation("Texture not renderable");
        }
        nativeTextureR8.f(m10, attributeName);
    }

    @Override
    public void f0(int x10, int y10, float r10, float g10, float b10, float a10) {
        w0();
        this.f118757n.E(x10, y10, r10, g10, b10, a10);
    }

    @Override
    public void h(File file, int quality, a.EnumC1369a exportFormat) {
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 == null) {
            throw new UnsupportedTextureOperation("Texture not loaded yet!");
        }
        nativeTextureR8.h(file, quality, exportFormat);
    }

    @Override
    public void h0(int x10, int y10, int v10) {
        w0();
        this.f118757n.J(x10, y10, v10);
    }

    @Override
    public ColorINT i(int x10, int y10) {
        w0();
        return this.f118757n.i(x10, y10);
    }

    @Override
    public void i0(int x10, int y10, int v10) {
        w0();
        this.f118757n.L(x10, y10, v10);
    }

    @Override
    public ColorINT j(int x10, int y10, ColorINT out) {
        w0();
        return this.f118757n.j(x10, y10, out);
    }

    @Override
    public void j0(int x10, int y10, int v10) {
        w0();
        this.f118757n.N(x10, y10, v10);
    }

    @Override
    public FilamentTexture k() {
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 != null) {
            return nativeTextureR8.k();
        }
        return null;
    }

    @Override
    public void k0(int x10, int y10, int v10) {
        w0();
        this.f118757n.Q(x10, y10, v10);
    }

    @Override
    public float l(int x10, int y10) {
        w0();
        return this.f118757n.l(x10, y10);
    }

    @Override
    public void l0(int x10, int y10, int r10, int g10, int b10) {
        w0();
        this.f118757n.F(x10, y10, r10, g10, b10);
    }

    @Override
    public float m(int x10, int y10) {
        w0();
        return this.f118757n.m(x10, y10);
    }

    @Override
    public void m0(int x10, int y10, int r10, int g10, int b10, int a10) {
        w0();
        this.f118757n.G(x10, y10, r10, g10, b10, a10);
    }

    @Override
    public float n(int x10, int y10) {
        w0();
        return this.f118757n.n(x10, y10);
    }

    @Override
    public void n0(boolean value) {
        TextureConfig s02 = s0();
        if (s02 != null) {
            s02.u0(value);
        }
    }

    @Override
    public float o(int x10, int y10) {
        w0();
        return this.f118757n.o(x10, y10);
    }

    @Override
    public void o0(boolean enabled) {
        this.f118757n.O(enabled);
    }

    @Override
    public long q() {
        u0();
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 != null) {
            return nativeTextureR8.p();
        }
        throw new UnsupportedTextureOperation("Texture not renderable");
    }

    @Override
    public int r(int x10, int y10) {
        w0();
        return this.f118757n.q(x10, y10);
    }

    @Override
    public int s(int x10, int y10) {
        w0();
        return this.f118757n.r(x10, y10);
    }

    public TextureConfig s0() {
        return this.f118756m;
    }

    public void setHeight(int v10) {
        if (this.f118777d != v10) {
            this.f118758o = true;
        }
        this.f118777d = v10;
    }

    public void setWidth(int v10) {
        if (this.f118776c != v10) {
            this.f118758o = true;
        }
        this.f118776c = v10;
    }

    @Override
    public int u(int x10, int y10) {
        w0();
        return this.f118757n.s(x10, y10);
    }

    @Override
    public int v(int x10, int y10) {
        w0();
        return this.f118757n.u(x10, y10);
    }

    @Override
    public TextureConfig.d w() {
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 != null) {
            return nativeTextureR8.v();
        }
        throw new UnsupportedTextureOperation("Texture is not loaded");
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.Texture.Data.a x() {
        return this.f118757n;
    }

    public void x0(TextureConfig config) {
        this.f118756m = config;
    }

    @Override
    public void z(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        NativeTextureR8 nativeTextureR8 = this.f118757n;
        if (nativeTextureR8 == null) {
            throw new RuntimeException("Texture is not renderable yet.");
        }
        nativeTextureR8.S(ofx, ofy, w10, h10, extractCallback);
    }

    public i(int width, int height, boolean allowModifications) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            TextureConfig textureConfig = new TextureConfig();
            this.f118756m = textureConfig;
            textureConfig.allowModifications = allowModifications;
            textureConfig.genMipmaps = false;
            textureConfig.mipmapLevels = 0;
            u0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }

    public i(int width, int height, TextureConfig config) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            this.f118756m = config;
            u0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }

    public i(int width, int height, TextureConfig config, boolean allowModifications) {
        if (width > 0 && height > 0) {
            this.f118776c = width;
            this.f118777d = height;
            this.f118756m = config;
            config.allowModifications = allowModifications;
            u0();
            return;
        }
        throw new InvalidTextureSizeException("Width and height can't be <= 0");
    }
}
