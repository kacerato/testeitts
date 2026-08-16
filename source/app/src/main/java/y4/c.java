package Y4;

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

    public final Vector3 f29749J = new Vector3();

    public final Vector3 f29750K = new Vector3(0.0f, 1.0f, 0.0f);

    @Override
    public void D(GameObject gameObject, GameObject camera, EditorCamera editorCamera, GameObject selectedObject, Panel3DView editor3DViewer) {
        B(gameObject, selectedObject, editor3DViewer);
        w(selectedObject, this.f29750K, this.f29749J, editor3DViewer);
        if (p(editor3DViewer)) {
            gameObject.transform.G3();
        }
        gameObject.transform.g2(this.f29749J);
        if (editorCamera.getProjection() == Camera.G.Perspective) {
            gameObject.transform.setScale(A.b(gameObject.transform.B1(camera.transform) * 0.3f * C14333c.a()));
        } else {
            gameObject.transform.setScale(A.b(editorCamera.getOrtho_diameter() * 0.1f * C14333c.a()));
        }
    }

    @Override
    public Vector3 n(GameObject gameObject) {
        return this.f29749J;
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        float f10 = f(touchSlide, camera, this.f29749J, axisTransform);
        boolean d10 = d(gameObject, editor3DViewer);
        b(gameObject, f10, this.f29749J, 0.0f, 1.0f, 0.0f, editor3DViewer);
        s(gameObject, editor3DViewer, d10);
        if (gameObject.transform.a2()) {
            gameObject.transform.I2();
        }
        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.U2(gameObject);
    }
}
