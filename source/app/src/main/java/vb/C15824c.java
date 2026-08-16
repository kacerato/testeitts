package vb;

import androidx.annotation.IntRange;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;

public class C15824c extends AbstractC15822a {

    public final int f121438a;

    public final int f121439b;

    public final int f121440c;

    public final TextureSampler f121441d;

    public final FilamentTexture f121442e;

    public final ColorINT f121443f = new ColorINT();

    public NativeByteBuffer f121444g;

    public C15824c(int width, int height, int depth) {
        if (width <= 0 || height <= 0 || depth <= 0) {
            throw new IllegalArgumentException("Width, height and depth must be greater than zero");
        }
        Qb.a.d();
        K8.a.G();
        this.f121438a = width;
        this.f121439b = height;
        this.f121440c = depth;
        TextureSampler textureSampler = new TextureSampler(TextureSampler.e.LINEAR, TextureSampler.d.LINEAR, TextureSampler.f.CLAMP_TO_EDGE);
        this.f121441d = textureSampler;
        this.f121444g = new NativeByteBuffer(width * height * depth * 4);
        Texture.e eVar = Texture.e.RGBA;
        Texture.k kVar = Texture.k.UBYTE;
        Texture.f fVar = Texture.f.RGBA8;
        this.f121442e = new FilamentTexture(width, height, eVar, kVar, fVar, new Texture.a().d(fVar).b(depth), textureSampler, 0, 24, d(), depth);
        h(0, 0, 0, 255);
    }

    private static Texture.i d() {
        try {
            return Texture.i.valueOf("SAMPLER_2D_ARRAY");
        } catch (IllegalArgumentException e10) {
            throw new IllegalStateException("Filament does not support 2D array textures in this runtime", e10);
        }
    }

    public static int e(byte value) {
        return value & 255;
    }

    public static byte g(int value) {
        return (byte) (value & 255);
    }

    @Override
    public void a(FilamentMaterial material, String attributeName) {
        if (material == null) {
            throw new NullPointerException("material can't be null");
        }
        if (attributeName == null || attributeName.isEmpty()) {
            throw new IllegalArgumentException("attributeName can't be null or empty");
        }
        material.q(attributeName, this.f121442e, this.f121441d);
    }

    @Override
    public FilamentTexture b() {
        return this.f121442e;
    }

    public void c() {
        K8.a.G();
        this.f121442e.J(0, 0, 0, 0, this.f121438a, this.f121439b, this.f121440c, this.f121444g);
    }

    public void f() {
        Qb.a.d();
        K8.a.G();
        NativeByteBuffer nativeByteBuffer = this.f121444g;
        if (nativeByteBuffer != null) {
            nativeByteBuffer.destroyImmediate();
            this.f121444g = null;
        }
        FilamentTexture filamentTexture = this.f121442e;
        if (filamentTexture != null) {
            filamentTexture.destroyImmediate();
        }
    }

    public void h(int r10, int g10, int b10, int a10) {
        for (int i10 = 0; i10 < this.f121440c; i10++) {
            for (int i11 = 0; i11 < this.f121439b; i11++) {
                for (int i12 = 0; i12 < this.f121438a; i12++) {
                    int o10 = o(i12, i11, i10);
                    this.f121444g.set(o10, g(a10));
                    this.f121444g.set(o10 + 1, g(r10));
                    this.f121444g.set(o10 + 2, g(g10));
                    this.f121444g.set(o10 + 3, g(b10));
                }
            }
        }
        c();
    }

    public ColorINT i(int x10, int y10, int z10) {
        ColorINT colorINT = new ColorINT();
        j(x10, y10, z10, colorINT);
        return colorINT;
    }

    public ColorINT j(int x10, int y10, int z10, ColorINT out) {
        p(x10, y10, z10);
        int o10 = o(x10, y10, z10);
        out.Y(e(this.f121444g.get(o10)), e(this.f121444g.get(o10 + 1)), e(this.f121444g.get(o10 + 2)), e(this.f121444g.get(o10 + 3)));
        return out;
    }

    public int k() {
        return this.f121440c;
    }

    public int l() {
        return this.f121439b;
    }

    public int m() {
        return this.f121438a;
    }

    public boolean n() {
        FilamentTexture filamentTexture = this.f121442e;
        return filamentTexture != null && filamentTexture.D();
    }

    public final int o(@IntRange(from = 0) int x10, @IntRange(from = 0) int y10, @IntRange(from = 0) int z10) {
        return ((((z10 * this.f121439b) + y10) * this.f121438a) + x10) * 4;
    }

    public final void p(int x10, int y10, int z10) {
        if (x10 < 0 || x10 >= this.f121438a) {
            throw new IndexOutOfBoundsException("x out of bounds");
        }
        if (y10 < 0 || y10 >= this.f121439b) {
            throw new IndexOutOfBoundsException("y out of bounds");
        }
        if (z10 < 0 || z10 >= this.f121440c) {
            throw new IndexOutOfBoundsException("z out of bounds");
        }
    }

    public void q(int x10, int y10, int z10, ColorINT color) {
        if (color == null) {
            throw new NullPointerException("color can't be null");
        }
        y(x10, y10, z10, color.C(), color.x(), color.p(), color.o());
    }

    public void r(int x10, int y10, int z10, float r10, float g10, float b10) {
        s(x10, y10, z10, r10, g10, b10, 1.0f);
    }

    public void s(int x10, int y10, int z10, float r10, float g10, float b10, float a10) {
        this.f121443f.T(a10, r10, g10, b10);
        q(x10, y10, z10, this.f121443f);
    }

    public void t(int x10, int y10, int z10, int v10) {
        p(x10, y10, z10);
        this.f121444g.set(o(x10, y10, z10), g(v10));
        c();
    }

    public void u(int x10, int y10, int z10, int v10) {
        p(x10, y10, z10);
        this.f121444g.set(o(x10, y10, z10) + 3, g(v10));
        c();
    }

    public void v(int x10, int y10, int z10, int v10) {
        p(x10, y10, z10);
        this.f121444g.set(o(x10, y10, z10) + 2, g(v10));
        c();
    }

    public void w(int x10, int y10, int z10, int v10) {
        p(x10, y10, z10);
        this.f121444g.set(o(x10, y10, z10) + 1, g(v10));
        c();
    }

    public void x(int x10, int y10, int z10, int r10, int g10, int b10) {
        y(x10, y10, z10, r10, g10, b10, 255);
    }

    public void y(int x10, int y10, int z10, int r10, int g10, int b10, int a10) {
        p(x10, y10, z10);
        int o10 = o(x10, y10, z10);
        this.f121444g.set(o10, g(a10));
        this.f121444g.set(o10 + 1, g(r10));
        this.f121444g.set(o10 + 2, g(g10));
        this.f121444g.set(o10 + 3, g(b10));
        c();
    }
}
