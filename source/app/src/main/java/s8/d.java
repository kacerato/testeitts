package S8;

import com.google.android.filament.Box;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentSkinningBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;

public class d {

    public final int f23006a;

    public final NativeFloatBuffer f23007b;

    public final FilamentSkinningBuffer f23008c;

    public final Box f23009d = new Box();

    public final Vector3 f23010e = new Vector3();

    public float f23011f;

    public boolean f23012g;

    public d(int boneCount, float[] identityMatrix) {
        if (boneCount > 256) {
            throw new IndexOutOfBoundsException("Can`t be more than 256 bones");
        }
        this.f23006a = boneCount;
        this.f23008c = new FilamentSkinningBuffer(256);
        this.f23007b = new NativeFloatBuffer(boneCount * 16);
        for (int i10 = 0; i10 < boneCount; i10++) {
            h(i10, identityMatrix);
        }
    }

    public void a() {
        this.f23007b.position(0);
        this.f23008c.f(this.f23007b, this.f23006a, 0);
    }

    public int b() {
        return this.f23006a;
    }

    public Vector3 c() {
        return this.f23010e;
    }

    public float d() {
        return this.f23011f;
    }

    public Box e() {
        return this.f23009d;
    }

    public FilamentSkinningBuffer f() {
        return this.f23008c;
    }

    public boolean g() {
        return this.f23012g;
    }

    public void h(int localBoneIndex, float[] matrix) {
        i(localBoneIndex, matrix, 0);
    }

    public void i(int localBoneIndex, float[] matrix, int matrixOffset) {
        int i10 = localBoneIndex * 16;
        for (int i11 = 0; i11 < 16; i11++) {
            this.f23007b.set(i10 + i11, matrix[matrixOffset + i11]);
        }
    }

    public void j(c bounds) {
        float a10 = bounds.a();
        float b10 = bounds.b();
        float c10 = bounds.c();
        float d10 = bounds.d();
        float e10 = bounds.e();
        float f10 = bounds.f();
        this.f23009d.c(a10, b10, c10);
        this.f23009d.d(d10, e10, f10);
        this.f23010e.set(a10, b10, c10);
        float sqrt = (float) Math.sqrt((d10 * d10) + (e10 * e10) + (f10 * f10));
        this.f23011f = sqrt;
        this.f23012g = sqrt > 0.0f;
    }
}
