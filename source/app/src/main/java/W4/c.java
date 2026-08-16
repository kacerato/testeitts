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

public class c extends U4.a {

    public final Vector3 f27251J = new Vector3();

    public final Vector3 f27252K = new Vector3();

    public final Vector3 f27253L = new Vector3(0.0f, 0.0f, 1.0f);

    public final Vector3 f27254M = new Vector3();

    public float f27255N = 0.0f;

    public float f27256O = 0.0f;

    public class a implements Runnable {

        public final GameObject f27257b;

        public final Vector3 f27258c;

        public a(final GameObject val$gameObject, final Vector3 val$finalPosition) {
            this.f27257b = val$gameObject;
            this.f27258c = val$finalPosition;
        }

        @Override
        public void run() {
            this.f27257b.transform.h3(this.f27258c);
            this.f27257b.transform.I2();
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.S2(this.f27257b);
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
            w(selectedObject, this.f27253L, this.f27251J, editor3DViewer);
            if (p(editor3DViewer)) {
                gameObject.transform.G3();
            }
            gameObject.transform.g2(this.f27251J);
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
        return this.f27251J;
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        try {
            float f10 = f(touchSlide, camera, this.f27251J, axisTransform);
            if (editor3DViewer != null && editor3DViewer.gridMove) {
                float f11 = this.f27255N;
                if (f11 > 0.0f) {
                    float f12 = this.f27256O + f10;
                    this.f27256O = f12;
                    float F10 = F(f12, f11);
                    this.f27252K.set(this.f27254M);
                    this.f27252K.addLocal(this.f27251J, F10);
                    K8.a.I(new a(gameObject, new Vector3(this.f27252K)));
                }
            }
            gameObject.transform.u0(this.f27252K);
            this.f27252K.addLocal(this.f27251J, f10);
            K8.a.I(new a(gameObject, new Vector3(this.f27252K)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        if (editor3DViewer == null || !editor3DViewer.gridMove || gameObject == null) {
            this.f27255N = 0.0f;
            this.f27256O = 0.0f;
        } else {
            gameObject.transform.u0(this.f27254M);
            w(gameObject, this.f27253L, this.f27251J, editor3DViewer);
            this.f27255N = g(gameObject, this.f27251J) * editor3DViewer.I1();
            this.f27256O = 0.0f;
        }
    }
}
