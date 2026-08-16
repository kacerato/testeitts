package Qa;

import aa.C3593a;
import aa.C3595c;
import aa.e;
import android.os.SystemClock;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import gb.C13317e;
import java.util.HashSet;
import java.util.IdentityHashMap;
import rc.C15169a;
import tc.h;

public final class d {

    public static final e f22019a;

    public static final long f22020b = 166;

    public static final IdentityHashMap<h, c> f22021c;

    public static final Vector2 f22022d;

    public static final class b {

        public final HashSet<h> f22023a = new HashSet<>();

        public final HashSet<h> f22024b = new HashSet<>();

        public void a() {
            this.f22023a.clear();
            this.f22024b.clear();
        }

        public boolean b() {
            return !this.f22024b.isEmpty();
        }
    }

    public static final class c {

        public C3593a f22025a;

        public int f22026b;

        public long f22027c;

        public float f22028d;

        public boolean f22029e;

        public c() {
            this.f22026b = Integer.MIN_VALUE;
            this.f22027c = Long.MIN_VALUE;
            this.f22028d = Float.NaN;
        }
    }

    static {
        e eVar = new e();
        f22019a = eVar;
        eVar.n(false);
        f22021c = new IdentityHashMap<>();
        f22022d = new Vector2();
    }

    public static void a() {
        f22021c.clear();
    }

    public static void b(NoCodeData graphData, float rayDistance, b frame, boolean throttled) {
        Camera mainCameraAllowEditor;
        frame.a();
        if (graphData == null) {
            return;
        }
        GameObject h02 = graphData.h0();
        if (C13317e.J(h02) && (mainCameraAllowEditor = Camera.mainCameraAllowEditor()) != null) {
            int L10 = C15169a.L();
            for (int i10 = 0; i10 < L10; i10++) {
                h n10 = C15169a.n(i10);
                if (n10 != null && n10.q()) {
                    frame.f22023a.add(n10);
                    C3593a c10 = c(mainCameraAllowEditor, n10, rayDistance, throttled);
                    if (c10 != null && c10.getGameObject() == h02) {
                        frame.f22024b.add(n10);
                    }
                }
            }
        }
    }

    public static C3593a c(Camera camera, h touch, float maxDistance, boolean throttled) {
        if (camera == null || touch == null) {
            return null;
        }
        IdentityHashMap<h, c> identityHashMap = f22021c;
        c cVar = identityHashMap.get(touch);
        if (cVar == null) {
            cVar = new c();
            identityHashMap.put(touch, cVar);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        boolean d10 = d(cVar);
        boolean z10 = maxDistance > cVar.f22028d;
        if (!throttled ? !cVar.f22029e || d10 || z10 : !cVar.f22029e || z10 || (d10 && uptimeMillis - cVar.f22027c >= 166)) {
            f(cVar, camera, touch, maxDistance, uptimeMillis);
        }
        C3593a c3593a = cVar.f22025a;
        if (c3593a != null && c3593a.getDistance() <= maxDistance) {
            return cVar.f22025a;
        }
        return null;
    }

    public static boolean d(c cache) {
        return cache.f22026b != K8.a.k();
    }

    public static boolean e(NoCodeData graphData, float maxDistance) {
        Camera mainCameraAllowEditor;
        C3593a c10;
        if (graphData == null) {
            return false;
        }
        GameObject h02 = graphData.h0();
        if (!C13317e.J(h02) || (mainCameraAllowEditor = Camera.mainCameraAllowEditor()) == null) {
            return false;
        }
        float max = Math.max(0.0f, maxDistance);
        int L10 = C15169a.L();
        for (int i10 = 0; i10 < L10; i10++) {
            h n10 = C15169a.n(i10);
            if (n10 != null && n10.q() && (c10 = c(mainCameraAllowEditor, n10, max, true)) != null && c10.getGameObject() == h02) {
                return true;
            }
        }
        return false;
    }

    public static void f(c cache, Camera camera, h touch, float maxDistance, long now) {
        Vector2 vector2 = f22022d;
        touch.c(vector2);
        cache.f22026b = K8.a.k();
        cache.f22028d = maxDistance;
        cache.f22027c = now;
        aa.d screenPointToWorldRay = camera.screenPointToWorldRay(vector2);
        if (screenPointToWorldRay == null) {
            cache.f22025a = null;
            cache.f22029e = true;
        } else {
            cache.f22025a = f22019a.y(new C3595c(screenPointToWorldRay, maxDistance));
            cache.f22029e = true;
        }
    }

    public static b g(NoCodeData graphData, float maxDistance) {
        b bVar = new b();
        b(graphData, Math.max(0.0f, maxDistance), bVar, false);
        return bVar;
    }

    public static b h(NoCodeData graphData, float maxDistance) {
        b bVar = new b();
        b(graphData, Math.max(0.0f, maxDistance), bVar, true);
        return bVar;
    }

    public static boolean i(NoCodeData graphData, h touch, float maxDistance) {
        Camera mainCameraAllowEditor;
        C3593a c10;
        if (graphData == null || touch == null) {
            return false;
        }
        GameObject h02 = graphData.h0();
        return C13317e.J(h02) && (mainCameraAllowEditor = Camera.mainCameraAllowEditor()) != null && (c10 = c(mainCameraAllowEditor, touch, Math.max(0.0f, maxDistance), false)) != null && c10.getGameObject() == h02;
    }
}
