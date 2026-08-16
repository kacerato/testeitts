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

public class C14131r extends Mesh {

    public static final int f96448b = 3;

    public static final Logger f96449c = Logger.getLogger(C14131r.class.getName());

    public C14131r() {
    }

    public C14131r(float f10, boolean z10) {
        C13702E.E(f10, TestVFXEffect.f77524P);
        float sqrt = f10 / FastMath.sqrt(3.0f);
        float f11 = -sqrt;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(f11, sqrt, sqrt, sqrt, sqrt, f11, f11, f11, f11, f11, sqrt, sqrt, sqrt, f11, sqrt, sqrt, sqrt, f11, f11, sqrt, sqrt, f11, f11, f11, sqrt, f11, sqrt, f11, f11, f11, sqrt, sqrt, f11, sqrt, f11, sqrt);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        createFloatBuffer.clear();
        if (z10) {
            C13720p.j(this);
        }
        updateBound();
        setStatic();
    }
}
