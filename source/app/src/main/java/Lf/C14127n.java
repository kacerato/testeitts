package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.FastMath;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;
import p000if.C13720p;

public class C14127n extends Mesh {

    public static final int f96437b = 3;

    public static final Logger f96438c = Logger.getLogger(C14127n.class.getName());

    public static final boolean f96439d = false;

    public C14127n() {
    }

    public C14127n(int i10, float f10, float f11, boolean z10) {
        C13702E.i(i10, "number of sides", 3, Integer.MAX_VALUE);
        C13702E.E(f10, TestVFXEffect.f77524P);
        C13702E.E(f11, "height");
        int i11 = i10 - 2;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(((i11 * 2) + (i10 * 2)) * 9);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        float f12 = f11 / 2.0f;
        float f13 = 6.2831855f / i10;
        int i12 = 0;
        while (i12 < i10) {
            float f14 = i12 * f13;
            float sin = FastMath.sin(f14) * f10;
            float cos = FastMath.cos(f14) * f10;
            int i13 = i12 + 1;
            float K10 = jf.f.K(i13, i10) * f13;
            float sin2 = FastMath.sin(K10) * f10;
            float cos2 = FastMath.cos(K10) * f10;
            createFloatBuffer.put(sin2).put(f12).put(cos2);
            createFloatBuffer.put(sin).put(f12).put(cos);
            float f15 = -f12;
            createFloatBuffer.put(sin2).put(f15).put(cos2);
            createFloatBuffer.put(sin).put(f12).put(cos);
            createFloatBuffer.put(sin).put(f15).put(cos);
            createFloatBuffer.put(sin2).put(f15).put(cos2);
            if (i12 < i11) {
                float f16 = (i10 - 1) * f13;
                float sin3 = FastMath.sin(f16) * f10;
                float cos3 = FastMath.cos(f16) * f10;
                createFloatBuffer.put(sin).put(f12).put(cos);
                createFloatBuffer.put(sin2).put(f12).put(cos2);
                createFloatBuffer.put(sin3).put(f12).put(cos3);
                createFloatBuffer.put(sin3).put(f15).put(cos3);
                createFloatBuffer.put(sin2).put(f15).put(cos2);
                createFloatBuffer.put(sin).put(f15).put(cos);
            }
            i12 = i13;
        }
        createFloatBuffer.flip();
        if (z10) {
            C13720p.j(this);
        }
        updateBound();
        setStatic();
    }

    public C14127n(float f10, float f11, float f12) {
        C13702E.E(f10, "x length");
        C13702E.E(f11, "height");
        C13702E.E(f12, "z length");
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(72);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        float f13 = f11 / 2.0f;
        createFloatBuffer.put(0.0f).put(f13).put(0.0f);
        createFloatBuffer.put(0.0f).put(f13).put(f12);
        createFloatBuffer.put(f10).put(f13).put(0.0f);
        float f14 = -f13;
        createFloatBuffer.put(0.0f).put(f14).put(0.0f);
        createFloatBuffer.put(f10).put(f14).put(0.0f);
        createFloatBuffer.put(0.0f).put(f14).put(f12);
        createFloatBuffer.put(f10).put(f13).put(0.0f);
        createFloatBuffer.put(0.0f).put(f13).put(f12);
        createFloatBuffer.put(0.0f).put(f14).put(f12);
        createFloatBuffer.put(0.0f).put(f14).put(f12);
        createFloatBuffer.put(f10).put(f14).put(0.0f);
        createFloatBuffer.put(f10).put(f13).put(0.0f);
        createFloatBuffer.put(0.0f).put(f13).put(0.0f);
        createFloatBuffer.put(f10).put(f13).put(0.0f);
        createFloatBuffer.put(f10).put(f14).put(0.0f);
        createFloatBuffer.put(f10).put(f14).put(0.0f);
        createFloatBuffer.put(0.0f).put(f14).put(0.0f);
        createFloatBuffer.put(0.0f).put(f13).put(0.0f);
        createFloatBuffer.put(0.0f).put(f13).put(f12);
        createFloatBuffer.put(0.0f).put(f13).put(0.0f);
        createFloatBuffer.put(0.0f).put(f14).put(0.0f);
        createFloatBuffer.put(0.0f).put(f14).put(0.0f);
        createFloatBuffer.put(0.0f).put(f14).put(f12);
        createFloatBuffer.put(0.0f).put(f13).put(f12);
        createFloatBuffer.flip();
        updateBound();
        setStatic();
    }
}
