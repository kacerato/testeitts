package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.FastMath;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14119f extends Mesh {

    public static final Logger f96388b = Logger.getLogger(C14119f.class.getName());

    public C14119f() {
    }

    public C14119f(float f10, Mesh.Mode mode) {
        C13702E.E(f10, TestVFXEffect.f77524P);
        C13702E.t(mode, "mode");
        float f11 = jf.f.f92905b;
        float f12 = f11 + 1.0f;
        float r10 = jf.f.r(2.0f, f12) / f10;
        float f13 = f12 / r10;
        float f14 = 2.0f / r10;
        float cos = FastMath.cos(1.2566371f) * f14;
        float cos2 = FastMath.cos(2.5132742f) * f14;
        float cos3 = f14 * FastMath.cos(3.7699115f);
        float cos4 = f14 * FastMath.cos(5.0265484f);
        float sin = FastMath.sin(1.2566371f) * f14;
        float sin2 = FastMath.sin(2.5132742f) * f14;
        float sin3 = FastMath.sin(3.7699115f) * f14;
        float sin4 = f14 * FastMath.sin(5.0265484f);
        float f15 = (f11 - 1.0f) / r10;
        float f16 = (2.0f * f11) / r10;
        float f17 = f11 * cos;
        float f18 = f11 * cos2;
        float f19 = f11 * cos3;
        float f20 = f11 * cos4;
        float f21 = f11 * sin;
        float f22 = f11 * sin2;
        float f23 = f11 * sin3;
        float f24 = f11 * sin4;
        float f25 = -f15;
        float f26 = -f13;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(f14, 0.0f, f13, cos, sin, f13, cos2, sin2, f13, cos3, sin3, f13, cos4, sin4, f13, f16, 0.0f, f15, f17, f21, f15, f18, f22, f15, f19, f23, f15, f20, f24, f15, -f16, 0.0f, f25, -f17, -f21, f25, -f18, -f22, f25, -f19, -f23, f25, -f20, -f24, f25, -f14, 0.0f, f26, -cos, -sin, f26, -cos2, -sin2, f26, -cos3, -sin3, f26, -cos4, -sin4, f26);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        createFloatBuffer.clear();
        if (mode == Mesh.Mode.Lines) {
            IntBuffer createIntBuffer = BufferUtils.createIntBuffer(0, 1, 1, 2, 2, 3, 3, 4, 4, 0, 0, 5, 1, 6, 2, 7, 3, 8, 4, 9, 5, 13, 6, 14, 7, 10, 8, 11, 9, 12, 5, 12, 6, 13, 7, 14, 8, 10, 9, 11, 10, 15, 11, 16, 12, 17, 13, 18, 14, 19, 15, 16, 16, 17, 17, 18, 18, 19, 19, 15);
            createIntBuffer.clear();
            setBuffer(VertexBuffer.Type.Index, 2, createIntBuffer);
        } else if (mode == Mesh.Mode.Triangles) {
            IntBuffer createIntBuffer2 = BufferUtils.createIntBuffer(0, 1, 2, 0, 2, 3, 0, 3, 4, 0, 5, 13, 0, 13, 6, 0, 6, 1, 1, 6, 14, 1, 14, 7, 1, 7, 2, 2, 7, 10, 2, 10, 8, 2, 8, 3, 3, 8, 11, 3, 11, 9, 3, 9, 4, 4, 9, 12, 4, 12, 5, 4, 5, 0, 5, 12, 17, 5, 17, 18, 5, 18, 13, 6, 13, 18, 6, 18, 19, 6, 19, 14, 7, 14, 19, 7, 19, 15, 7, 15, 10, 8, 10, 15, 8, 15, 16, 8, 16, 11, 9, 11, 16, 9, 16, 17, 9, 17, 12, 15, 19, 18, 15, 18, 17, 15, 17, 16);
            createIntBuffer2.clear();
            setBuffer(VertexBuffer.Type.Index, 3, createIntBuffer2);
        } else if (mode != Mesh.Mode.Points) {
            throw new IllegalArgumentException("mode = " + ((Object) mode));
        }
        setMode(mode);
        updateBound();
        setStatic();
    }
}
