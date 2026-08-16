package e9;

import JAVARuntime.GizmoObject;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

public class C13048d extends C13046b {

    public Vertex f85411a;

    @Override
    public Vertex b() {
        return this.f85411a;
    }

    @Override
    public void c(ParticleEmitter emitter) {
        this.f85411a = Vertex.C1(Vertex.v.SPHERE_LOWPOLY);
    }

    @Override
    public void d(ParticleEmitter emitter, GizmoObject gizmoObject) {
        gizmoObject.setScale(emitter.getSphereShapeOptions().b() * 2.0f);
        emitter.f79250n.transform.C0(gizmoObject.getRotation().instance);
    }
}
