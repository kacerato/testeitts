package b5;

import Ic.A;
import JAVARuntime.Vertex;
import aa.C3593a;
import aa.C3595c;
import aa.d;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Utils.TerrainRaycaster;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import gb.C13314b;
import ib.C13600g;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import n.C14333c;
import tc.h;

public class C3846a extends U4.a {

    public static final float f32951S = 1.0E-4f;

    public static final Set<ModelRenderer> f32952T = new HashSet();

    public final AtomicBoolean f32953J = new AtomicBoolean();

    public final Vector3 f32954K = new Vector3();

    public final Vector3 f32955L = new Vector3();

    public final Vector3 f32956M = new Vector3();

    public final Vector3 f32957N = new Vector3();

    public final Vector3 f32958O = new Vector3();

    public final Vector3 f32959P = new Vector3();

    public boolean f32960Q = false;

    public int f32961R = 0;

    public class RunnableC0880a implements Runnable {

        public final h f32962b;

        public final EditorCamera f32963c;

        public final GameObject f32964d;

        public final Panel3DView f32965e;

        public final Vector3 f32966f;

        public final boolean f32967g;

        public final Vector3 f32968h;

        public final d f32969i;

        public final float f32970j;

        public class RunnableC0881a implements Runnable {

            public final Vector3 f32972b;

            public RunnableC0881a(final Vector3 val$finalPosition) {
                this.f32972b = val$finalPosition;
            }

            @Override
            public void run() {
                RunnableC0880a.this.f32964d.transform.h3(this.f32972b);
                RunnableC0880a.this.f32964d.transform.I2();
            }
        }

        public RunnableC0880a(final h val$touch, final EditorCamera val$editorCamera, final GameObject val$gameObject, final Panel3DView val$editor3DViewer, final Vector3 val$deslocation, final boolean val$useGrid, final Vector3 val$gridOrigin, final d val$ray, final float val$distanceToCamera) {
            this.f32962b = val$touch;
            this.f32963c = val$editorCamera;
            this.f32964d = val$gameObject;
            this.f32965e = val$editor3DViewer;
            this.f32966f = val$deslocation;
            this.f32967g = val$useGrid;
            this.f32968h = val$gridOrigin;
            this.f32969i = val$ray;
            this.f32970j = val$distanceToCamera;
        }

        @Override
        public void run() {
            Vector3 vector3;
            if (this.f32962b.q()) {
                try {
                    try {
                        c Q10 = C3846a.Q(this.f32963c, this.f32964d, this.f32962b, this.f32965e);
                        if (Q10 != null) {
                            C3846a.this.W(Q10, this.f32963c, this.f32964d, this.f32965e, this.f32966f, this.f32967g, this.f32968h);
                        } else {
                            d dVar = this.f32969i;
                            Vector3 sub = dVar.f31957b.add(dVar.f31958c.mul(this.f32970j)).sub(this.f32966f);
                            if (this.f32967g && (vector3 = this.f32968h) != null) {
                                C3846a.this.X(sub, this.f32964d, this.f32965e, vector3);
                            }
                            K8.a.I(new RunnableC0881a(new Vector3(sub)));
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    C3846a.this.f32953J.set(false);
                } catch (Throwable th2) {
                    C3846a.this.f32953J.set(false);
                    throw th2;
                }
            }
        }
    }

    public class b implements Runnable {

        public final GameObject f32974b;

        public final Vector3 f32975c;

        public final Quaternion f32976d;

        public b(final GameObject val$gameObject, final Vector3 val$finalPosition, final Quaternion val$finalRotation) {
            this.f32974b = val$gameObject;
            this.f32975c = val$finalPosition;
            this.f32976d = val$finalRotation;
        }

        @Override
        public void run() {
            this.f32974b.transform.h3(this.f32975c);
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.S2(this.f32974b);
            Quaternion quaternion = this.f32976d;
            if (quaternion != null) {
                this.f32974b.transform.i3(quaternion);
                com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.T2(this.f32974b);
            }
            this.f32974b.transform.I2();
        }
    }

    public static class c {

        public Vector3 f32978a;

        public Vector3 f32979b;

        public c(Vector3 point, Vector3 normal) {
            this.f32978a = point.m1249clone();
            this.f32979b = normal.m1249clone();
        }
    }

    public static Vector3 P(GameObject gameObject, c surface, Vector3 deslocation, Quaternion forcedGlobalRotation) {
        Vector3 sub = surface.f32978a.sub(deslocation);
        Vector3 normalize = surface.f32979b.normalize();
        if (normalize.lengthF() <= 1.0E-4f) {
            normalize.set(0.0f, 1.0f, 0.0f);
        }
        C13314b h10 = C13314b.h(gameObject, false, false);
        if (h10 == null || V(h10)) {
            return sub;
        }
        if (forcedGlobalRotation == null) {
            forcedGlobalRotation = S(gameObject, new Quaternion());
        }
        Vector3 T10 = T(gameObject, new Vector3());
        f fVar = new f();
        fVar.Z0(sub, forcedGlobalRotation, T10);
        float U10 = U(fVar, h10, normalize);
        if (!Float.isFinite(U10)) {
            return sub;
        }
        float dot = surface.f32978a.dot(normalize) - U10;
        return !Float.isFinite(dot) ? sub : sub.add(normalize.mul(dot));
    }

    public static c Q(EditorCamera editorCamera, GameObject gameObject, h touch, Panel3DView editor3DViewer) {
        GameObject gameObject2;
        try {
            SteppedArrayList<c> steppedArrayList = new SteppedArrayList();
            Vector2 vector2 = new Vector2();
            editor3DViewer.a0(touch, vector2);
            d screenPointToWorldRay = editorCamera.screenPointToWorldRay(vector2);
            Vector3 R10 = R(editorCamera.f79250n, new Vector3());
            float J10 = Nc.b.J(editorCamera.getRenderDistance() * 0.7f, editor3DViewer.cameraZoom * 3.0f);
            C3595c c3595c = new C3595c(screenPointToWorldRay, J10);
            try {
                for (Component component : R8.f.h(Terrain.class)) {
                    if (component != null && component.f79236A && (gameObject2 = component.f79250n) != gameObject && !gameObject2.h1(gameObject) && component.isHierarchyActive()) {
                        Vector3 vector3 = new Vector3();
                        if (TerrainRaycaster.c(screenPointToWorldRay.f31957b, screenPointToWorldRay.f31958c, (Terrain) component, vector3) && vector3.distance(R10) < J10) {
                            steppedArrayList.add(new c(vector3, new Vector3(0.0f, 1.0f, 0.0f)));
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                for (Component component2 : R8.f.h(ModelRenderer.class)) {
                    if (component2 != null && component2.f79236A && component2.f79250n != gameObject && component2.isHierarchyActive() && !component2.f79250n.Y0()) {
                        Set<ModelRenderer> set = f32952T;
                        if (!set.contains((ModelRenderer) component2)) {
                            if (component2.f79250n.h1(gameObject)) {
                                set.add((ModelRenderer) component2);
                            } else if (component2.f79250n.g1(gameObject)) {
                                set.add((ModelRenderer) component2);
                            } else {
                                ModelRenderer modelRenderer = (ModelRenderer) component2;
                                if (modelRenderer.getVertex() != null) {
                                    Vertex vertex = modelRenderer.getVertex();
                                    try {
                                        if (vertex.z2(modelRenderer.getRenderMatrix(), c3595c)) {
                                            C3593a H22 = vertex.H2(modelRenderer.getRenderMatrix(), c3595c, Vertex.RayMode.ClosestPoint);
                                            if (H22 != null) {
                                                steppedArrayList.add(new c(H22.i(), H22.f()));
                                            }
                                        } else {
                                            set.add((ModelRenderer) component2);
                                        }
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            Vector3 R11 = R(editorCamera.f79250n, new Vector3());
            float f10 = 1.0E9f;
            c cVar = null;
            for (c cVar2 : steppedArrayList) {
                float sqrtDistance = R11.sqrtDistance(cVar2.f32978a);
                if (cVar == null || sqrtDistance <= f10) {
                    cVar = cVar2;
                    f10 = sqrtDistance;
                }
            }
            return cVar;
        } catch (Exception e13) {
            e13.printStackTrace();
            return null;
        }
    }

    public static Vector3 R(GameObject gameObject, Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        f fVar = new f();
        C13600g.b(gameObject, fVar);
        fVar.D1(out);
        return out;
    }

    public static Quaternion S(GameObject gameObject, Quaternion out) {
        if (out == null) {
            out = new Quaternion();
        }
        f fVar = new f();
        C13600g.b(gameObject, fVar);
        fVar.r1(out);
        return out;
    }

    public static Vector3 T(GameObject gameObject, Vector3 out) {
        if (out == null) {
            out = new Vector3();
        }
        f fVar = new f();
        C13600g.b(gameObject, fVar);
        fVar.u1(out);
        return out;
    }

    public static float U(f matrix, C13314b bounds, Vector3 direction) {
        float x10 = bounds.f88250b.getX();
        float y10 = bounds.f88250b.getY();
        float z10 = bounds.f88250b.getZ();
        float x11 = bounds.f88251c.getX();
        float y11 = bounds.f88251c.getY();
        float z11 = bounds.f88251c.getZ();
        Vector3 vector3 = new Vector3();
        float f10 = Float.POSITIVE_INFINITY;
        for (int i10 = 0; i10 < 8; i10++) {
            matrix.o0((i10 & 1) == 0 ? x10 : x11, (i10 & 2) == 0 ? y10 : y11, (i10 & 4) == 0 ? z10 : z11, vector3);
            float dot = vector3.dot(direction);
            if (dot < f10) {
                f10 = dot;
            }
        }
        return f10;
    }

    public static boolean V(C13314b bounds) {
        return Math.abs(bounds.f88251c.getX() - bounds.f88250b.getX()) <= 1.0E-4f && Math.abs(bounds.f88251c.getY() - bounds.f88250b.getY()) <= 1.0E-4f && Math.abs(bounds.f88251c.getZ() - bounds.f88250b.getZ()) <= 1.0E-4f;
    }

    @Override
    public void D(GameObject gameObject, GameObject camera, EditorCamera editorCamera, GameObject selectedObject, Panel3DView editor3DViewer) {
        try {
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
            if (editorCamera.getProjection() == Camera.G.Perspective) {
                gameObject.transform.setScale(A.b(gameObject.transform.B1(camera.transform) * 0.3f * C14333c.a()));
            } else {
                gameObject.transform.setScale(A.b(editorCamera.getOrtho_diameter() * 0.11f * C14333c.a()));
            }
            Vector3 sub = gameObject.transform.u0((Vector3) JP.acquire(Vector3.class)).sub(editorCamera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class)));
            sub.normalizeLocal();
            gameObject.transform.i0().U(sub);
            gameObject.transform.Z();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void W(c surface, EditorCamera editorCamera, GameObject gameObject, Panel3DView editor3DViewer, Vector3 deslocation, boolean useGrid, Vector3 gridOrigin) {
        Vector3 vector3;
        Quaternion quaternion;
        if (editor3DViewer.snapToSurfaceConfigs.lookRotation) {
            Quaternion quaternion2 = new Quaternion();
            quaternion2.C0();
            quaternion2.U(surface.f32979b.normalize());
            quaternion2.i0(Quaternion.n(90.0f, 0.0f, 0.0f));
            quaternion = quaternion2;
            vector3 = deslocation;
        } else {
            vector3 = deslocation;
            quaternion = null;
        }
        Vector3 P10 = P(gameObject, surface, vector3, quaternion);
        if (useGrid && gridOrigin != null) {
            this.f32955L.set(surface.f32979b);
            if (this.f32955L.lengthF() <= 1.0E-4f) {
                this.f32955L.set(0.0f, 1.0f, 0.0f);
            } else {
                this.f32955L.normalizeLocal();
            }
            this.f32956M.set(0.0f, 1.0f, 0.0f);
            if (Math.abs(this.f32955L.dot(this.f32956M)) > 0.9f) {
                this.f32956M.set(1.0f, 0.0f, 0.0f);
            }
            Vector3 vector32 = this.f32955L;
            Vector3 vector33 = this.f32956M;
            vector32.cross(vector33, vector33);
            if (this.f32956M.equally(0.0f)) {
                this.f32956M.set(0.0f, 0.0f, 1.0f);
                Vector3 vector34 = this.f32955L;
                Vector3 vector35 = this.f32956M;
                vector34.cross(vector35, vector35);
            }
            this.f32956M.normalizeLocal();
            this.f32955L.cross(this.f32956M, this.f32957N);
            if (!this.f32957N.equally(0.0f)) {
                this.f32957N.normalizeLocal();
            }
            float I12 = editor3DViewer.I1();
            float g10 = g(gameObject, this.f32956M) * I12;
            float g11 = g(gameObject, this.f32957N) * I12;
            this.f32958O.set(gridOrigin);
            float dot = this.f32958O.dot(this.f32955L);
            float dot2 = P10.dot(this.f32955L);
            if (Float.isFinite(dot) && Float.isFinite(dot2)) {
                this.f32958O.addLocal(this.f32955L, dot2 - dot);
            }
            G(P10, this.f32958O, this.f32955L, this.f32956M, this.f32957N, g10, g11);
        }
        K8.a.I(new b(gameObject, new Vector3(P10), quaternion != null ? quaternion : null));
    }

    public final void X(Vector3 dest, GameObject gameObject, Panel3DView editor3DViewer, Vector3 gridOrigin) {
        if (dest == null || gameObject == null || gridOrigin == null) {
            return;
        }
        float I12 = editor3DViewer != null ? editor3DViewer.I1() : 1.0f;
        this.f32956M.set(1.0f, 0.0f, 0.0f);
        this.f32957N.set(0.0f, 1.0f, 0.0f);
        this.f32955L.set(0.0f, 0.0f, 1.0f);
        float g10 = g(gameObject, this.f32956M) * I12;
        float g11 = g(gameObject, this.f32957N) * I12;
        float g12 = g(gameObject, this.f32955L) * I12;
        dest.setX(gridOrigin.getX() + F(dest.getX() - gridOrigin.getX(), g10));
        dest.setY(gridOrigin.getY() + F(dest.getY() - gridOrigin.getY(), g11));
        dest.setZ(gridOrigin.getZ() + F(dest.getZ() - gridOrigin.getZ(), g12));
    }

    @Override
    public void t(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        Vector3 vector3 = new Vector3(this.f32959P);
        Vector3 u02 = gameObject.transform.u0(new Vector3());
        u02.addLocal(vector3);
        float distance = u02.distance(camera.transform.u0(new Vector3()));
        boolean z10 = this.f32960Q && editor3DViewer != null && editor3DViewer.gridMove;
        Vector3 vector32 = z10 ? new Vector3(this.f32954K) : null;
        if (this.f32953J.compareAndSet(false, true)) {
            int i10 = this.f32961R + 1;
            this.f32961R = i10;
            if (i10 > 3) {
                f32952T.clear();
                this.f32961R = 0;
            }
            Vector2 vector2 = new Vector2();
            editor3DViewer.a0(touch, vector2);
            O9.b.d(new RunnableC0880a(touch, editorCamera, gameObject, editor3DViewer, vector3, z10, vector32, editorCamera.screenPointToWorldRay(vector2), distance));
        }
    }

    @Override
    public void u(EditorCamera editorCamera, GameObject gameObject, GameObject camera, Transform axisTransform, Vector2 touchSlide, h touch, Panel3DView editor3DViewer) {
        super.u(editorCamera, gameObject, camera, axisTransform, touchSlide, touch, editor3DViewer);
        this.f32959P.set(0.0f);
        if (editor3DViewer == null || !editor3DViewer.gridMove || gameObject == null) {
            this.f32960Q = false;
        } else {
            R(gameObject, this.f32954K);
            this.f32960Q = true;
        }
        if (editor3DViewer == null || !editor3DViewer.useBoundingCenter || gameObject == null) {
            return;
        }
        GameObject.g z10 = gameObject.z();
        if (z10.f()) {
            return;
        }
        this.f32959P.set(z10.d()).subLocal(R(gameObject, (Vector3) JP.acquire(Vector3.class)));
    }
}
