package Z4;

import Ic.A;
import K8.c;
import Nc.b;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import n.C14333c;
import tc.h;

public class a extends U4.a {

    public final Vector3 f30757J = new Vector3(0.0f, 1.0f, 0.0f);

    public final Vector3 f30758K = new Vector3();

    public final Vector3 f30759L = new Vector3();

    public Vector2 f30760M = null;

    public float f30761N = -999999.0f;

    public static Vector3 L(Vector3 rayOrigin, Vector3 rayDirection, Vector3 wallPosition, Vector3 wallDirection, Vector3 wallPerpendicular) {
        Vector3 vector3 = new Vector3();
        wallDirection.cross(wallPerpendicular, vector3);
        vector3.normalize();
        float dot = vector3.dot(rayDirection);
        if (Math.abs(dot) < 1.0E-6d) {
            return null;
        }
        Vector3 vector32 = new Vector3();
        wallPosition.sub(rayOrigin, vector32);
        float dot2 = vector32.dot(vector3) / dot;
        if (dot2 < 0.0f) {
            return null;
        }
        return new Vector3(rayDirection).mul(dot2).add(rayOrigin);
    }

    @Override
    public void D(GameObject gameObject, GameObject camera, EditorCamera editorCamera, GameObject selectedObject, Panel3DView editor3DViewer) {
        B(gameObject, selectedObject, editor3DViewer);
        this.f30758K.set(1.0f, 0.0f, 0.0f);
        this.f30759L.set(0.0f, 0.0f, 1.0f);
        if (editorCamera.getProjection() == Camera.G.Perspective) {
            gameObject.transform.setScale(A.b(gameObject.transform.B1(camera.transform) * 0.3f * C14333c.a()));
        } else {
            gameObject.transform.setScale(A.b(editorCamera.getOrtho_diameter() * 0.11f * C14333c.a()));
        }
        Vector3 sub = gameObject.transform.u0((Vector3) JP.acquire(Vector3.class)).sub(editorCamera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class)));
        sub.normalizeLocal();
        gameObject.transform.i0().U(sub);
        gameObject.transform.Z();
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        float f10;
        float f11;
        boolean d10 = d(gameObject, editor3DViewer);
        float B12 = editorCamera.getProjection() == Camera.G.Perspective ? camera.transform.B1(axisTransform) : editorCamera.getProjection() == Camera.G.Orthographic ? editorCamera.getOrtho_diameter() : 1.0f;
        Vector2 vector2 = this.f30760M;
        if (vector2 == null) {
            this.f30760M = touch.g().clone();
            this.f30761N = touch.g().getY();
            return;
        }
        vector2.x0(touch.g());
        float y10 = touch.g().getY();
        float f12 = y10 - this.f30761N;
        this.f30761N = y10;
        float f13 = (-(f12 / c.a())) * B12 * 2.0f;
        if (o(gameObject)) {
            Vector3 J02 = gameObject.H0().transform.J0();
            float x10 = f13 / J02.getX();
            f11 = f13 / J02.getY();
            f10 = f13 / J02.getZ();
            f13 = x10;
        } else {
            f10 = f13;
            f11 = f10;
        }
        Vector3 j02 = gameObject.transform.j0();
        float T02 = b.T0(j02.getX(), j02.getY(), j02.getZ());
        float x11 = j02.getX() / T02;
        float y11 = j02.getY() / T02;
        float z10 = j02.getZ() / T02;
        j02.setX(j02.getX() + (f13 * x11));
        j02.setY(j02.getY() + (f11 * y11));
        j02.setZ(j02.getZ() + (f10 * z10));
        gameObject.transform.Z();
        s(gameObject, editor3DViewer, d10);
        if (gameObject.transform.a2()) {
            gameObject.transform.I2();
        }
        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.U2(gameObject);
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        super.u(editorCamera, gameObject, camera, axisTransform, touchSlide, touch, editor3DViewer);
        this.f30760M = null;
    }
}
