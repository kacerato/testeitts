package a5;

import Ic.A;
import U4.a;
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

@Deprecated
public class C3582a extends U4.a {

    public final Vector3 f31844J = new Vector3(1.0f, 0.0f, 0.0f);

    public final Vector3 f31845K = new Vector3();

    public final Vector3 f31846L = new Vector3();

    public Vector2 f31847M = null;

    public float f31848N = -999999.0f;

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
        gameObject.transform.x3(selectedObject.transform.B0());
        gameObject.transform.S2(this.f31844J);
        this.f31845K.set(0.0f, 0.0f, 1.0f);
        this.f31846L.set(0.0f, 1.0f, 0.0f);
        if (editorCamera.getProjection() == Camera.G.Perspective) {
            gameObject.transform.setScale(A.b(0.05f * gameObject.transform.B1(camera.transform) * C14333c.a()));
        } else {
            gameObject.transform.setScale(A.b(0.016f * editorCamera.getOrtho_diameter() * C14333c.a()));
        }
        gameObject.C(0).transform.setScale(1.0f);
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        float f10;
        boolean d10 = d(gameObject, editor3DViewer);
        float f11 = 1.0f;
        if (o(gameObject)) {
            Transform transform = new Transform();
            transform.setGameObject(gameObject);
            transform.x3(gameObject.J0().h1());
            transform.M0();
            float N02 = 1.0f / transform.N0();
            f10 = 1.0f / transform.O0();
            f11 = N02;
        } else {
            f10 = 1.0f;
        }
        float f12 = f(touchSlide, camera, gameObject.transform.up(), axisTransform);
        float f13 = f(touchSlide, camera, gameObject.transform.forward(), axisTransform);
        Vector3 scale = gameObject.transform.getScale();
        scale.addLocal(0.0f, f11 * f12, f10 * f13);
        gameObject.transform.setScale(scale);
        s(gameObject, editor3DViewer, d10);
        if (gameObject.transform.a2()) {
            gameObject.transform.I2();
        }
        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.U2(gameObject);
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        super.u(editorCamera, gameObject, camera, axisTransform, touchSlide, touch, editor3DViewer);
        this.f31847M = null;
    }

    @Override
    public a.EnumC0712a v(EditorCamera editorCamera, GameObject gameObject) {
        Vector3 sub = editorCamera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class)).sub(gameObject.J0().u0((Vector3) JP.acquire(Vector3.class)));
        sub.normalizeLocal();
        return Nc.b.k(sub.dot(this.f31844J)) >= 0.5f ? a.EnumC0712a.SHOW : a.EnumC0712a.HIDE;
    }
}
