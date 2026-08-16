package jme3utilities.debug;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.debug.WireSphere;
import com.jme3.scene.shape.Sphere;
import lf.C14122i;
import lf.C14123j;
import lf.C14125l;
import p000if.C13702E;
import p000if.C13720p;

public enum i {
    Icosphere,
    LoopMesh,
    Octasphere,
    PoleSphere,
    WireSphere;

    static final boolean $assertionsDisabled = false;

    public boolean b(Mesh mesh) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return mesh instanceof C14122i;
        }
        if (ordinal == 1) {
            return mesh instanceof C14123j;
        }
        if (ordinal == 2) {
            return mesh instanceof C14125l;
        }
        if (ordinal == 3) {
            return mesh instanceof Sphere;
        }
        if (ordinal == 4) {
            return mesh instanceof WireSphere;
        }
        throw new IllegalStateException("enum value = " + ((Object) this));
    }

    public Mesh c(float f10, boolean z10, boolean z11) {
        Mesh c14122i;
        C13702E.E(f10, TestVFXEffect.f77524P);
        int ordinal = ordinal();
        if (ordinal == 0) {
            c14122i = new C14122i(1, f10);
        } else if (ordinal == 1) {
            c14122i = new C14123j(32, f10);
        } else if (ordinal == 2) {
            c14122i = new C14125l(2, f10);
        } else if (ordinal == 3) {
            c14122i = new Sphere(12, 16, f10);
        } else {
            if (ordinal != 4) {
                throw new IllegalStateException("enum value = " + ((Object) this));
            }
            c14122i = new WireSphere(f10);
        }
        boolean r10 = C13720p.r(c14122i);
        if (r10 && !z10) {
            c14122i.clearBuffer(VertexBuffer.Type.Normal);
        } else if (z10 && !r10) {
            C13720p.b(c14122i);
        }
        boolean u10 = C13720p.u(c14122i);
        if (u10 && !z11) {
            c14122i.clearBuffer(VertexBuffer.Type.TexCoord);
        } else if (z11 && !u10) {
            throw new IllegalArgumentException("Texture coordinates not available for " + ((Object) this));
        }
        return c14122i;
    }
}
