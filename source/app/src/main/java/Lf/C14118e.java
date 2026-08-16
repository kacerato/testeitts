package lf;

import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14118e extends Mesh {

    public static final int f96385b = 3;

    public static final Logger f96386c = Logger.getLogger(C14118e.class.getName());

    public static final boolean f96387d = false;

    public C14118e() {
    }

    public C14118e(Vector3f vector3f, Vector3f vector3f2, int i10) {
        C13702E.F(i10, "number of segments");
        setMode(Mesh.Mode.Lines);
        int i11 = i10 + 1;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i11 * 3);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        Vector3f vector3f3 = new Vector3f();
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jf.h.G(i13 / i10, vector3f, vector3f2, vector3f3);
            createFloatBuffer.put(vector3f3.f81611x).put(vector3f3.f81612y).put(vector3f3.f81613z);
        }
        createFloatBuffer.flip();
        IndexBuffer createIndexBuffer = IndexBuffer.createIndexBuffer(i11, i10 * 2);
        VertexBuffer.Format format = createIndexBuffer.getFormat();
        Buffer buffer = createIndexBuffer.getBuffer();
        setBuffer(VertexBuffer.Type.Index, 1, format, buffer);
        while (i12 < i10) {
            createIndexBuffer.put(i12);
            i12++;
            createIndexBuffer.put(i12);
        }
        buffer.flip();
        updateBound();
        setStatic();
    }
}
