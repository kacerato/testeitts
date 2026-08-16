package E9;

import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;

public final class e {

    public NativeIntBuffer f5731a;

    public NativeIntBuffer f5732b;

    public NativeIntBuffer f5733c;

    public NativeIntBuffer f5734d;

    public int f5735e;

    public int f5736f;

    public void a(int x10, int y10, int z10, int blockType, int face, int textureIndex) {
        int i10 = this.f5735e;
        int i11 = i10 * 3;
        this.f5731a.set(i11, x10);
        this.f5731a.set(i11 + 1, y10);
        this.f5731a.set(i11 + 2, z10);
        this.f5732b.set(i10, blockType);
        this.f5733c.set(i10, face);
        this.f5734d.set(i10, textureIndex);
        this.f5735e = i10 + 1;
    }

    public void b() {
        NativeIntBuffer nativeIntBuffer = this.f5734d;
        if (nativeIntBuffer != null) {
            nativeIntBuffer.destroyImmediate();
            this.f5734d = null;
        }
        NativeIntBuffer nativeIntBuffer2 = this.f5733c;
        if (nativeIntBuffer2 != null) {
            nativeIntBuffer2.destroyImmediate();
            this.f5733c = null;
        }
        NativeIntBuffer nativeIntBuffer3 = this.f5732b;
        if (nativeIntBuffer3 != null) {
            nativeIntBuffer3.destroyImmediate();
            this.f5732b = null;
        }
        NativeIntBuffer nativeIntBuffer4 = this.f5731a;
        if (nativeIntBuffer4 != null) {
            nativeIntBuffer4.destroyImmediate();
            this.f5731a = null;
        }
        this.f5735e = 0;
        this.f5736f = 0;
    }

    public final void c(int wantedFaceCapacity) {
        if (wantedFaceCapacity < 0) {
            throw new IllegalArgumentException("wantedFaceCapacity < 0");
        }
        if (this.f5736f < wantedFaceCapacity || this.f5731a == null || this.f5732b == null || this.f5733c == null || this.f5734d == null) {
            b();
            this.f5736f = wantedFaceCapacity;
            this.f5731a = new NativeIntBuffer(wantedFaceCapacity * 3);
            this.f5732b = new NativeIntBuffer(wantedFaceCapacity);
            this.f5733c = new NativeIntBuffer(wantedFaceCapacity);
            this.f5734d = new NativeIntBuffer(wantedFaceCapacity);
        }
    }

    public NativeIntBuffer d() {
        return this.f5732b;
    }

    public int e() {
        return this.f5735e;
    }

    public NativeIntBuffer f() {
        return this.f5733c;
    }

    public NativeIntBuffer g() {
        return this.f5731a;
    }

    public NativeIntBuffer h() {
        return this.f5734d;
    }

    public void i(int wantedFaceCapacity) {
        c(wantedFaceCapacity);
        this.f5735e = 0;
    }
}
