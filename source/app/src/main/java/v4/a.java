package V4;

import Ic.A;
import U4.a;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import n.C14333c;
import tc.h;

public class a extends U4.a {

    public X4.a f26571K;

    public X4.b f26572L;

    public Quaternion f26570J = null;

    public final Vector2 f26573M = new Vector2();

    public final Vector3 f26574N = new Vector3();

    public final Vector3 f26575O = new Vector3();

    public final Vector3 f26576P = new Vector3();

    public final Quaternion f26577Q = new Quaternion();

    public final Quaternion f26578R = new Quaternion();

    public boolean f26579S = false;

    public final Vector3 f26580T = new Vector3(1.0f, 0.0f, 0.0f);

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
        C(gameObject.transform, selectedObject, editor3DViewer);
        if (editorCamera.getProjection() == Camera.G.Perspective) {
            gameObject.transform.setScale(A.b(gameObject.transform.B1(camera.transform) * 0.2f * C14333c.a()));
        } else {
            gameObject.transform.setScale(A.b(editorCamera.getOrtho_diameter() * 0.1f * C14333c.a()));
        }
    }

    public final Vector3 L(GameObject gameObject) {
        Vector3 vector3 = new Vector3();
        w(gameObject, this.f26580T, vector3, this.f25759a);
        return vector3;
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        l(editorCamera, editor3DViewer, touch, this.f26574N, this.f26573M);
        this.f26571K.f(this.f26573M);
        float d10 = this.f26571K.d();
        Vector3 u02 = editorCamera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class));
        Vector3 L10 = L(gameObject);
        Vector3 sub = u02.sub(gameObject.J0().u0((Vector3) JP.acquire(Vector3.class)));
        sub.normalizeLocal();
        boolean z10 = sub.dot(L10) >= 0.0f;
        if (z10) {
            d10 = -d10;
        }
        a(gameObject, this.f26570J, this.f26577Q, d10, 1.0f, 0.0f, 0.0f, editor3DViewer, this.f26578R);
        if (this.f26579S) {
            c(gameObject, this.f26578R, this.f26574N, this.f26576P);
            gameObject.transform.I2();
        } else if (gameObject.transform.a2()) {
            gameObject.transform.I2();
        }
        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.T2(gameObject);
        Quaternion quaternion = new Quaternion();
        Vector3 invertLocal = z10 ? L(gameObject).invertLocal() : L(gameObject);
        quaternion.U(invertLocal);
        this.f26572L.c(quaternion, invertLocal);
        this.f26572L.d(editorCamera, axisTransform, editor3DViewer);
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        super.u(editorCamera, gameObject, camera, axisTransform, touchSlide, touch, editor3DViewer);
        gameObject.transform.C0(this.f26577Q);
        boolean y10 = y(gameObject, editor3DViewer, this.f26574N);
        this.f26579S = y10;
        if (y10) {
            gameObject.transform.u0(this.f26575O);
            e(this.f26577Q, this.f26575O, this.f26574N, this.f26576P);
        }
        l(editorCamera, editor3DViewer, touch, this.f26574N, this.f26573M);
        this.f26571K = new X4.a(this.f26573M);
        this.f26570J = gameObject.transform.h1();
        this.f26572L = new X4.b(new ColorINT(125, 232, 65, 24), this.f26571K, editorCamera, gameObject, editor3DViewer);
    }

    @Override
    public a.EnumC0712a v(EditorCamera editorCamera, GameObject gameObject) {
        Vector3 u02 = editorCamera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class));
        Vector3 L10 = L(gameObject);
        Vector3 sub = u02.sub(gameObject.J0().u0((Vector3) JP.acquire(Vector3.class)));
        sub.normalizeLocal();
        return Nc.b.k(sub.dot(L10)) >= 0.66f ? a.EnumC0712a.SHOW : a.EnumC0712a.HIDE;
    }
}
