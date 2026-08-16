package X4;

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

public class c extends U4.a {

    public a f27939K;

    public b f27940L;

    public Quaternion f27938J = null;

    public final Vector2 f27941M = new Vector2();

    public final Vector3 f27942N = new Vector3();

    public final Vector3 f27943O = new Vector3();

    public final Vector3 f27944P = new Vector3();

    public final Quaternion f27945Q = new Quaternion();

    public final Quaternion f27946R = new Quaternion();

    public boolean f27947S = false;

    public final Vector3 f27948T = new Vector3(1.0f, 0.0f, 0.0f);

    private Vector3 L(GameObject gameObject) {
        Vector3 vector3 = new Vector3();
        w(gameObject, this.f27948T, vector3, this.f25759a);
        return vector3;
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
        C(gameObject.transform, selectedObject, editor3DViewer);
        if (editorCamera.getProjection() == Camera.G.Perspective) {
            gameObject.transform.setScale(A.b(gameObject.transform.B1(camera.transform) * 0.2f * C14333c.a()));
        } else {
            gameObject.transform.setScale(A.b(editorCamera.getOrtho_diameter() * 0.1f * C14333c.a()));
        }
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        l(editorCamera, editor3DViewer, touch, this.f27942N, this.f27941M);
        this.f27939K.f(this.f27941M);
        float d10 = this.f27939K.d();
        Vector3 u02 = editorCamera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class));
        Vector3 L10 = L(gameObject);
        Vector3 sub = u02.sub(gameObject.J0().u0((Vector3) JP.acquire(Vector3.class)));
        sub.normalizeLocal();
        boolean z10 = sub.dot(L10) >= 0.0f;
        if (z10) {
            d10 = -d10;
        }
        a(gameObject, this.f27938J, this.f27945Q, d10, 1.0f, 0.0f, 0.0f, editor3DViewer, this.f27946R);
        if (this.f27947S) {
            c(gameObject, this.f27946R, this.f27942N, this.f27944P);
            gameObject.transform.I2();
        } else if (gameObject.transform.a2()) {
            gameObject.transform.I2();
        }
        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.T2(gameObject);
        Quaternion quaternion = new Quaternion();
        Vector3 invertLocal = z10 ? L(gameObject).invertLocal() : L(gameObject);
        quaternion.U(invertLocal);
        this.f27940L.c(quaternion, invertLocal);
        this.f27940L.d(editorCamera, axisTransform, editor3DViewer);
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        super.u(editorCamera, gameObject, camera, axisTransform, touchSlide, touch, editor3DViewer);
        gameObject.transform.C0(this.f27945Q);
        boolean y10 = y(gameObject, editor3DViewer, this.f27942N);
        this.f27947S = y10;
        if (y10) {
            gameObject.transform.u0(this.f27943O);
            e(this.f27945Q, this.f27943O, this.f27942N, this.f27944P);
        }
        l(editorCamera, editor3DViewer, touch, this.f27942N, this.f27941M);
        this.f27939K = new a(this.f27941M);
        this.f27938J = gameObject.transform.h1();
        this.f27940L = new b(new ColorINT(125, 232, 65, 24), this.f27939K, editorCamera, gameObject, editor3DViewer);
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
