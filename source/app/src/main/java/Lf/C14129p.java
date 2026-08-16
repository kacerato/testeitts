package lf;

import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.util.logging.Logger;

public class C14129p extends Mesh {

    public static final Logger f96442b = Logger.getLogger(C14129p.class.getName());

    public C14129p() {
        this(0.0f, 1.0f, 0.0f, 1.0f);
    }

    public C14129p(float f10, float f11, float f12, float f13) {
        setMode(Mesh.Mode.LineLoop);
        setBuffer(VertexBuffer.Type.Position, 3, new float[]{f10, f12, 0.0f, f10, f13, 0.0f, f11, f13, 0.0f, f11, f12, 0.0f});
        setBuffer(VertexBuffer.Type.Index, 2, new short[]{0, 1, 2, 3});
        updateBound();
        setStatic();
    }
}
