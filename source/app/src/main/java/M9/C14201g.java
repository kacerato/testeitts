package m9;

import com.google.android.filament.Box;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import java.util.List;

public final class C14201g {

    public final Vector3 f96860a = new Vector3();

    public final Quaternion f96861b = new Quaternion();

    public final com.itsmagic.engine.Engines.Engine.Vector.f f96862c = new com.itsmagic.engine.Engines.Engine.Vector.f();

    public final float[] f96863d = new float[16];

    public final Box f96864e = new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);

    public final float[] f96865f = new float[16];

    public NativeFloatBuffer f96866g;

    public int f96867h;

    public float f96868i;

    public float f96869j;

    public float f96870k;

    public float f96871l;

    public float f96872m;

    public float f96873n;

    public float f96874o;

    public void a() {
        NativeFloatBuffer nativeFloatBuffer = this.f96866g;
        if (nativeFloatBuffer != null) {
            nativeFloatBuffer.destroy();
            this.f96866g = null;
        }
        this.f96867h = 0;
    }

    public void b(List<PooledObject> objects, float centerX, float centerY, float centerZ, float radius) {
        this.f96867h = objects == null ? 0 : objects.size();
        this.f96868i = 0.0f;
        this.f96864e.c(centerX, centerY, centerZ);
        this.f96864e.d(radius, radius, radius);
        int i10 = this.f96867h;
        if (i10 == 0) {
            return;
        }
        int i11 = i10 * 16;
        NativeFloatBuffer nativeFloatBuffer = this.f96866g;
        if (nativeFloatBuffer == null || nativeFloatBuffer.capacity() < i11) {
            NativeFloatBuffer nativeFloatBuffer2 = this.f96866g;
            int capacity = nativeFloatBuffer2 == null ? 256 : nativeFloatBuffer2.capacity();
            while (capacity < i11) {
                capacity += Math.max(256, capacity >> 1);
            }
            NativeFloatBuffer nativeFloatBuffer3 = this.f96866g;
            this.f96866g = new NativeFloatBuffer(capacity);
            if (nativeFloatBuffer3 != null) {
                nativeFloatBuffer3.destroy();
            }
        }
        for (int i12 = 0; i12 < this.f96867h; i12++) {
            PooledObject pooledObject = objects.get(i12);
            this.f96868i = Math.max(this.f96868i, Math.abs(pooledObject.getScale()));
            pooledObject.m(this.f96860a);
            pooledObject.o(this.f96861b);
            this.f96862c.Y0(this.f96860a, this.f96861b, pooledObject.getScale());
            this.f96862c.o(this.f96863d);
            this.f96866g.set(i12 * 16, this.f96863d);
            if (i12 == 0) {
                System.arraycopy(this.f96863d, 0, this.f96865f, 0, 16);
            }
        }
    }

    public void c(float captureHalfWidth, float captureHalfHeight, float capturePivotYOffset, float captureSourceScale) {
        float M10 = this.f96868i / Nc.b.M(1.0E-4f, captureSourceScale);
        float[] a10 = this.f96864e.a();
        float f10 = this.f96864e.b()[0];
        this.f96869j = a10[0];
        this.f96870k = a10[1];
        this.f96871l = a10[2];
        this.f96872m = Nc.b.M(0.05f, (captureHalfWidth * M10) + f10);
        this.f96873n = Nc.b.M(0.05f, ((captureHalfHeight + Math.abs(capturePivotYOffset)) * M10) + f10);
        this.f96874o = this.f96872m;
    }
}
