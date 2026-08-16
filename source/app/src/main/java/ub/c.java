package Ub;

import JAVARuntime.Color;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashMap;
import java.util.Map;

public final class c {

    public static final Color f25949a = new Color();

    public static final Map<Vertex, Map<GizmoElement.RenderMode, Deque<GizmoObject>>> f25950b = new HashMap();

    public static final Map<Vertex, Map<GizmoElement.RenderMode, Deque<GizmoObject>>> f25951c = new HashMap();

    public static final Map<Vertex, Map<GizmoElement.RenderMode, Deque<GizmoObject>>> f25952d = new HashMap();

    public static final Map<Vertex, Map<GizmoElement.RenderMode, Deque<GizmoObject>>> f25953e = new HashMap();

    public static void a() {
        f25950b.clear();
        f25951c.clear();
        f25952d.clear();
        f25953e.clear();
    }

    public static Deque<GizmoObject> b(Vertex vertex, boolean transparent, GizmoElement.RenderMode renderMode, boolean dualFace) {
        Map<GizmoElement.RenderMode, Deque<GizmoObject>> c10 = c(vertex, transparent, dualFace);
        Deque<GizmoObject> deque = c10.get(renderMode);
        if (deque != null) {
            return deque;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        c10.put(renderMode, arrayDeque);
        return arrayDeque;
    }

    public static Map<GizmoElement.RenderMode, Deque<GizmoObject>> c(Vertex vertex, boolean transparent, boolean dualFace) {
        Map<Vertex, Map<GizmoElement.RenderMode, Deque<GizmoObject>>> d10 = d(transparent, dualFace);
        Map<GizmoElement.RenderMode, Deque<GizmoObject>> map = d10.get(vertex);
        if (map != null) {
            return map;
        }
        HashMap hashMap = new HashMap();
        d10.put(vertex, hashMap);
        return hashMap;
    }

    public static Map<Vertex, Map<GizmoElement.RenderMode, Deque<GizmoObject>>> d(boolean transparent, boolean dualFace) {
        return transparent ? dualFace ? f25952d : f25953e : dualFace ? f25950b : f25951c;
    }

    public static GizmoObject e(Vertex vertex, boolean transparent) {
        return k(vertex, transparent, GizmoElement.RenderMode.Triangles, false);
    }

    public static GizmoObject f(Vertex vertex, boolean transparent, GizmoElement.RenderMode renderMode) {
        return k(vertex, transparent, renderMode, false);
    }

    public static GizmoObject g(Vertex vertex, boolean transparent, GizmoElement.RenderMode renderMode, boolean dualFace) {
        return k(vertex, transparent, renderMode, dualFace);
    }

    public static GizmoObject h(Vertex.v primitiveId, boolean transparent) {
        return j(primitiveId, transparent, GizmoElement.RenderMode.Triangles, false);
    }

    public static GizmoObject i(Vertex.v primitiveId, boolean transparent, GizmoElement.RenderMode renderMode) {
        return j(primitiveId, transparent, renderMode, false);
    }

    public static GizmoObject j(Vertex.v primitiveId, boolean transparent, GizmoElement.RenderMode renderMode, boolean dualFace) {
        return k(Vertex.C1(primitiveId), transparent, renderMode, dualFace);
    }

    public static GizmoObject k(Vertex vertex, boolean transparent, GizmoElement.RenderMode renderMode, boolean dualFace) {
        if (vertex == null) {
            throw new IllegalArgumentException("Vertex n\u00e3o pode ser null na GizmoPool.");
        }
        if (renderMode == null) {
            renderMode = GizmoElement.RenderMode.Triangles;
        }
        GizmoObject pollFirst = b(vertex, transparent, renderMode, dualFace).pollFirst();
        if (pollFirst == null) {
            pollFirst = new GizmoObject(vertex.x2());
        }
        pollFirst.setTexture(null);
        pollFirst.setColor(f25949a);
        pollFirst.setDualFaceRender(dualFace);
        pollFirst.setScaleBasedCamera(false);
        pollFirst.setEnableTransparency(transparent);
        pollFirst.setRenderMode(renderMode);
        pollFirst.setPooling(true);
        return pollFirst;
    }

    public static void l(GizmoObject gizmoObject) {
        JAVARuntime.Vertex vertex;
        Vertex vertex2;
        if (gizmoObject == null || (vertex = gizmoObject.getVertex()) == null || (vertex2 = vertex.vertex) == null) {
            return;
        }
        boolean isEnableTransparency = gizmoObject.isEnableTransparency();
        GizmoElement.RenderMode renderMode = gizmoObject.getRenderMode();
        if (renderMode == null) {
            renderMode = GizmoElement.RenderMode.Triangles;
        }
        b(vertex2, isEnableTransparency, renderMode, gizmoObject.isDualFaceRender()).offerLast(gizmoObject);
    }
}
