package c5;

import Ic.A;
import U4.a;
import aa.d;
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

public class C4155b extends U4.a {

    public final Vector3 f34401J = new Vector3(0.0f, 1.0f, 0.0f);

    public final Vector3 f34402K = new Vector3();

    public final Vector3 f34403L = new Vector3();

    public final Vector3 f34404M = new Vector3();

    public final Vector3 f34405N = new Vector3();

    public float f34406O = 0.0f;

    public float f34407P = 0.0f;

    public Vector3 f34408Q = null;

    public class a implements Runnable {

        public final GameObject f34409b;

        public final Vector3 f34410c;

        public a(final GameObject val$gameObject, final Vector3 val$finalPosition) {
            this.f34409b = val$gameObject;
            this.f34410c = val$finalPosition;
        }

        @Override
        public void run() {
            this.f34409b.transform.h3(this.f34410c);
            this.f34409b.transform.I2();
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.S2(this.f34409b);
        }
    }

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
        this.f34402K.set(1.0f, 0.0f, 0.0f);
        this.f34403L.set(0.0f, 0.0f, 1.0f);
        if (editorCamera.getProjection() == Camera.G.Perspective) {
            gameObject.transform.setScale(A.b(0.05f * gameObject.transform.B1(camera.transform) * C14333c.a()));
        } else {
            gameObject.transform.setScale(A.b(0.016f * editorCamera.getOrtho_diameter() * C14333c.a()));
        }
        gameObject.C(0).transform.setScale(1.0f);
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        Vector2 vector2 = new Vector2();
        editor3DViewer.a0(touch, vector2);
        d screenPointToWorldRay = editorCamera.screenPointToWorldRay(vector2);
        Vector3 u02 = gameObject.transform.u0((Vector3) JP.acquire(Vector3.class));
        if (editor3DViewer.gridMove) {
            u02 = this.f34405N;
        }
        Vector3 L10 = L(screenPointToWorldRay.f31957b, screenPointToWorldRay.f31958c, u02, this.f34402K, this.f34403L);
        if (L10 != null) {
            Vector3 vector3 = this.f34408Q;
            if (vector3 == null) {
                this.f34408Q = L10.sub(gameObject.transform.u0((Vector3) JP.acquire(Vector3.class)));
                return;
            }
            L10.subLocal(vector3);
            if (editor3DViewer.gridMove) {
                float f10 = this.f34406O;
                if (f10 > 0.0f || this.f34407P > 0.0f) {
                    G(L10, this.f34405N, this.f34404M, this.f34402K, this.f34403L, f10, this.f34407P);
                }
            }
            K8.a.I(new a(gameObject, new Vector3(L10)));
        }
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        super.u(editorCamera, gameObject, camera, axisTransform, touchSlide, touch, editor3DViewer);
        this.f34408Q = null;
        if (editor3DViewer == null || !editor3DViewer.gridMove || gameObject == null) {
            this.f34406O = 0.0f;
            this.f34407P = 0.0f;
            return;
        }
        gameObject.transform.u0(this.f34405N);
        if (!this.f34402K.equally(0.0f)) {
            this.f34402K.normalizeLocal();
        }
        if (!this.f34403L.equally(0.0f)) {
            this.f34403L.normalizeLocal();
        }
        this.f34402K.cross(this.f34403L, this.f34404M);
        if (!this.f34404M.equally(0.0f)) {
            this.f34404M.normalizeLocal();
        }
        float I12 = editor3DViewer.I1();
        this.f34406O = g(gameObject, this.f34402K) * I12;
        this.f34407P = g(gameObject, this.f34403L) * I12;
    }

    @Override
    public a.EnumC0712a v(EditorCamera editorCamera, GameObject gameObject) {
        Vector3 sub = editorCamera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class)).sub(gameObject.J0().u0((Vector3) JP.acquire(Vector3.class)));
        sub.normalizeLocal();
        return Nc.b.k(sub.dot(this.f34401J)) >= 0.5f ? a.EnumC0712a.SHOW : a.EnumC0712a.HIDE;
    }
}
