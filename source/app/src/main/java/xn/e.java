package xn;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.List;
import xn.a;

public class e {

    public final NativeFloatBuffer f129876a;

    public final NativeIntBuffer f129877b;

    public final a f129878c;

    public e(float[] matrix, NativeFloatBuffer verticesBuffer, NativeIntBuffer indicesBuffer) {
        Vector3 vector3 = new Vector3();
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f(matrix);
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
            } catch (IndexOutOfBoundsException e10) {
                e10.printStackTrace();
            }
        }
        nativeFloatBuffer.position(0);
        this.f129876a = nativeFloatBuffer;
        this.f129877b = indicesBuffer;
        this.f129878c = new a(nativeFloatBuffer, indicesBuffer, indicesBuffer.capacity() / 3, 32);
    }

    public List<a.c> a(float[] bmin, float[] bmax) {
        return this.f129878c.c(bmin, bmax);
    }

    public NativeIntBuffer b() {
        return this.f129877b;
    }

    public NativeFloatBuffer c() {
        return this.f129876a;
    }

    public e(NativeFloatBuffer vertices, NativeIntBuffer faces) {
        this.f129876a = vertices;
        this.f129877b = faces;
        this.f129878c = new a(vertices, faces, faces.capacity() / 3, 32);
    }
}
