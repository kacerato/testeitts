package V8;

import JAVARuntime.Color;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import android.opengl.Matrix;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import uc.C15593a;
import vc.q;

public class a {

    public static final int f26628A = 6;

    public static final int f26629B = 7;

    public static final int f26630u = 0;

    public static final int f26631v = 1;

    public static final int f26632w = 2;

    public static final int f26633x = 3;

    public static final int f26634y = 4;

    public static final int f26635z = 5;

    public final Vertex f26636a;

    public final q f26637b;

    public final NativeIntBuffer f26638c;

    public final NativeIntBuffer f26639d;

    public final float[] f26640e;

    public final C0733a f26641f;

    public final Color f26642g;

    public final boolean f26643h;

    public final boolean f26644i;

    public final Vector3 f26645j;

    public final Vector3 f26646k;

    public final Vector3 f26647l;

    public final Vector3 f26648m;

    public final Vector3 f26649n;

    public final Quaternion f26650o;

    public GizmoObject f26651p;

    public final float[] f26652q;

    public final f f26653r;

    public final f f26654s;

    public final f f26655t;

    public static class C0733a {

        public float f26656a = -999.0f;

        public float f26657b = -999.0f;

        public float f26658c = -999.0f;

        public float f26659d = -999.0f;

        public float f26660e = -999.0f;

        public boolean a(float fov, float minimalDistance, float maxDistance) {
            if (fov == this.f26660e && this.f26658c == minimalDistance && this.f26659d == maxDistance) {
                return false;
            }
            this.f26658c = minimalDistance;
            this.f26659d = maxDistance;
            this.f26660e = fov;
            return true;
        }

        public boolean b(Camera camera, int sw, int sh2) {
            float minimalDistance = camera.getMinimalDistance();
            float renderDistance = camera.getRenderDistance();
            float fov = camera.getFov();
            if (fov == this.f26660e && this.f26658c == minimalDistance && this.f26659d == renderDistance && sw == this.f26656a && sh2 == this.f26657b) {
                return false;
            }
            this.f26658c = minimalDistance;
            this.f26659d = renderDistance;
            this.f26660e = fov;
            this.f26656a = sw;
            this.f26657b = sh2;
            return true;
        }
    }

    public a() {
        this(true, true);
    }

    public final float[] a(float orthoDiameter, float minimalDistance, float maxDistance, float[] frustumMatrix) {
        float f10 = -orthoDiameter;
        try {
            Matrix.orthoM(frustumMatrix, 0, (f10 * 1.0f) / 2.0f, (1.0f * orthoDiameter) / 2.0f, f10 / 2.0f, orthoDiameter / 2.0f, minimalDistance, maxDistance);
            return frustumMatrix;
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            return frustumMatrix;
        }
    }

    public final float[] b(float fov, float minimalDistance, float maxDistance, float[] frustumMatrix) {
        try {
            Matrix.perspectiveM(frustumMatrix, 0, fov, 1.0f, minimalDistance, maxDistance);
            return frustumMatrix;
        } catch (Exception e10) {
            e10.printStackTrace();
            return frustumMatrix;
        }
    }

    public void c(Camera camera) {
        if (this.f26641f.b(camera, camera.getImageWidth(), camera.getImageHeight())) {
            float minimalDistance = camera.getMinimalDistance();
            float renderDistance = camera.getRenderDistance();
            Vector3 viewSpaceCoordToWorldNormal = camera.viewSpaceCoordToWorldNormal(-1.0f, 1.0f, this.f26645j, this.f26640e);
            Vector3 viewSpaceCoordToWorldNormal2 = camera.viewSpaceCoordToWorldNormal(1.0f, 1.0f, this.f26646k, this.f26640e);
            Vector3 viewSpaceCoordToWorldNormal3 = camera.viewSpaceCoordToWorldNormal(-1.0f, -1.0f, this.f26647l, this.f26640e);
            Vector3 viewSpaceCoordToWorldNormal4 = camera.viewSpaceCoordToWorldNormal(1.0f, -1.0f, this.f26648m, this.f26640e);
            float z10 = (1.0f / viewSpaceCoordToWorldNormal.getZ()) * minimalDistance;
            this.f26637b.A(0, viewSpaceCoordToWorldNormal.getX() * z10, viewSpaceCoordToWorldNormal.getY() * z10, viewSpaceCoordToWorldNormal.getZ() * z10);
            this.f26637b.A(1, viewSpaceCoordToWorldNormal2.getX() * z10, viewSpaceCoordToWorldNormal2.getY() * z10, viewSpaceCoordToWorldNormal2.getZ() * z10);
            this.f26637b.A(2, viewSpaceCoordToWorldNormal3.getX() * z10, viewSpaceCoordToWorldNormal3.getY() * z10, viewSpaceCoordToWorldNormal3.getZ() * z10);
            this.f26637b.A(3, viewSpaceCoordToWorldNormal4.getX() * z10, viewSpaceCoordToWorldNormal4.getY() * z10, viewSpaceCoordToWorldNormal4.getZ() * z10);
            float z11 = 1.0f / viewSpaceCoordToWorldNormal.getZ();
            this.f26637b.A(4, viewSpaceCoordToWorldNormal.getX() * renderDistance * z11, viewSpaceCoordToWorldNormal.getY() * renderDistance * z11, viewSpaceCoordToWorldNormal.getZ() * renderDistance * z11);
            this.f26637b.A(5, viewSpaceCoordToWorldNormal2.getX() * renderDistance * z11, viewSpaceCoordToWorldNormal2.getY() * renderDistance * z11, viewSpaceCoordToWorldNormal2.getZ() * renderDistance * z11);
            this.f26637b.A(6, viewSpaceCoordToWorldNormal3.getX() * renderDistance * z11, viewSpaceCoordToWorldNormal3.getY() * renderDistance * z11, viewSpaceCoordToWorldNormal3.getZ() * renderDistance * z11);
            this.f26637b.A(7, viewSpaceCoordToWorldNormal4.getX() * renderDistance * z11, viewSpaceCoordToWorldNormal4.getY() * renderDistance * z11, viewSpaceCoordToWorldNormal4.getZ() * renderDistance * z11);
            this.f26636a.apply();
        }
    }

    public void d(float diameter, float minimalDistance, float maxDistance) {
        if (this.f26641f.a(diameter, minimalDistance, maxDistance)) {
            float[] a10 = a(diameter, minimalDistance, maxDistance, this.f26652q);
            Vector3 j10 = j(-1.0f, 1.0f, this.f26645j, this.f26640e, a10);
            Vector3 j11 = j(1.0f, 1.0f, this.f26646k, this.f26640e, a10);
            Vector3 j12 = j(-1.0f, -1.0f, this.f26647l, this.f26640e, a10);
            Vector3 j13 = j(1.0f, -1.0f, this.f26648m, this.f26640e, a10);
            this.f26637b.A(0, j10.getX() * minimalDistance, j10.getY() * minimalDistance, j10.getZ() * minimalDistance);
            this.f26637b.A(1, j11.getX() * minimalDistance, j11.getY() * minimalDistance, j11.getZ() * minimalDistance);
            this.f26637b.A(2, j12.getX() * minimalDistance, j12.getY() * minimalDistance, j12.getZ() * minimalDistance);
            this.f26637b.A(3, j13.getX() * minimalDistance, j13.getY() * minimalDistance, j13.getZ() * minimalDistance);
            float z10 = 1.0f / j10.getZ();
            this.f26637b.A(4, j10.getX() * maxDistance * z10, j10.getY() * maxDistance * z10, j10.getZ() * maxDistance * z10);
            this.f26637b.A(5, j11.getX() * maxDistance * z10, j11.getY() * maxDistance * z10, j11.getZ() * maxDistance * z10);
            this.f26637b.A(6, j12.getX() * maxDistance * z10, j12.getY() * maxDistance * z10, j12.getZ() * maxDistance * z10);
            this.f26637b.A(7, j13.getX() * maxDistance * z10, j13.getY() * maxDistance * z10, j13.getZ() * maxDistance * z10);
            this.f26636a.apply();
        }
    }

    public void e(float fov, float minimalDistance, float maxDistance) {
        if (this.f26641f.a(fov, minimalDistance, maxDistance)) {
            float[] b10 = b(fov, minimalDistance, maxDistance, this.f26652q);
            Vector3 k10 = k(-1.0f, 1.0f, this.f26645j, this.f26640e, b10);
            Vector3 k11 = k(1.0f, 1.0f, this.f26646k, this.f26640e, b10);
            Vector3 k12 = k(-1.0f, -1.0f, this.f26647l, this.f26640e, b10);
            Vector3 k13 = k(1.0f, -1.0f, this.f26648m, this.f26640e, b10);
            this.f26637b.A(0, k10.getX() * minimalDistance, k10.getY() * minimalDistance, k10.getZ() * minimalDistance);
            this.f26637b.A(1, k11.getX() * minimalDistance, k11.getY() * minimalDistance, k11.getZ() * minimalDistance);
            this.f26637b.A(2, k12.getX() * minimalDistance, k12.getY() * minimalDistance, k12.getZ() * minimalDistance);
            this.f26637b.A(3, k13.getX() * minimalDistance, k13.getY() * minimalDistance, k13.getZ() * minimalDistance);
            float z10 = 1.0f / k10.getZ();
            this.f26637b.A(4, k10.getX() * maxDistance * z10, k10.getY() * maxDistance * z10, k10.getZ() * maxDistance * z10);
            this.f26637b.A(5, k11.getX() * maxDistance * z10, k11.getY() * maxDistance * z10, k11.getZ() * maxDistance * z10);
            this.f26637b.A(6, k12.getX() * maxDistance * z10, k12.getY() * maxDistance * z10, k12.getZ() * maxDistance * z10);
            this.f26637b.A(7, k13.getX() * maxDistance * z10, k13.getY() * maxDistance * z10, k13.getZ() * maxDistance * z10);
            this.f26636a.apply();
        }
    }

    public void f() {
        this.f26651p = null;
    }

    public final void g() {
        this.f26638c.position(0);
        l(0, 1);
        l(1, 3);
        l(3, 2);
        l(2, 0);
        l(4, 5);
        l(5, 7);
        l(7, 6);
        l(6, 4);
        l(0, 4);
        l(1, 5);
        l(2, 6);
        l(3, 7);
        this.f26638c.position(0);
    }

    public final void h() {
        Matrix.setLookAtM(this.f26640e, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f);
    }

    public final void i() {
        this.f26639d.position(0);
        m(0, 1, 2);
        m(2, 1, 3);
        m(6, 5, 4);
        m(7, 5, 6);
        m(6, 4, 0);
        m(2, 6, 0);
        m(1, 5, 7);
        m(1, 7, 3);
        m(0, 4, 5);
        m(0, 5, 1);
        m(7, 6, 2);
        m(3, 7, 2);
        this.f26639d.position(0);
    }

    public Vector3 j(float locX, float locY, Vector3 out, float[] cameraMatrix, float[] frustumMatrix) {
        this.f26653r.x0(cameraMatrix);
        this.f26654s.x0(frustumMatrix);
        this.f26654s.m0(this.f26653r, this.f26655t);
        this.f26655t.E();
        Vector3 vector3 = new Vector3();
        this.f26655t.l0(new Vector3(locX, locY * (-1.0f), -1.0f), vector3);
        out.set(vector3);
        return out;
    }

    public Vector3 k(float locX, float locY, Vector3 out, float[] cameraMatrix, float[] frustumMatrix) {
        this.f26653r.v0(cameraMatrix, false);
        this.f26654s.v0(frustumMatrix, false);
        this.f26654s.m0(this.f26653r, this.f26655t);
        this.f26655t.E();
        Vector3 vector3 = new Vector3();
        this.f26655t.l0(new Vector3(locX, locY * (-1.0f), 1.0f), vector3);
        out.set(vector3);
        out.normalizeLocal();
        return out;
    }

    public final void l(int a10, int b10) {
        this.f26638c.put(a10);
        this.f26638c.put(b10);
    }

    public final void m(int a10, int b10, int c10) {
        this.f26639d.put(a10);
        this.f26639d.put(b10);
        this.f26639d.put(c10);
    }

    public void n(GameObject cameraPos) {
        o(cameraPos, 0.0f);
    }

    public void o(GameObject cameraPos, float yOffset) {
        if (cameraPos == null) {
            return;
        }
        if (this.f26651p == null) {
            GizmoObject gizmoObject = new GizmoObject(this.f26636a.x2());
            this.f26651p = gizmoObject;
            gizmoObject.setRenderMode(this.f26643h ? GizmoElement.RenderMode.WireFrame : GizmoElement.RenderMode.Triangles);
            this.f26651p.setEnableTransparency(false);
            this.f26651p.setDualFaceRender(!this.f26643h);
            this.f26651p.setDrawInFront(this.f26644i);
            this.f26651p.setColor(this.f26642g);
        }
        cameraPos.transform.u0(this.f26649n);
        if (yOffset != 0.0f) {
            cameraPos.transform.r4(this.f26645j);
            this.f26649n.addLocal(this.f26645j.getX() * yOffset, this.f26645j.getY() * yOffset, this.f26645j.getZ() * yOffset);
        }
        this.f26651p.setPosition(this.f26649n.toJAVARuntime());
        this.f26651p.setRotation(cameraPos.transform.C0(this.f26650o).N0());
        Ub.a.a(this.f26651p);
    }

    public void p(ColorINT color) {
        if (color == null) {
            return;
        }
        this.f26642g.setInts(color.o(), color.C(), color.x(), color.p());
        GizmoObject gizmoObject = this.f26651p;
        if (gizmoObject != null) {
            gizmoObject.setColor(this.f26642g);
        }
    }

    public a(boolean wireframe, boolean drawInFront) {
        Vertex vertex = new Vertex();
        this.f26636a = vertex;
        q w10 = C15593a.w(8);
        this.f26637b = w10;
        NativeIntBuffer o10 = C15593a.o(24);
        this.f26638c = o10;
        NativeIntBuffer o11 = C15593a.o(36);
        this.f26639d = o11;
        this.f26640e = new float[16];
        this.f26641f = new C0733a();
        this.f26642g = new Color(255, 110, 84);
        this.f26645j = new Vector3();
        this.f26646k = new Vector3();
        this.f26647l = new Vector3();
        this.f26648m = new Vector3();
        this.f26649n = new Vector3();
        this.f26650o = new Quaternion();
        this.f26652q = new float[16];
        this.f26653r = new f();
        this.f26654s = new f();
        this.f26655t = new f();
        this.f26643h = wireframe;
        this.f26644i = drawInFront;
        h();
        vertex.r2(w10);
        g();
        i();
        vertex.i2(wireframe ? o10 : o11);
        vertex.apply();
    }
}
