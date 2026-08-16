package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14123j extends Mesh {

    public static final int f96419b = 3;

    public static final Logger f96420c = Logger.getLogger(C14123j.class.getName());

    public C14123j() {
    }

    public final void a(int i10, float f10) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i10 * 3);
        float f11 = 6.2831855f / i10;
        for (int i11 = 0; i11 < i10; i11++) {
            float f12 = i11 * f11;
            createFloatBuffer.put(FastMath.cos(f12) * f10).put(0.0f).put(FastMath.sin(f12) * f10);
        }
        createFloatBuffer.flip();
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
    }

    public C14123j(int i10) {
        this(i10, 1.0f);
    }

    public C14123j(int i10, float f10) {
        C13702E.i(i10, "vertex count", 3, Integer.MAX_VALUE);
        C13702E.p(f10, TestVFXEffect.f77524P);
        setMode(Mesh.Mode.LineLoop);
        a(i10, f10);
        updateBound();
        setStatic();
    }

    public C14123j(Vector3f[] vector3fArr) {
        C13702E.u(vector3fArr, "corner array");
        C13702E.i(vector3fArr.length, "length of corner array", 3, Integer.MAX_VALUE);
        setMode(Mesh.Mode.LineLoop);
        setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(vector3fArr));
        updateBound();
        setStatic();
    }
}
