package a9;

import Gb.g;
import JAVARuntime.GizmoObject;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

public class C3591a {

    public Vertex f31913a;

    public float f31914b;

    public final void a(PointLight emitter) {
        float falloffRadius = emitter.getFalloffRadius();
        this.f31914b = falloffRadius;
        this.f31913a = new g(falloffRadius, 32, 0.01f).d();
    }

    public Vertex b() {
        return this.f31913a;
    }

    public void c(PointLight emitter) {
        a(emitter);
    }

    public void d(PointLight emitter, GizmoObject gizmoObject) {
        gizmoObject.setScale(1.0f);
        Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
        emitter.f79250n.transform.C0(quaternion);
        gizmoObject.setRotation(quaternion.N0());
        JP.release(quaternion);
        if (this.f31914b != emitter.getFalloffRadius()) {
            a(emitter);
        }
    }
}
