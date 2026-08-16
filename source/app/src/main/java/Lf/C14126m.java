package lf;

import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14126m extends Mesh {

    public static final int f96434c = 3;

    public static final Logger f96435d = Logger.getLogger(C14126m.class.getName());

    public final FloatBuffer f96436b;

    public C14126m() {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(3);
        this.f96436b = createFloatBuffer;
        createFloatBuffer.clear();
        createFloatBuffer.put(0.0f);
        createFloatBuffer.put(0.0f);
        createFloatBuffer.put(0.0f);
        createFloatBuffer.flip();
        VertexBuffer vertexBuffer = new VertexBuffer(VertexBuffer.Type.Position);
        vertexBuffer.setupData(VertexBuffer.Usage.Stream, 3, VertexBuffer.Format.Float, createFloatBuffer);
        setBuffer(vertexBuffer);
        setMode(Mesh.Mode.Points);
        updateBound();
    }

    public void a(Vector3f vector3f) {
        C13702E.d(vector3f, "new location");
        this.f96436b.clear();
        this.f96436b.put(vector3f.f81611x);
        this.f96436b.put(vector3f.f81612y);
        this.f96436b.put(vector3f.f81613z);
        this.f96436b.flip();
        getBuffer(VertexBuffer.Type.Position).updateData(this.f96436b);
        updateBound();
    }
}
