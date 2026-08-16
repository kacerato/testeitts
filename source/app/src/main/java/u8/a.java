package U8;

import JAVARuntime.Vertex;
import R8.f;
import aa.C3593a;
import aa.C3595c;
import aa.e;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class a {

    public Camera f25803a;

    public volatile float f25804b = 100.0f;

    public final AtomicBoolean f25805c = new AtomicBoolean();

    public final Vector3 f25806d = new Vector3();

    public final Vector3 f25807e = new Vector3();

    public class RunnableC0715a implements Runnable {

        public final C3595c f25808b;

        public final C3593a f25809c;

        public RunnableC0715a(final C3595c val$ray, final C3593a val$physicsHit) {
            this.f25808b = val$ray;
            this.f25809c = val$physicsHit;
        }

        @Override
        public void run() {
            try {
                SteppedArrayList<C3593a> steppedArrayList = new SteppedArrayList();
                List<Component> h10 = f.h(ModelRenderer.class);
                for (int i10 = 0; i10 < h10.size(); i10++) {
                    try {
                        ModelRenderer modelRenderer = (ModelRenderer) h10.get(i10);
                        if (!modelRenderer.f79250n.Y0() && modelRenderer.isHierarchyActive() && modelRenderer.getVertex() != null && a.this.f25803a.isVisible(modelRenderer.getVertex(), modelRenderer.getRenderMatrix())) {
                            try {
                                C3593a H22 = modelRenderer.getVertex().H2(modelRenderer.getRenderMatrix(), this.f25808b, Vertex.RayMode.ClosestPoint);
                                if (H22 != null) {
                                    steppedArrayList.add(H22);
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    } catch (IndexOutOfBoundsException unused) {
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                float f10 = Float.POSITIVE_INFINITY;
                C3593a c3593a = null;
                for (C3593a c3593a2 : steppedArrayList) {
                    float sqrtDistance = a.this.f25806d.sqrtDistance(c3593a2.i());
                    if (c3593a == null || sqrtDistance <= f10) {
                        c3593a = c3593a2;
                        f10 = sqrtDistance;
                    }
                }
                if (c3593a != null) {
                    a.this.f25804b = Nc.b.J(a.this.f25806d.sqrtDistance(c3593a.i()), 100.0f);
                } else if (this.f25809c == null) {
                    a.this.f25804b = 100.0f;
                }
            } finally {
                a.this.f25805c.set(false);
            }
        }
    }

    public float e() {
        return this.f25804b;
    }

    public final void f(boolean usePhysicsLaser, boolean useVertexLaser, ExposableLayerReference layerReference) {
        C3593a c3593a;
        C3595c c3595c = new C3595c(this.f25806d, this.f25807e, 0.0f);
        c3595c.k(layerReference.e());
        e eVar = new e();
        eVar.n(false);
        eVar.o(false);
        if (usePhysicsLaser) {
            c3593a = eVar.z(c3595c, true);
            if (c3593a != null) {
                this.f25804b = Nc.b.J(c3593a.getDistance(), 100.0f);
            }
        } else {
            c3593a = null;
        }
        if (!useVertexLaser) {
            this.f25805c.set(false);
            return;
        }
        Thread thread = new Thread(new RunnableC0715a(c3595c, c3593a));
        thread.setPriority(1);
        thread.start();
    }

    public void g(Camera camera, Vector3 gp, Vector3 f10, boolean usePhysicsLaser, boolean useVertexLaser, ExposableLayerReference layerReference) {
        if (this.f25805c.compareAndSet(false, true)) {
            this.f25806d.set(gp);
            this.f25807e.set(f10);
            this.f25803a = camera;
            f(usePhysicsLaser, useVertexLaser, layerReference);
        }
    }
}
