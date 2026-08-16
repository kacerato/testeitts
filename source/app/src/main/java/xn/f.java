package xn;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.Collections;
import wn.C16029g;

public class f implements c {

    public final float[] f129879a;

    public final float[] f129880b;

    public final e f129881c;

    public f(float[] matrix, NativeFloatBuffer verticesBuffer, NativeIntBuffer indicesBuffer) {
        if (matrix == null) {
            throw new NullPointerException("matrix can't be null or empty");
        }
        if (verticesBuffer == null) {
            throw new NullPointerException("verticesBuffer can't be null or empty");
        }
        if (indicesBuffer == null) {
            throw new NullPointerException("indicesBuffer can't be null or empty");
        }
        Vector3 vector3 = new Vector3();
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f(matrix);
        this.f129879a = r2;
        this.f129880b = r3;
        float[] fArr = {Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY};
        float[] fArr2 = {Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY};
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(((int) Nc.b.D(verticesBuffer.capacity() / 3.0f)) * 3);
        nativeFloatBuffer.position(0);
        int capacity = verticesBuffer.capacity() / 3;
        for (int i10 = 0; i10 < capacity; i10++) {
            int i11 = i10 * 3;
            try {
                vector3.setX(verticesBuffer.get(i11));
                vector3.setY(verticesBuffer.get(i11 + 1));
                vector3.setZ(verticesBuffer.get(i11 + 2));
                fVar.p0(vector3, vector3);
                nativeFloatBuffer.put(vector3);
                float[] fArr3 = this.f129879a;
                fArr3[0] = Math.min(fArr3[0], vector3.getX());
                float[] fArr4 = this.f129879a;
                fArr4[1] = Math.min(fArr4[1], vector3.getY());
                float[] fArr5 = this.f129879a;
                fArr5[2] = Math.min(fArr5[2], vector3.getZ());
                float[] fArr6 = this.f129880b;
                fArr6[0] = Math.max(fArr6[0], vector3.getX());
                float[] fArr7 = this.f129880b;
                fArr7[1] = Math.max(fArr7[1], vector3.getY());
                float[] fArr8 = this.f129880b;
                fArr8[2] = Math.max(fArr8[2], vector3.getZ());
            } catch (IndexOutOfBoundsException e10) {
                e10.printStackTrace();
            }
        }
        nativeFloatBuffer.position(0);
        this.f129881c = new e(nativeFloatBuffer, indicesBuffer);
    }

    @Override
    public Iterable<C16029g> a() {
        return Collections.emptyList();
    }

    @Override
    public Iterable<e> b() {
        return Collections.singleton(this.f129881c);
    }

    @Override
    public float[] c() {
        return this.f129879a;
    }

    @Override
    public float[] d() {
        return this.f129880b;
    }
}
