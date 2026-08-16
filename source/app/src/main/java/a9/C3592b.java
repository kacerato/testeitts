package a9;

import JAVARuntime.GizmoObject;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

public class C3592b {

    public Vertex f31915a;

    public float f31916b;

    public float f31917c;

    public final void a(SpotLight emitter) {
        this.f31916b = emitter.getOuterConeAngle();
        float falloffRadius = emitter.getFalloffRadius();
        this.f31917c = falloffRadius;
        this.f31915a = new Gb.b(this.f31916b, falloffRadius, 4, 32, 0.01f).c();
    }

    public Vertex b() {
        return this.f31915a;
    }

    public void c(SpotLight emitter) {
        a(emitter);
    }

    public void d(SpotLight emitter, GizmoObject gizmoObject) {
        gizmoObject.setScale(1.0f);
        Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
        emitter.f79250n.transform.C0(quaternion);
        gizmoObject.setRotation(quaternion.N0());
        JP.release(quaternion);
        if (this.f31916b == emitter.getOuterConeAngle() && this.f31917c == emitter.getFalloffRadius()) {
            return;
        }
        a(emitter);
    }
}
