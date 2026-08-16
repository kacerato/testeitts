package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;
import p000if.C13720p;

public class C14124k extends Mesh {

    public static final int f96421b = 3;

    public static final Logger f96422c = Logger.getLogger(C14124k.class.getName());

    public C14124k() {
    }

    public C14124k(float f10, boolean z10) {
        C13702E.E(f10, TestVFXEffect.f77524P);
        float f11 = -f10;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(f11, 0.0f, 0.0f, 0.0f, 0.0f, f10, 0.0f, f10, 0.0f, f10, 0.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, f11, 0.0f, f10, 0.0f, f10, 0.0f, 0.0f, f11, 0.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, 0.0f, f11, 0.0f, f11, 0.0f, 0.0f, 0.0f, f11, f10, 0.0f, 0.0f, 0.0f, f11, 0.0f, f10, 0.0f, 0.0f, 0.0f, 0.0f, f10, f11, 0.0f, 0.0f, 0.0f, f11, 0.0f, 0.0f, 0.0f, f10, f11, 0.0f, 0.0f, 0.0f, 0.0f, f11, 0.0f, f11, 0.0f);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        createFloatBuffer.clear();
        if (z10) {
            C13720p.j(this);
        }
        updateBound();
        setStatic();
    }
}
