package U4;

import K8.c;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import gb.C13314b;
import tc.h;

public class a {

    public static final int f25750E = 0;

    public static final int f25751F = 1;

    public static final int f25752G = 2;

    public static final float f25753H = 1.0E-5f;

    public static final float f25754I = 1.0E-4f;

    public Panel3DView f25759a;

    public float f25760b = 1.0f;

    public final Vector3 f25761c = new Vector3();

    public final Vector3 f25762d = new Vector3();

    public final Vector3 f25763e = new Vector3();

    public final Vector2 f25764f = new Vector2();

    public final Vector2 f25765g = new Vector2();

    public final Vector3 f25766h = new Vector3();

    public final Vector3 f25767i = new Vector3();

    public final Vector2 f25768j = new Vector2();

    public final Vector2 f25769k = new Vector2();

    public final Vector2 f25770l = new Vector2();

    public final Vector2 f25771m = new Vector2();

    public final Vector3 f25772n = new Vector3();

    public final Vector3 f25773o = new Vector3();

    public final Vector3 f25774p = new Vector3();

    public final Vector3 f25775q = new Vector3();

    public final Vector3 f25776r = new Vector3();

    public final Vector3 f25777s = new Vector3();

    public final f f25778t = new f();

    public final Vector3 f25779u = new Vector3();

    public final Quaternion f25780v = new Quaternion();

    public int f25781w = 0;

    public final Vector3 f25782x = new Vector3();

    public final Vector3 f25783y = new Vector3();

    public final Vector3 f25784z = new Vector3();

    public final Vector3 f25755A = new Vector3();

    public final Quaternion f25756B = new Quaternion();

    public final f f25757C = new f();

    public final Vector3 f25758D = new Vector3();

    public enum EnumC0712a {
        IGNORE,
        HIDE,
        SHOW
    }

    public Transform.F A(Panel3DView viewer) {
        return p(viewer) ? Transform.F.Global : Transform.F.Local;
    }

    public void B(GameObject axisObject, GameObject selectedObject, Panel3DView viewer) {
        if (axisObject == null || selectedObject == null) {
            return;
        }
        if (viewer == null) {
            viewer = this.f25759a;
        }
        if (viewer == null || !viewer.useBoundingCenter) {
            axisObject.transform.n3(selectedObject);
        } else if (J(selectedObject, this.f25775q) || H(selectedObject, this.f25775q)) {
            axisObject.transform.p3(this.f25775q);
        } else {
            axisObject.transform.n3(selectedObject);
        }
    }

    public void C(Transform gizmoTransform, GameObject selectedObject, Panel3DView viewer) {
        if (gizmoTransform == null) {
            return;
        }
        if (q(viewer) && selectedObject != null) {
            try {
                gizmoTransform.x3(selectedObject.transform.B0());
                return;
            } catch (Exception unused) {
            }
        }
        gizmoTransform.G3();
    }

    public void D(GameObject axisObject, GameObject camera, EditorCamera editorCamera, GameObject selectedObject, Panel3DView editor3DViewe) {
    }

    public a E(float userSensibility) {
        this.f25760b = userSensibility;
        return this;
    }

    public float F(float distance, float step) {
        if (step <= 1.0E-4f || !Float.isFinite(distance)) {
            return distance;
        }
        if (Math.abs(distance) <= 1.0E-4f * step) {
            return 0.0f;
        }
        return Math.round(distance / step) * step;
    }

    public void G(Vector3 position, Vector3 origin, Vector3 normal, Vector3 tangent, Vector3 bitangent, float tangentStep, float bitangentStep) {
        if (position == null || origin == null || tangent == null || bitangent == null || normal == null) {
            return;
        }
        this.f25758D.set(position);
        this.f25758D.subLocal(origin);
        float dot = this.f25758D.dot(tangent);
        float dot2 = this.f25758D.dot(bitangent);
        float dot3 = this.f25758D.dot(normal);
        float F10 = F(dot, tangentStep);
        float F11 = F(dot2, bitangentStep);
        position.set(origin);
        position.addLocal(tangent, F10);
        position.addLocal(bitangent, F11);
        position.addLocal(normal, dot3);
    }

    public final boolean H(GameObject gameObject, Vector3 outCenter) {
        try {
            C13314b i10 = C13314b.i(gameObject);
            if (i10 != null && i10.f88252d != null) {
                gameObject.transform.p0(this.f25778t);
                this.f25778t.P(i10.f88252d, outCenter);
                return r(outCenter);
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final boolean I(GameObject gameObject, Vector3 outCenter, int preferredSource) {
        if (gameObject == null || outCenter == null) {
            return false;
        }
        if (preferredSource == 1) {
            if (J(gameObject, outCenter)) {
                return true;
            }
            return H(gameObject, outCenter);
        }
        if (preferredSource == 2) {
            if (H(gameObject, outCenter)) {
                return true;
            }
            return J(gameObject, outCenter);
        }
        if (J(gameObject, outCenter)) {
            return true;
        }
        return H(gameObject, outCenter);
    }

    public final boolean J(GameObject gameObject, Vector3 outCenter) {
        GameObject.g z10 = gameObject.z();
        if (z10 == null || z10.f()) {
            return false;
        }
        outCenter.set(z10.d());
        return r(outCenter);
    }

    public void K(GameObject gameObject, GameObject camera, Transform axisTransform) {
    }

    public void a(GameObject gameObject, Quaternion startLocalRotation, Quaternion startGlobalRotation, float angleDegrees, float axisX, float axisY, float axisZ, Panel3DView viewer, Quaternion outCurrentGlobalRotation) {
        if (gameObject == null) {
            return;
        }
        Quaternion.m(axisX, axisY, axisZ, angleDegrees, this.f25780v);
        if (!p(viewer)) {
            gameObject.transform.x3(startLocalRotation);
            gameObject.transform.q2(this.f25780v);
            gameObject.transform.C0(outCurrentGlobalRotation);
        } else {
            outCurrentGlobalRotation.u0(this.f25780v);
            outCurrentGlobalRotation.i0(startGlobalRotation);
            outCurrentGlobalRotation.l0();
            gameObject.transform.i3(outCurrentGlobalRotation);
        }
    }

    public void b(GameObject gameObject, float axisDelta, Vector3 axisWorldDirection, float localAxisX, float localAxisY, float localAxisZ, Panel3DView viewer) {
        if (gameObject == null || axisDelta == 0.0f) {
            return;
        }
        if (!p(viewer)) {
            gameObject.transform.Y2(localAxisX * axisDelta, localAxisY * axisDelta, localAxisZ * axisDelta, Transform.F.Local);
            return;
        }
        if (axisWorldDirection == null || axisWorldDirection.equally(0.0f)) {
            return;
        }
        this.f25779u.set(axisWorldDirection);
        Transform transform = gameObject.transform;
        Vector3 vector3 = this.f25779u;
        transform.R1(vector3, vector3);
        if (r(this.f25779u)) {
            this.f25779u.mulLocal(axisDelta);
            gameObject.transform.z(this.f25779u);
        }
    }

    public void c(GameObject gameObject, Quaternion currentGlobalRotation, Vector3 pivotWorld, Vector3 pivotLocalOffset) {
        this.f25772n.set(pivotLocalOffset);
        Vector3 vector3 = this.f25772n;
        currentGlobalRotation.r0(vector3, vector3, true);
        this.f25773o.set(pivotWorld).addLocal(this.f25772n);
        gameObject.transform.h3(this.f25773o);
    }

    public boolean d(GameObject gameObject, Panel3DView viewer) {
        if (viewer == null) {
            viewer = this.f25759a;
        }
        if (viewer == null || !viewer.useBoundingCenter || gameObject == null) {
            this.f25781w = 0;
            return false;
        }
        gameObject.transform.I2();
        if (J(gameObject, this.f25775q)) {
            this.f25781w = 1;
            return true;
        }
        if (H(gameObject, this.f25775q)) {
            this.f25781w = 2;
            return true;
        }
        this.f25781w = 0;
        return false;
    }

    public void e(Quaternion startGlobalRotation, Vector3 startGlobalPosition, Vector3 pivotWorld, Vector3 outLocalOffset) {
        outLocalOffset.set(startGlobalPosition).subLocal(pivotWorld);
        Quaternion quaternion = new Quaternion(startGlobalRotation.I(), -startGlobalRotation.getX(), -startGlobalRotation.getY(), -startGlobalRotation.getZ());
        quaternion.l0();
        quaternion.r0(outLocalOffset, outLocalOffset, true);
    }

    public float f(Vector2 touchSlide, GameObject camObj, Vector3 axisWorldDirection, Transform axisTransform) {
        Camera camera;
        if (touchSlide == null || axisTransform == null || axisWorldDirection == null || touchSlide.equally(0.0f) || (camera = (Camera) camObj.c0(Component.e.Camera)) == null) {
            return 0.0f;
        }
        axisTransform.u0(this.f25766h);
        this.f25767i.set(this.f25766h).addLocal(axisWorldDirection);
        Vector2 worldToScreenCoordinates = camera.worldToScreenCoordinates(this.f25766h);
        Vector2 worldToScreenCoordinates2 = camera.worldToScreenCoordinates(this.f25767i);
        if (worldToScreenCoordinates == null || worldToScreenCoordinates2 == null) {
            return i(touchSlide, camObj, axisWorldDirection, axisTransform) * 0.016f;
        }
        m(camera, worldToScreenCoordinates, this.f25768j);
        m(camera, worldToScreenCoordinates2, this.f25769k);
        this.f25770l.x0(this.f25769k);
        this.f25770l.I0(this.f25768j);
        float lengthF = this.f25770l.lengthF();
        if (!Float.isFinite(lengthF) || lengthF < 0.001f) {
            return i(touchSlide, camObj, axisWorldDirection, axisTransform) * 0.016f;
        }
        this.f25770l.C(lengthF);
        return (touchSlide.N(this.f25770l) / lengthF) * this.f25760b;
    }

    public float g(GameObject gameObject, Vector3 direction) {
        if (gameObject != null && direction != null) {
            this.f25782x.set(direction);
            if (this.f25782x.equally(0.0f)) {
                return 0.0f;
            }
            this.f25782x.normalizeLocal();
            C13314b h10 = C13314b.h(gameObject, false, false);
            if (h10 != null && h10.f88250b != null && h10.f88251c != null) {
                gameObject.transform.u0(this.f25784z);
                gameObject.transform.C0(this.f25756B);
                gameObject.transform.K0(this.f25755A);
                this.f25757C.Z0(this.f25784z, this.f25756B, this.f25755A);
                float x10 = h10.f88250b.getX();
                float y10 = h10.f88250b.getY();
                float z10 = h10.f88250b.getZ();
                float x11 = h10.f88251c.getX();
                float y11 = h10.f88251c.getY();
                float z11 = h10.f88251c.getZ();
                float f10 = Float.POSITIVE_INFINITY;
                float f11 = Float.NEGATIVE_INFINITY;
                for (int i10 = 0; i10 < 8; i10++) {
                    this.f25757C.o0((i10 & 1) == 0 ? x10 : x11, (i10 & 2) == 0 ? y10 : y11, (i10 & 4) == 0 ? z10 : z11, this.f25783y);
                    float dot = this.f25783y.dot(this.f25782x);
                    if (dot < f10) {
                        f10 = dot;
                    }
                    if (dot > f11) {
                        f11 = dot;
                    }
                }
                float f12 = f11 - f10;
                if (Float.isFinite(f12)) {
                    return Math.abs(f12);
                }
                return 0.0f;
            }
        }
        return 0.0f;
    }

    public float h(Vector2 touchSlide, GameObject camObj, Vector3 inWorldNormal, Transform axisTransform) {
        Camera camera;
        this.f25765g.B0(touchSlide.f79838x / c.b());
        this.f25765g.C0(touchSlide.f79839y / c.a());
        if (this.f25765g.equally(0.0f) || (camera = (Camera) camObj.c0(Component.e.Camera)) == null) {
            return 0.0f;
        }
        z(camera, axisTransform, this.f25764f);
        camera.screenCoordToWorldNormal(this.f25764f, this.f25761c);
        this.f25764f.o(touchSlide);
        camera.screenCoordToWorldNormal(this.f25764f, this.f25762d);
        this.f25763e.set(this.f25762d.getX() - this.f25761c.getX(), this.f25762d.getY() - this.f25761c.getY(), this.f25762d.getZ() - this.f25761c.getZ());
        this.f25763e.normalizeLocal();
        return inWorldNormal.dot(this.f25763e);
    }

    public float i(Vector2 touchSlide, GameObject camObj, Vector3 objAxis, Transform axisTransform) {
        return j(touchSlide, camObj, objAxis, axisTransform, true);
    }

    public float j(Vector2 touchSlide, GameObject camObj, Vector3 objAxis, Transform axisTransform, boolean cameraDistanceMultiply) {
        this.f25765g.B0(touchSlide.f79838x / c.b());
        this.f25765g.C0(touchSlide.f79839y / c.a());
        float f10 = 0.0f;
        if (this.f25765g.equally(0.0f)) {
            return 0.0f;
        }
        float S10 = this.f25765g.S();
        Camera camera = (Camera) camObj.c0(Component.e.Camera);
        if (camera == null) {
            return 0.0f;
        }
        z(camera, axisTransform, this.f25764f);
        camera.screenCoordToWorldNormal(this.f25764f, this.f25761c);
        this.f25764f.o(touchSlide);
        camera.screenCoordToWorldNormal(this.f25764f, this.f25762d);
        this.f25763e.set(this.f25762d.getX() - this.f25761c.getX(), this.f25762d.getY() - this.f25761c.getY(), this.f25762d.getZ() - this.f25761c.getZ());
        this.f25763e.normalizeLocal();
        float dot = objAxis.dot(this.f25763e);
        float f11 = 1.0f;
        if (dot > 0.0f) {
            f10 = 1.0f;
        } else if (dot < 0.0f) {
            f10 = -1.0f;
        }
        if (cameraDistanceMultiply) {
            if (camera.getProjection() == Camera.G.Perspective) {
                f11 = camObj.transform.B1(axisTransform);
            } else if (camera.getProjection() == Camera.G.Orthographic) {
                f11 = camera.getOrtho_diameter();
            }
        }
        return this.f25760b * 80.0f * f11 * S10 * f10;
    }

    public float k(Vector2 touchSlide, GameObject camObj, Vector3 objAxis, Transform axisTransform) {
        this.f25765g.B0(touchSlide.f79838x / c.b());
        this.f25765g.C0(touchSlide.f79839y / c.a());
        float f10 = 0.0f;
        if (this.f25765g.equally(0.0f)) {
            return 0.0f;
        }
        float S10 = this.f25765g.S();
        Camera camera = (Camera) camObj.c0(Component.e.Camera);
        if (camera == null) {
            return 0.0f;
        }
        z(camera, axisTransform, this.f25764f);
        camera.screenCoordToWorldNormal(this.f25764f, this.f25761c);
        this.f25764f.o(touchSlide);
        camera.screenCoordToWorldNormal(this.f25764f, this.f25762d);
        this.f25763e.set(this.f25762d.getX() - this.f25761c.getX(), this.f25762d.getY() - this.f25761c.getY(), this.f25762d.getZ() - this.f25761c.getZ());
        this.f25763e.normalizeLocal();
        float dot = objAxis.dot(this.f25763e);
        if (dot > 0.0f) {
            f10 = 1.0f;
        } else if (dot < 0.0f) {
            f10 = -1.0f;
        }
        return this.f25760b * S10 * f10;
    }

    public void l(EditorCamera editorCamera, Panel3DView editor3DViewer, h touch, Vector3 worldPivot, Vector2 outDirection) {
        Vector2 Z10 = editor3DViewer.Z(touch);
        Z10.B0(Z10.getX() / editor3DViewer.J());
        Z10.C0(Z10.getY() / editor3DViewer.H());
        Vector2 worldToScreenCoordinates = editorCamera.worldToScreenCoordinates(worldPivot);
        if (worldToScreenCoordinates == null) {
            outDirection.v0(0.0f);
            return;
        }
        worldToScreenCoordinates.B0(worldToScreenCoordinates.getX() / Math.max(1.0f, editorCamera.getImageWidth()));
        worldToScreenCoordinates.C0(1.0f - (worldToScreenCoordinates.getY() / Math.max(1.0f, editorCamera.getImageHeight())));
        outDirection.x0(Z10);
        outDirection.I0(worldToScreenCoordinates);
    }

    public final void m(Camera camera, Vector2 cameraLocalCoordinates, Vector2 out) {
        o4.f O10 = this.f25759a.O();
        float b10 = c.b();
        float a10 = c.a();
        float e10 = O10.e() * b10;
        float f10 = O10.f() * a10;
        float d10 = O10.d() * b10;
        float c10 = O10.c() * a10;
        out.w0(e10 + ((cameraLocalCoordinates.getX() / Math.max(1.0f, camera.getImageWidth())) * d10), f10 + ((1.0f - (cameraLocalCoordinates.getY() / Math.max(1.0f, camera.getImageHeight()))) * c10));
    }

    public Vector3 n(GameObject gameObject) {
        return null;
    }

    public boolean o(GameObject gameObject) {
        return (gameObject == null || gameObject.transform == null || !gameObject.O0() || gameObject.transform.V1()) ? false : true;
    }

    public boolean p(Panel3DView viewer) {
        if (viewer == null) {
            viewer = this.f25759a;
        }
        return viewer == null || viewer.useGlobalOrientation || viewer.K1() == Panel3DView.i.Global;
    }

    public boolean q(Panel3DView viewer) {
        return !p(viewer);
    }

    public final boolean r(Vector3 vector) {
        return Float.isFinite(vector.getX()) && Float.isFinite(vector.getY()) && Float.isFinite(vector.getZ());
    }

    public void s(GameObject gameObject, Panel3DView viewer, boolean centerWasCached) {
        if (!centerWasCached || gameObject == null) {
            return;
        }
        if (viewer == null) {
            viewer = this.f25759a;
        }
        if (viewer == null || !viewer.useBoundingCenter) {
            return;
        }
        gameObject.transform.I2();
        if (I(gameObject, this.f25776r, this.f25781w)) {
            for (int i10 = 0; i10 < 3; i10++) {
                this.f25776r.subLocal(this.f25775q);
                if (this.f25776r.lengthF() <= 1.0E-5f) {
                    return;
                }
                gameObject.transform.u0(this.f25777s);
                this.f25777s.subLocal(this.f25776r);
                gameObject.transform.h3(this.f25777s);
                gameObject.transform.I2();
                if (!I(gameObject, this.f25776r, this.f25781w)) {
                    return;
                }
            }
        }
    }

    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
    }

    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
    }

    public EnumC0712a v(EditorCamera editorCamera, GameObject gameObject) {
        return EnumC0712a.IGNORE;
    }

    public void w(GameObject referenceObject, Vector3 localAxis, Vector3 out, Panel3DView viewer) {
        if (out == null || localAxis == null) {
            return;
        }
        if (p(viewer) || referenceObject == null) {
            out.set(localAxis);
        } else {
            this.f25774p.set(localAxis);
            referenceObject.transform.d4(this.f25774p, out);
        }
        if (out.equally(0.0f)) {
            return;
        }
        out.normalizeLocal();
    }

    public GameObject x(GameObject gameObject) {
        return o(gameObject) ? gameObject.H0() : gameObject;
    }

    public boolean y(GameObject gameObject, Panel3DView editor3DViewer, Vector3 outPivot) {
        if (gameObject == null) {
            outPivot.set(0.0f);
            return false;
        }
        if (editor3DViewer != null && editor3DViewer.useBoundingCenter) {
            GameObject.g z10 = gameObject.z();
            if (!z10.f()) {
                outPivot.set(z10.d());
                return true;
            }
        }
        gameObject.transform.u0(outPivot);
        return false;
    }

    public final void z(Camera camera, Transform axisTransform, Vector2 out) {
        o4.f O10 = this.f25759a.O();
        float b10 = c.b();
        float a10 = c.a();
        float e10 = O10.e() * b10;
        float f10 = O10.f() * a10;
        float d10 = O10.d() * b10;
        float c10 = O10.c() * a10;
        this.f25771m.w0((d10 / 2.0f) + e10, (c10 / 2.0f) + f10);
        out.x0(this.f25771m);
        if (camera == null || axisTransform == null) {
            return;
        }
        axisTransform.u0(this.f25766h);
        Vector2 worldToScreenCoordinates = camera.worldToScreenCoordinates(this.f25766h);
        if (worldToScreenCoordinates == null) {
            return;
        }
        m(camera, worldToScreenCoordinates, this.f25768j);
        float x10 = this.f25768j.getX();
        float y10 = this.f25768j.getY();
        if (Float.isFinite(x10) && Float.isFinite(y10)) {
            this.f25768j.w0(Math.max(e10, Math.min(d10 + e10, x10)), Math.max(f10, Math.min(c10 + f10, y10)));
            out.x0(this.f25768j);
        }
    }
}
