package e9;

import JAVARuntime.GizmoObject;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

public class C13047c extends C13046b {

    public Vertex f85410a;

    @Override
    public Vertex b() {
        return this.f85410a;
    }

    @Override
    public void c(ParticleEmitter emitter) {
        this.f85410a = Vertex.C1(Vertex.v.CUBE);
    }

    @Override
    public void d(ParticleEmitter emitter, GizmoObject gizmoObject) {
        gizmoObject.setScale(emitter.getRectangleShapeOptions().f(), emitter.getRectangleShapeOptions().b(), emitter.getRectangleShapeOptions().c());
    }
}
