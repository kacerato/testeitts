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

public class a extends U4.a {

    public final Vector3 f29740J = new Vector3();

    public final Vector3 f29741K = new Vector3();

    public final Vector3 f29742L = new Vector3();

    public final Vector3 f29743M = new Vector3();

    public final Vector3 f29744N = new Vector3(1.0f, 0.0f, 0.0f);

    public final Vector3 f29745O = new Vector3(0.0f, 1.0f, 0.0f);

    public final Vector3 f29746P = new Vector3(0.0f, 0.0f, 1.0f);

    @Override
    public void D(GameObject gameObject, GameObject camera, EditorCamera editorCamera, GameObject selectedObject, Panel3DView editor3DViewer) {
        B(gameObject, selectedObject, editor3DViewer);
        GameObject x10 = x(selectedObject);
        w(x10, this.f29744N, this.f29741K, editor3DViewer);
        w(x10, this.f29745O, this.f29742L, editor3DViewer);
        w(x10, this.f29746P, this.f29743M, editor3DViewer);
        this.f29740J.set(this.f29741K.getX() + this.f29742L.getX() + this.f29743M.getX(), this.f29741K.getY() + this.f29742L.getY() + this.f29743M.getY(), this.f29741K.getZ() + this.f29742L.getZ() + this.f29743M.getZ());
        this.f29740J.normalizeLocal();
        this.f29740J.mulLocal(-1.0f);
        if (p(editor3DViewer)) {
            gameObject.transform.G3();
        }
        gameObject.transform.g2(this.f29740J);
        if (editorCamera.getProjection() == Camera.G.Perspective) {
            gameObject.transform.setScale(A.b(gameObject.transform.B1(camera.transform) * 0.3f * C14333c.a()));
        } else {
            gameObject.transform.setScale(A.b(editorCamera.getOrtho_diameter() * 0.1f * C14333c.a()));
        }
    }

    @Override
    public Vector3 n(GameObject gameObject) {
        return this.f29740J;
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        boolean d10 = d(gameObject, editor3DViewer);
        GameObject x10 = x(gameObject);
        w(x10, this.f29744N, this.f29741K, editor3DViewer);
        w(x10, this.f29745O, this.f29742L, editor3DViewer);
        w(x10, this.f29746P, this.f29743M, editor3DViewer);
        this.f29740J.set(this.f29741K.getX() + this.f29742L.getX() + this.f29743M.getX(), this.f29741K.getY() + this.f29742L.getY() + this.f29743M.getY(), this.f29741K.getZ() + this.f29742L.getZ() + this.f29743M.getZ());
        this.f29740J.normalizeLocal();
        this.f29740J.mulLocal(-1.0f);
        float f10 = f(touchSlide, camera, this.f29740J, axisTransform) * gameObject.transform.j0().lengthF() * 1.0f;
        if (!Float.isNaN(f10)) {
            gameObject.transform.x(f10);
        }
        s(gameObject, editor3DViewer, d10);
        if (gameObject.transform.a2()) {
            gameObject.transform.I2();
        }
        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.U2(gameObject);
    }
}
