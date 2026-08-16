package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;
import p000if.C13720p;

public class C14121h extends Mesh {

    public static final int f96407b = 3;

    public static final Logger f96408c = Logger.getLogger(C14121h.class.getName());

    public C14121h() {
    }

    public C14121h(float f10, boolean z10) {
        C13702E.E(f10, TestVFXEffect.f77524P);
        float f11 = jf.f.f92905b;
        float r10 = jf.f.r(1.0f, f11) / f10;
        float f12 = 1.0f / r10;
        float f13 = f11 / r10;
        float f14 = -f12;
        float f15 = -f13;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(f14, f13, 0.0f, f15, 0.0f, f12, 0.0f, f12, f13, f14, f13, 0.0f, 0.0f, f12, f13, f12, f13, 0.0f, f14, f13, 0.0f, f12, f13, 0.0f, 0.0f, f12, f15, f14, f13, 0.0f, 0.0f, f12, f15, f15, 0.0f, f14, f14, f13, 0.0f, f15, 0.0f, f14, f15, 0.0f, f12, f12, f13, 0.0f, 0.0f, f12, f13, f13, 0.0f, f12, 0.0f, f12, f13, f15, 0.0f, f12, 0.0f, f14, f13, f15, 0.0f, f12, f15, 0.0f, f14, f14, f15, 0.0f, f15, 0.0f, f14, 0.0f, f12, f15, 0.0f, f14, f15, 0.0f, f12, f15, f12, f13, 0.0f, f13, 0.0f, f14, f12, f15, 0.0f, f13, 0.0f, f12, 0.0f, f14, f13, f12, f15, 0.0f, 0.0f, f14, f13, f14, f15, 0.0f, f12, f15, 0.0f, f14, f15, 0.0f, 0.0f, f14, f15, f12, f15, 0.0f, 0.0f, f14, f15, f13, 0.0f, f14, f12, f15, 0.0f, f13, 0.0f, f14, f13, 0.0f, f12, 0.0f, f14, f13, f13, 0.0f, f12, 0.0f, f12, f13, f14, f15, 0.0f, 0.0f, f14, f13, f15, 0.0f, f12, 0.0f, f14, f15, f14, f15, 0.0f, f15, 0.0f, f14, f13, 0.0f, f14, 0.0f, f14, f15, 0.0f, f12, f15, f13, 0.0f, f12, f13, 0.0f, f14, f12, f13, 0.0f);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        createFloatBuffer.clear();
        if (z10) {
            C13720p.j(this);
        }
        updateBound();
        setStatic();
    }
}
