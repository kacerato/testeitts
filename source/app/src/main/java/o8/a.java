package O8;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import ub.g;
import ub.n;
import ub.p;
import yb.C16165b;

public class a {

    public p f16544a;

    public String f16545b;

    public String f16546c;

    public NativeFloatBuffer f16547d;

    public int f16548e;

    public int f16549f;

    public int f16550g;

    public int f16551h = 0;

    public int f16552i = 0;

    public final Object f16553j = new Object();

    public p f16554k;

    public a() {
    }

    public NativeFloatBuffer a() {
        if (this.f16547d == null) {
            this.f16544a = f();
            synchronized (this.f16553j) {
                try {
                    if (this.f16544a.H()) {
                        this.f16548e = this.f16544a.getWidth();
                        this.f16549f = this.f16544a.getHeight();
                        this.f16547d = new NativeFloatBuffer(this.f16548e * this.f16549f);
                        ColorINT colorINT = new ColorINT();
                        int i10 = 0;
                        for (int i11 = 0; i11 < this.f16548e; i11++) {
                            for (int i12 = 0; i12 < this.f16549f; i12++) {
                                this.f16544a.j(i11, i12, colorINT);
                                this.f16547d.set(i10, colorINT.r());
                                i10++;
                            }
                        }
                    }
                } finally {
                }
            }
        }
        this.f16551h = 0;
        return this.f16547d;
    }

    public p b() {
        f();
        return this.f16554k;
    }

    public float c(float x10, float y10) {
        int i10;
        float I10 = Nc.b.I(x10);
        float I11 = Nc.b.I(y10);
        if (this.f16548e > 0 && (i10 = this.f16549f) > 0) {
            int i11 = (((int) (I10 * (r0 - 1))) * i10) + ((int) (I11 * (i10 - 1)));
            NativeFloatBuffer a10 = a();
            if (a10 != null && i11 >= 0 && a10.capacity() > i11) {
                return a10.get(i11);
            }
        }
        return 0.0f;
    }

    public String d() {
        return this.f16545b;
    }

    public String e() {
        return this.f16546c;
    }

    public p f() {
        p pVar;
        synchronized (this.f16553j) {
            try {
                if (this.f16544a == null) {
                    TextureConfig textureConfig = new TextureConfig();
                    textureConfig.genMipmaps = false;
                    textureConfig.j0(TextureConfig.c.Linear);
                    textureConfig.wrap = TextureConfig.h.Clamp;
                    textureConfig.allowModifications = true;
                    g j10 = C16165b.j("@@ASSET@@/" + this.f16546c, textureConfig);
                    this.f16544a = j10;
                    this.f16548e = j10.getWidth();
                    this.f16549f = this.f16544a.getHeight();
                }
                if (this.f16554k == null) {
                    ColorINT colorINT = new ColorINT();
                    this.f16554k = new n(this.f16544a.getWidth(), this.f16544a.getHeight());
                    for (int i10 = 0; i10 < this.f16554k.getWidth(); i10++) {
                        for (int i11 = 0; i11 < this.f16554k.getHeight(); i11++) {
                            this.f16544a.j(i10, i11, colorINT);
                            colorINT.T(colorINT.r(), 1.0f, 1.0f, 1.0f);
                            this.f16554k.Y(i10, i11, colorINT);
                        }
                    }
                    this.f16554k.apply();
                }
                this.f16552i = 0;
                pVar = this.f16544a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return pVar;
    }

    public void g() {
        this.f16544a = null;
        this.f16554k = null;
    }

    public void h(String name) {
        this.f16545b = name;
    }

    public void i(String path) {
        this.f16546c = path;
    }

    public void j() {
        synchronized (this.f16553j) {
            try {
                this.f16551h++;
                int i10 = this.f16552i + 1;
                this.f16552i = i10;
                if (i10 >= 500) {
                    g();
                }
                if (this.f16551h >= 500) {
                    this.f16547d = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public a(String name, String path) {
        this.f16545b = name;
        this.f16546c = path;
    }
}
