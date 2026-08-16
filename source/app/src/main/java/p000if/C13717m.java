package p000if;

import com.jme3.input.InputManager;
import com.jme3.math.FastMath;
import com.jme3.math.Line;
import com.jme3.math.Ray;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.f;
import jf.h;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public final class C13717m {

    public static final float f92131a = 1.0f;

    public static final float f92132b = 0.0f;

    public static final Logger f92133c = Logger.getLogger(C13717m.class.getName());

    public static final Vector3f f92134d = new Vector3f(1.0f, 0.0f, 0.0f);

    public static final Vector3f f92135e = new Vector3f(0.0f, 1.0f, 0.0f);

    public static final boolean f92136f = false;

    public static float a(Camera camera) {
        return h.i(camera.getDirection());
    }

    public static boolean b(ViewPort viewPort, Vector2f vector2f) {
        Camera camera = viewPort.getCamera();
        float width = vector2f.f81609x / camera.getWidth();
        float viewPortLeft = camera.getViewPortLeft();
        float viewPortRight = camera.getViewPortRight();
        if (width >= viewPortLeft && width < viewPortRight) {
            float height = vector2f.f81610y / camera.getHeight();
            float viewPortBottom = camera.getViewPortBottom();
            float viewPortTop = camera.getViewPortTop();
            if (height >= viewPortBottom && height < viewPortTop) {
                return true;
            }
        }
        return false;
    }

    public static String c(Camera camera) {
        if (camera == null) {
            return "null";
        }
        String name = camera.getName();
        return String.format("camera%s (%s; %s)", C13724t.t(name), h.m(camera.getLocation()), h.n(camera.getDirection()));
    }

    public static String d(Camera camera) {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(camera.isParallelProjection() ? "para" : "persp");
        sb2.append(" F");
        sb2.append(C13724t.g(h(camera)));
        sb2.append(":1 V");
        sb2.append(C13724t.g(p(camera)));
        sb2.append(":1");
        if (camera.isParallelProjection()) {
            sb2.append(" fx[");
            float frustumLeft = camera.getFrustumLeft();
            float frustumRight = camera.getFrustumRight();
            sb2.append(C13724t.e(frustumLeft));
            sb2.append(C15883c.f126249O);
            sb2.append(C13724t.e(frustumRight));
            sb2.append("] fy[");
            float frustumBottom = camera.getFrustumBottom();
            float frustumTop = camera.getFrustumTop();
            sb2.append(C13724t.e(frustumBottom));
            sb2.append(C15883c.f126249O);
            sb2.append(C13724t.e(frustumTop));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        sb2.append(" fz[");
        float frustumNear = camera.getFrustumNear();
        float frustumFar = camera.getFrustumFar();
        sb2.append(C13724t.e(frustumNear));
        sb2.append(C15883c.f126249O);
        sb2.append(C13724t.e(frustumFar));
        sb2.append("] vx[");
        float viewPortLeft = camera.getViewPortLeft();
        float viewPortRight = camera.getViewPortRight();
        sb2.append(C13724t.g(viewPortLeft));
        sb2.append(C15883c.f126249O);
        sb2.append(C13724t.g(viewPortRight));
        sb2.append("] vy[");
        float viewPortBottom = camera.getViewPortBottom();
        float viewPortTop = camera.getViewPortTop();
        sb2.append(C13724t.g(viewPortBottom));
        sb2.append(C15883c.f126249O);
        sb2.append(C13724t.g(viewPortTop));
        sb2.append("] ");
        sb2.append(camera.getWidth());
        sb2.append('x');
        sb2.append(camera.getHeight());
        if (!camera.isParallelProjection()) {
            sb2.append(" fovDeg[x=");
            float q10 = q(camera);
            float s10 = s(camera);
            sb2.append(C13724t.e(q10));
            sb2.append(" y=");
            sb2.append(C13724t.e(s10));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return sb2.toString();
    }

    public static float e(Camera camera) {
        return camera.getWidth() / camera.getHeight();
    }

    public static float f(Camera camera) {
        C13702E.t(camera, "camera");
        return FastMath.atan(r(camera)) * 2.0f;
    }

    public static float g(Camera camera) {
        C13702E.t(camera, "camera");
        return FastMath.atan(t(camera)) * 2.0f;
    }

    public static float h(Camera camera) {
        return (camera.getFrustumRight() - camera.getFrustumLeft()) / (camera.getFrustumTop() - camera.getFrustumBottom());
    }

    public static boolean i(Camera camera) {
        return camera.getViewPortLeft() <= 0.0f && camera.getViewPortRight() >= 1.0f;
    }

    public static List<ViewPort> j(RenderManager renderManager, Vector2f vector2f) {
        C13702E.t(vector2f, "screen xy");
        ArrayList arrayList = new ArrayList(4);
        for (ViewPort viewPort : renderManager.getPreViews()) {
            if (b(viewPort, vector2f)) {
                arrayList.add(viewPort);
            }
        }
        for (ViewPort viewPort2 : renderManager.getMainViews()) {
            if (b(viewPort2, vector2f)) {
                arrayList.add(viewPort2);
            }
        }
        for (ViewPort viewPort3 : renderManager.getPostViews()) {
            if (b(viewPort3, vector2f)) {
                arrayList.add(viewPort3);
            }
        }
        return arrayList;
    }

    public static void k(Camera camera, Vector3f vector3f) {
        C13702E.A(vector3f, "new direction");
        if (vector3f.f81611x == 0.0f && vector3f.f81613z == 0.0f) {
            camera.lookAtDirection(vector3f, f92134d);
        } else {
            camera.lookAtDirection(vector3f, f92135e);
        }
    }

    public static Line l(Camera camera, InputManager inputManager) {
        Vector2f cursorPosition = inputManager.getCursorPosition();
        Vector3f worldCoordinates = camera.getWorldCoordinates(cursorPosition, 0.0f);
        return new Line(worldCoordinates, camera.getWorldCoordinates(cursorPosition, 1.0f).subtract(worldCoordinates));
    }

    public static Ray m(Camera camera, InputManager inputManager) {
        Vector2f cursorPosition = inputManager.getCursorPosition();
        Vector3f worldCoordinates = camera.getWorldCoordinates(cursorPosition, 0.0f);
        Vector3f subtract = camera.getWorldCoordinates(cursorPosition, 1.0f).subtract(worldCoordinates);
        h.P(subtract);
        return new Ray(worldCoordinates, subtract);
    }

    public static void n(Camera camera, float f10, float f11) {
        C13702E.E(f10, "near");
        if (f11 <= f10) {
            f92133c.log(Level.SEVERE, "far={0} near={1}", new Object[]{Float.valueOf(f11), Float.valueOf(f10)});
            throw new IllegalArgumentException("far should be greater than near");
        }
        if (camera.isParallelProjection()) {
            camera.setFrustumFar(f11);
            camera.setFrustumNear(f10);
        } else {
            camera.setFrustumPerspective(s(camera), h(camera), f10, f11);
        }
    }

    public static void o(Camera camera, float f10) {
        C13702E.t(camera, "camera");
        C13702E.E(f10, "tangent");
        if (camera.isParallelProjection()) {
            throw new IllegalArgumentException("camera must have perspective enabled");
        }
        u(camera, f10 / t(camera));
    }

    public static float p(Camera camera) {
        return (camera.getWidth() * (camera.getViewPortRight() - camera.getViewPortLeft())) / (camera.getHeight() * (camera.getViewPortTop() - camera.getViewPortBottom()));
    }

    public static float q(Camera camera) {
        if (camera.isParallelProjection()) {
            return 0.0f;
        }
        return f.Q(FastMath.atan(r(camera)) * 2.0f);
    }

    public static float r(Camera camera) {
        if (camera.isParallelProjection()) {
            return 0.0f;
        }
        return ((camera.getFrustumRight() - camera.getFrustumLeft()) / 2.0f) / camera.getFrustumNear();
    }

    public static float s(Camera camera) {
        if (camera.isParallelProjection()) {
            return 0.0f;
        }
        return f.Q(FastMath.atan(t(camera)) * 2.0f);
    }

    public static float t(Camera camera) {
        if (camera.isParallelProjection()) {
            return 0.0f;
        }
        return ((camera.getFrustumTop() - camera.getFrustumBottom()) / 2.0f) / camera.getFrustumNear();
    }

    public static void u(Camera camera, float f10) {
        C13702E.E(f10, "factor");
        camera.setFrustumBottom(camera.getFrustumBottom() * f10);
        camera.setFrustumLeft(camera.getFrustumLeft() * f10);
        camera.setFrustumRight(camera.getFrustumRight() * f10);
        camera.setFrustumTop(camera.getFrustumTop() * f10);
    }
}
