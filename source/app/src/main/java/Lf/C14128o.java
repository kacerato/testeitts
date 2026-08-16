package lf;

import com.jme3.font.Rectangle;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class C14128o extends Mesh {

    public static final int f96440b = 3;

    public static final Logger f96441c = Logger.getLogger(C14128o.class.getName());

    public C14128o() {
        this(0.0f, 1.0f, 0.0f, 1.0f, 1.0f);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C14128o(Rectangle rectangle, float f10) {
        this(0.0f, 1.0f, 0.0f, 1.0f, r5, r6, r7, r7 + rectangle.height, f10);
        float f11 = rectangle.f81588x;
        float f12 = f11 + rectangle.width;
        float f13 = rectangle.f81589y;
    }

    public C14128o(float f10, float f11, float f12, float f13, float f14) {
        this(0.0f, 1.0f, 0.0f, 1.0f, f10, f11, f12, f13, f14);
    }

    public C14128o(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        if (f18 != -1.0f && f18 != 1.0f) {
            f96441c.log(Level.SEVERE, "zNorm={0}", Float.valueOf(f18));
            throw new IllegalArgumentException("zNorm must be +1 or -1.");
        }
        setMode(Mesh.Mode.TriangleFan);
        setBuffer(VertexBuffer.Type.Position, 3, new float[]{f14, f16, 0.0f, f15, f16, 0.0f, f15, f17, 0.0f, f14, f17, 0.0f});
        setBuffer(VertexBuffer.Type.TexCoord, 2, new float[]{f10, f12, f11, f12, f11, f13, f10, f13});
        setBuffer(VertexBuffer.Type.Normal, 3, new float[]{0.0f, 0.0f, f18, 0.0f, 0.0f, f18, 0.0f, 0.0f, f18, 0.0f, 0.0f, f18});
        if ((f15 - f14) * (f17 - f16) * f18 < 0.0f) {
            setBuffer(VertexBuffer.Type.Index, 3, new byte[]{0, 3, 2, 1});
        }
        updateBound();
        setStatic();
    }
}
