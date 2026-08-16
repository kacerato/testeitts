package W4;

import Ic.A;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import n.C14333c;
import tc.h;

public class a extends U4.a {

    public final Vector3 f27233J = new Vector3();

    public final Vector3 f27234K = new Vector3();

    public final Vector3 f27235L = new Vector3(1.0f, 0.0f, 0.0f);

    public final Vector3 f27236M = new Vector3();

    public float f27237N = 0.0f;

    public float f27238O = 0.0f;

    public class RunnableC0759a implements Runnable {

        public final GameObject f27239b;

        public final Vector3 f27240c;

        public RunnableC0759a(final GameObject val$gameObject, final Vector3 val$finalPosition) {
            this.f27239b = val$gameObject;
            this.f27240c = val$finalPosition;
        }

        @Override
        public void run() {
            this.f27239b.transform.h3(this.f27240c);
            this.f27239b.transform.I2();
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.S2(this.f27239b);
        }
    }

    @Override
    public void D(GameObject gameObject, GameObject camera, EditorCamera editorCamera, GameObject selectedObject, Panel3DView editor3DViewer) {
        try {
            if (editor3DViewer.useBoundingCenter) {
                GameObject.g z10 = selectedObject.z();
                if (z10.f()) {
                    gameObject.transform.n3(selectedObject);
                } else {
                    gameObject.transform.p3(z10.d());
                }
            } else {
                gameObject.transform.n3(selectedObject);
            }
            w(selectedObject, this.f27235L, this.f27233J, editor3DViewer);
            if (p(editor3DViewer)) {
                gameObject.transform.G3();
            }
            gameObject.transform.g2(this.f27233J);
            if (editorCamera.getProjection() == Camera.G.Perspective) {
                gameObject.transform.setScale(A.b(gameObject.transform.B1(camera.transform) * 0.3f * C14333c.a()));
            } else {
                gameObject.transform.setScale(A.b(editorCamera.getOrtho_diameter() * 0.1f * C14333c.a()));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public Vector3 n(GameObject gameObject) {
        return this.f27233J;
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        float f10 = f(touchSlide, camera, this.f27233J, axisTransform);
        if (editor3DViewer != null && editor3DViewer.gridMove) {
            float f11 = this.f27237N;
            if (f11 > 0.0f) {
                float f12 = this.f27238O + f10;
                this.f27238O = f12;
                float F10 = F(f12, f11);
                this.f27234K.set(this.f27236M);
                this.f27234K.addLocal(this.f27233J, F10);
                K8.a.I(new RunnableC0759a(gameObject, new Vector3(this.f27234K)));
            }
        }
        gameObject.transform.u0(this.f27234K);
        this.f27234K.addLocal(this.f27233J, f10);
        K8.a.I(new RunnableC0759a(gameObject, new Vector3(this.f27234K)));
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        if (editor3DViewer == null || !editor3DViewer.gridMove || gameObject == null) {
            this.f27237N = 0.0f;
            this.f27238O = 0.0f;
        } else {
            gameObject.transform.u0(this.f27236M);
            w(gameObject, this.f27235L, this.f27233J, editor3DViewer);
            this.f27237N = g(gameObject, this.f27233J) * editor3DViewer.I1();
            this.f27238O = 0.0f;
        }
    }
}
