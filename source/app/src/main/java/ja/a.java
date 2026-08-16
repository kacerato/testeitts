package Ja;

import aa.C3593a;
import aa.C3595c;
import aa.e;
import android.os.SystemClock;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;

public final class a {

    public static final e f10358a;

    public static final long f10359b = 166;

    public static final b f10360c;

    public static final class b {

        public final Vector3 f10361a;

        public final Vector3 f10362b;

        public C3593a f10363c;

        public int f10364d;

        public long f10365e;

        public float f10366f;

        public boolean f10367g;

        public b() {
            this.f10361a = new Vector3();
            this.f10362b = new Vector3();
            this.f10364d = Integer.MIN_VALUE;
            this.f10365e = Long.MIN_VALUE;
            this.f10366f = Float.NaN;
        }
    }

    static {
        e eVar = new e();
        f10358a = eVar;
        eVar.n(false);
        f10360c = new b();
    }

    public static void a() {
        b bVar = f10360c;
        bVar.f10363c = null;
        bVar.f10364d = Integer.MIN_VALUE;
        bVar.f10365e = Long.MIN_VALUE;
        bVar.f10366f = Float.NaN;
        bVar.f10367g = false;
    }

    public static C3593a b(Camera camera, float maxDistance, boolean throttled) {
        long uptimeMillis = SystemClock.uptimeMillis();
        b bVar = f10360c;
        boolean c10 = c(bVar);
        boolean z10 = maxDistance > bVar.f10366f;
        if (!throttled ? !bVar.f10367g || c10 || z10 : !bVar.f10367g || z10 || (c10 && uptimeMillis - bVar.f10365e >= 166)) {
            g(bVar, camera, maxDistance, uptimeMillis);
        }
        C3593a c3593a = bVar.f10363c;
        if (c3593a != null && c3593a.getDistance() <= maxDistance) {
            return bVar.f10363c;
        }
        return null;
    }

    public static boolean c(b cache) {
        return cache.f10364d != K8.a.k();
    }

    public static boolean d(NoCodeData graphData, float maxDistance) {
        return e(graphData, maxDistance, false);
    }

    public static boolean e(NoCodeData graphData, float maxDistance, boolean throttled) {
        Camera mainCameraAllowEditor;
        GameObject gameObject;
        C3593a b10;
        if (graphData == null) {
            return false;
        }
        GameObject h02 = graphData.h0();
        return (!C13317e.J(h02) || (mainCameraAllowEditor = Camera.mainCameraAllowEditor()) == null || (gameObject = mainCameraAllowEditor.f79250n) == null || gameObject.transform == null || (b10 = b(mainCameraAllowEditor, Math.max(0.0f, maxDistance), throttled)) == null || b10.getGameObject() != h02) ? false : true;
    }

    public static boolean f(NoCodeData graphData, float maxDistance) {
        return e(graphData, maxDistance, true);
    }

    public static void g(b cache, Camera camera, float maxDistance, long now) {
        Transform transform;
        cache.f10364d = K8.a.k();
        cache.f10366f = maxDistance;
        cache.f10365e = now;
        GameObject gameObject = camera.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            cache.f10363c = null;
            cache.f10367g = true;
        } else {
            transform.u0(cache.f10361a);
            camera.f79250n.transform.a0(cache.f10362b);
            cache.f10363c = f10358a.y(new C3595c(cache.f10361a, cache.f10362b, maxDistance));
            cache.f10367g = true;
        }
    }
}
