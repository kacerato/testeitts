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

public class b extends U4.a {

    public final Vector3 f27242J = new Vector3();

    public final Vector3 f27243K = new Vector3();

    public final Vector3 f27244L = new Vector3(0.0f, 1.0f, 0.0f);

    public final Vector3 f27245M = new Vector3();

    public float f27246N = 0.0f;

    public float f27247O = 0.0f;

    public class a implements Runnable {

        public final GameObject f27248b;

        public final Vector3 f27249c;

        public a(final GameObject val$gameObject, final Vector3 val$finalPosition) {
            this.f27248b = val$gameObject;
            this.f27249c = val$finalPosition;
        }

        @Override
        public void run() {
            this.f27248b.transform.h3(this.f27249c);
            this.f27248b.transform.I2();
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.S2(this.f27248b);
        }
    }

    @Override
    public void D(GameObject gameObject, GameObject camera, EditorCamera editorCamera, GameObject selectedObject, Panel3DView editor3DViewer) {
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
        w(selectedObject, this.f27244L, this.f27242J, editor3DViewer);
        if (p(editor3DViewer)) {
            gameObject.transform.G3();
        }
        gameObject.transform.g2(this.f27242J);
        if (editorCamera.getProjection() == Camera.G.Perspective) {
            gameObject.transform.setScale(A.b(gameObject.transform.B1(camera.transform) * 0.3f * C14333c.a()));
        } else {
            gameObject.transform.setScale(A.b(editorCamera.getOrtho_diameter() * 0.1f * C14333c.a()));
        }
    }

    @Override
    public Vector3 n(GameObject gameObject) {
        return this.f27242J;
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        float f10 = f(touchSlide, camera, this.f27242J, axisTransform);
        if (editor3DViewer != null && editor3DViewer.gridMove) {
            float f11 = this.f27246N;
            if (f11 > 0.0f) {
                float f12 = this.f27247O + f10;
                this.f27247O = f12;
                float F10 = F(f12, f11);
                this.f27243K.set(this.f27245M);
                this.f27243K.addLocal(this.f27242J, F10);
                K8.a.I(new a(gameObject, new Vector3(this.f27243K)));
            }
        }
        gameObject.transform.u0(this.f27243K);
        this.f27243K.addLocal(this.f27242J, f10);
        K8.a.I(new a(gameObject, new Vector3(this.f27243K)));
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        if (editor3DViewer == null || !editor3DViewer.gridMove || gameObject == null) {
            this.f27246N = 0.0f;
            this.f27247O = 0.0f;
        } else {
            gameObject.transform.u0(this.f27245M);
            w(gameObject, this.f27244L, this.f27242J, editor3DViewer);
            this.f27246N = g(gameObject, this.f27242J) * editor3DViewer.I1();
            this.f27247O = 0.0f;
        }
    }
}
