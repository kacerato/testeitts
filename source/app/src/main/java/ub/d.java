package Ub;

import JAVARuntime.Color;
import JAVARuntime.GizmoElement;
import K5.b;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p6.g;
import ub.p;
import yb.C16165b;

public class d {

    public static int f25954A = 0;

    public static int f25955B = 15;

    public static final float f25956C = 1.0f;

    public static final int f25957j = 7;

    public static FilamentMaterialTemplate f25958k;

    public static FilamentMaterialTemplate f25959l;

    public static FilamentMaterialTemplate f25960m;

    public static FilamentMaterialTemplate f25961n;

    public static FilamentMaterialTemplate f25962o;

    public static FilamentMaterialTemplate f25963p;

    public static FilamentMaterialTemplate f25964q;

    public static FilamentMaterialTemplate f25965r;

    public static FilamentMaterialTemplate f25966s;

    public static FilamentMaterialTemplate f25967t;

    public static FilamentMaterialTemplate f25968u;

    public static FilamentMaterialTemplate f25969v;

    public static FilamentMaterialTemplate f25970w;

    public static FilamentMaterialTemplate f25971x;

    public static FilamentMaterialTemplate f25972y;

    public static FilamentMaterialTemplate f25973z;

    public final Vector3 f25974a = new Vector3();

    public final ColorINT f25975b = new ColorINT(0, 255, 0);

    public final Color f25976c = new Color();

    public final float[] f25977d = new float[16];

    public final float[] f25978e = new float[16];

    public final int f25979f = 500;

    public final f f25980g = new f();

    public final HashMap<GizmoElement, b> f25981h = new HashMap<>();

    public boolean f25982i = false;

    public static final class b {

        public Rb.c f25983a;

        public FilamentRenderable f25984b;

        public FilamentMaterial f25985c;

        public Vertex f25986d;

        public Object f25987e;

        public Object f25988f;

        public int f25989g;

        public boolean f25990h;

        public boolean f25991i;

        public boolean f25992j;

        public boolean f25993k;

        public boolean f25994l;

        public float f25995m;

        public long f25996n;

        public int f25997o;

        public b() {
            this.f25994l = false;
            this.f25995m = Float.NaN;
        }
    }

    public interface c {
        void a();
    }

    public static void b(b.InterfaceC0354b listener) {
        if (f25958k == null) {
            FilamentMaterialTemplate a10 = Ub.b.a(false);
            f25958k = a10;
            if (a10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25959l == null) {
            FilamentMaterialTemplate n10 = Ub.b.n(false);
            f25959l = n10;
            if (n10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25960m == null) {
            FilamentMaterialTemplate c10 = Ub.b.c(false);
            f25960m = c10;
            if (c10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25961n == null) {
            FilamentMaterialTemplate o10 = Ub.b.o(false);
            f25961n = o10;
            if (o10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25962o == null) {
            FilamentMaterialTemplate f10 = Ub.b.f(false);
            f25962o = f10;
            if (f10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25963p == null) {
            FilamentMaterialTemplate i10 = Ub.b.i(false);
            f25963p = i10;
            if (i10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25964q == null) {
            FilamentMaterialTemplate g10 = Ub.b.g(false);
            f25964q = g10;
            if (g10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25965r == null) {
            FilamentMaterialTemplate j10 = Ub.b.j(false);
            f25965r = j10;
            if (j10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25966s == null) {
            FilamentMaterialTemplate b10 = Ub.b.b(false);
            f25966s = b10;
            if (b10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25967t == null) {
            FilamentMaterialTemplate q10 = Ub.b.q(false);
            f25967t = q10;
            if (q10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25968u == null) {
            FilamentMaterialTemplate d10 = Ub.b.d(false);
            f25968u = d10;
            if (d10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25969v == null) {
            FilamentMaterialTemplate p10 = Ub.b.p(false);
            f25969v = p10;
            if (p10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25970w == null) {
            FilamentMaterialTemplate m10 = Ub.b.m(false);
            f25970w = m10;
            if (m10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25971x == null) {
            FilamentMaterialTemplate l10 = Ub.b.l(false);
            f25971x = l10;
            if (l10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25972y == null) {
            FilamentMaterialTemplate h10 = Ub.b.h(false);
            f25972y = h10;
            if (h10 == null) {
                throw new RuntimeException("Invalid material");
            }
            listener.b(f25954A, f25955B);
            f25954A++;
            return;
        }
        if (f25973z != null) {
            listener.finished();
            return;
        }
        FilamentMaterialTemplate k10 = Ub.b.k(false);
        f25973z = k10;
        if (k10 == null) {
            throw new RuntimeException("Invalid material");
        }
        listener.b(f25954A, f25955B);
        f25954A++;
    }

    public static void c(c logging) {
        Ub.b.a(true);
        logging.a();
        Ub.b.n(true);
        logging.a();
        Ub.b.c(true);
        logging.a();
        Ub.b.o(true);
        logging.a();
        Ub.b.f(true);
        logging.a();
        Ub.b.i(true);
        logging.a();
        Ub.b.g(true);
        logging.a();
        Ub.b.j(true);
        logging.a();
        Ub.b.b(true);
        logging.a();
        Ub.b.q(true);
        logging.a();
        Ub.b.d(true);
        logging.a();
        Ub.b.p(true);
        logging.a();
        Ub.b.m(true);
        logging.a();
        Ub.b.l(true);
        logging.a();
        Ub.b.h(true);
        logging.a();
        Ub.b.k(true);
        logging.a();
    }

    public final void a(b c10) {
        if (c10.f25994l) {
            return;
        }
        try {
            Qb.a.h().j(c10.f25983a);
            c10.f25994l = true;
        } catch (Throwable unused) {
            c10.f25994l = false;
        }
    }

    public final FilamentMaterialTemplate d(boolean isWire, boolean drawInFront, boolean transparent, boolean dualFace) {
        return isWire ? (drawInFront && transparent) ? dualFace ? f25965r : f25973z : drawInFront ? dualFace ? f25961n : f25969v : transparent ? dualFace ? f25963p : f25971x : dualFace ? f25959l : f25967t : (drawInFront && transparent) ? dualFace ? f25964q : f25972y : drawInFront ? dualFace ? f25960m : f25968u : transparent ? dualFace ? f25962o : f25970w : dualFace ? f25958k : f25966s;
    }

    public final void e() {
        if (this.f25981h.isEmpty()) {
            return;
        }
        Iterator<b> it = this.f25981h.values().iterator();
        while (it.hasNext()) {
            i(it.next());
        }
        this.f25981h.clear();
    }

    public void f() {
        e();
    }

    public final ColorINT g(GizmoElement g10) {
        ColorINT colorINT;
        Color color = g10.getColor();
        return (color == null || (colorINT = color.instance) == null) ? this.f25975b : colorINT;
    }

    public final b h(GizmoElement g10) {
        b bVar = new b();
        Vertex vertex = g10.getVertex().vertex;
        p pVar = p.K(g10.getTexture()) ? g10.getTexture().instance : C16165b.f130161g;
        boolean z10 = g10.getRenderMode() == GizmoElement.RenderMode.WireFrame;
        boolean isDrawInFront = g10.isDrawInFront();
        boolean isEnableTransparency = g10.isEnableTransparency();
        boolean isDualFaceRender = g10.isDualFaceRender();
        bVar.f25985c = d(z10, isDrawInFront, isEnableTransparency, isDualFaceRender).e();
        ColorINT g11 = g(g10);
        bVar.f25985c.E("baseColor", g11.w(), g11.u(), g11.s(), Float.isNaN(bVar.f25995m) ? g11.r() : bVar.f25995m);
        if (z10) {
            bVar.f25985c.k();
        } else {
            try {
                if (p.L(pVar)) {
                    pVar.f(bVar.f25985c, "albedo");
                } else {
                    C16165b.f130161g.f(bVar.f25985c, "albedo");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                try {
                    C16165b.f130161g.f(bVar.f25985c, "albedo");
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        bVar.f25983a = new Rb.c();
        FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).f(false).d(false).y(false).z(false).g(false).h(false).x(isDrawInFront ? 7 : 1), bVar.f25985c, bVar.f25983a, vertex.f1(), vertex.l0(), l(g10), null);
        bVar.f25984b = filamentRenderable;
        filamentRenderable.setAllLayersOffExceptFor(7);
        TransformManager i10 = Qb.a.i();
        i10.b(bVar.f25983a.getId());
        i10.u(i10.h(bVar.f25983a.getId()), k(g10));
        bVar.f25986d = vertex;
        bVar.f25987e = vertex.f1();
        bVar.f25988f = vertex.l0();
        bVar.f25989g = g10.getRenderMode().ordinal();
        bVar.f25990h = isDrawInFront;
        bVar.f25991i = isEnableTransparency;
        bVar.f25992j = isDualFaceRender;
        bVar.f25993k = g10.isDeepDestroyVertexAfterCacheInvalidation();
        bVar.f25996n = K8.a.k();
        a(bVar);
        return bVar;
    }

    public final void i(b c10) {
        if (c10 == null) {
            return;
        }
        o(c10);
        FilamentRenderable filamentRenderable = c10.f25984b;
        if (filamentRenderable != null) {
            try {
                filamentRenderable.destroyImmediate();
            } catch (Throwable unused) {
            }
            c10.f25984b = null;
        }
        FilamentMaterial filamentMaterial = c10.f25985c;
        if (filamentMaterial != null) {
            try {
                filamentMaterial.k();
            } catch (Throwable unused2) {
            }
            try {
                SGC.destroyImmediate(c10.f25985c);
            } catch (Throwable unused3) {
            }
            c10.f25985c = null;
        }
        Rb.c cVar = c10.f25983a;
        if (cVar != null) {
            try {
                cVar.destroyImmediate();
            } catch (Throwable unused4) {
            }
            c10.f25983a = null;
        }
        if (c10.f25993k) {
            try {
                Vertex vertex = c10.f25986d;
                if (vertex != null) {
                    vertex.Z();
                }
            } catch (Throwable unused5) {
            }
        }
    }

    public final float j(float[] matrix) {
        float f10 = matrix[0];
        float f11 = matrix[1];
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = matrix[2];
        float sqrt = (float) Math.sqrt(f12 + (f13 * f13));
        float f14 = matrix[4];
        float f15 = matrix[5];
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = matrix[6];
        float sqrt2 = (float) Math.sqrt(f16 + (f17 * f17));
        float f18 = matrix[8];
        float f19 = matrix[9];
        float f20 = matrix[10];
        return Math.max(sqrt, Math.max(sqrt2, (float) Math.sqrt((f18 * f18) + (f19 * f19) + (f20 * f20))));
    }

    public final float[] k(GizmoElement g10) {
        Camera mainCameraAllowEditor;
        Vector3 renderCameraPosition;
        float[] matrix = g10.getMatrix();
        if (!g10.isScaleBasedCamera() || (mainCameraAllowEditor = Camera.mainCameraAllowEditor()) == null || (renderCameraPosition = mainCameraAllowEditor.getRenderCameraPosition()) == null) {
            return matrix;
        }
        float x10 = matrix[12] - renderCameraPosition.getX();
        float y10 = matrix[13] - renderCameraPosition.getY();
        float z10 = matrix[14] - renderCameraPosition.getZ();
        float sqrt = ((float) Math.sqrt((x10 * x10) + (y10 * y10) + (z10 * z10))) * 1.0f * j(matrix);
        float maxScaleBasedCameraSize = g10.getMaxScaleBasedCameraSize();
        if (maxScaleBasedCameraSize > 0.0f && sqrt > maxScaleBasedCameraSize) {
            sqrt = maxScaleBasedCameraSize;
        }
        if (sqrt <= 0.0f) {
            return matrix;
        }
        System.arraycopy(matrix, 0, this.f25978e, 0, 16);
        float[] fArr = this.f25978e;
        fArr[0] = fArr[0] * sqrt;
        fArr[1] = fArr[1] * sqrt;
        fArr[2] = fArr[2] * sqrt;
        fArr[4] = fArr[4] * sqrt;
        fArr[5] = fArr[5] * sqrt;
        fArr[6] = fArr[6] * sqrt;
        fArr[8] = fArr[8] * sqrt;
        fArr[9] = fArr[9] * sqrt;
        fArr[10] = fArr[10] * sqrt;
        return fArr;
    }

    public final RenderableManager.b l(GizmoElement g10) {
        return g10.getRenderMode() == GizmoElement.RenderMode.WireFrame ? RenderableManager.b.LINES : RenderableManager.b.TRIANGLES;
    }

    public final void m() {
        if (this.f25982i) {
            return;
        }
        this.f25982i = true;
    }

    public void n(List<GizmoElement> globalGizmos) {
        Ub.a.e();
        m();
        g L12 = p6.d.E1() ? p6.d.L1("Gizmos") : null;
        for (int i10 = 0; i10 < globalGizmos.size(); i10++) {
            try {
                GizmoElement gizmoElement = globalGizmos.get(i10);
                if (gizmoElement != null && gizmoElement.getVertex() != null && gizmoElement.getVertex().vertex != null && gizmoElement.getVertex().vertex.x1()) {
                    b bVar = this.f25981h.get(gizmoElement);
                    if (bVar != null && bVar.f25985c != null && bVar.f25983a != null) {
                        p(gizmoElement, bVar);
                        a(bVar);
                        bVar.f25996n = K8.a.k();
                        bVar.f25997o = 0;
                    }
                    bVar = h(gizmoElement);
                    this.f25981h.put(gizmoElement, bVar);
                    bVar.f25996n = K8.a.k();
                    bVar.f25997o = 0;
                }
            } catch (Throwable th2) {
                p6.d.J1(L12);
                throw th2;
            }
        }
        if (!this.f25981h.isEmpty()) {
            Iterator<Map.Entry<GizmoElement, b>> it = this.f25981h.entrySet().iterator();
            while (it.hasNext()) {
                b value = it.next().getValue();
                if (value == null) {
                    it.remove();
                } else if (value.f25996n != K8.a.k()) {
                    o(value);
                    int i11 = value.f25997o + 1;
                    value.f25997o = i11;
                    if (i11 >= 2) {
                        i(value);
                        it.remove();
                    }
                }
            }
        }
        p6.d.J1(L12);
    }

    public final void o(b c10) {
        if (c10.f25994l) {
            try {
                Qb.a.h().s(c10.f25983a);
            } catch (Throwable unused) {
            }
            c10.f25994l = false;
        }
    }

    public final void p(GizmoElement g10, b c10) {
        FilamentRenderable filamentRenderable;
        Vertex vertex = g10.getVertex().vertex;
        FilamentVertexBuffer f12 = vertex.f1();
        Rb.d l02 = vertex.l0();
        int ordinal = g10.getRenderMode().ordinal();
        boolean z10 = g10.getRenderMode() == GizmoElement.RenderMode.WireFrame;
        boolean isDrawInFront = g10.isDrawInFront();
        boolean isEnableTransparency = g10.isEnableTransparency();
        boolean isDualFaceRender = g10.isDualFaceRender();
        boolean z11 = (c10.f25986d == vertex && c10.f25987e == f12 && c10.f25988f == l02 && c10.f25989g == ordinal) ? false : true;
        boolean z12 = c10.f25990h != isDrawInFront;
        boolean z13 = c10.f25991i != isEnableTransparency;
        boolean z14 = c10.f25992j != isDualFaceRender;
        if (c10.f25989g != ordinal || z12 || z13 || z14 || c10.f25985c == null) {
            FilamentMaterial filamentMaterial = c10.f25985c;
            r16 = filamentMaterial != null ? filamentMaterial : null;
            c10.f25985c = d(z10, isDrawInFront, isEnableTransparency, isDualFaceRender).e();
        }
        ColorINT g11 = g(g10);
        c10.f25985c.E("baseColor", g11.w(), g11.u(), g11.s(), Float.isNaN(c10.f25995m) ? g11.r() : c10.f25995m);
        if (z10) {
            c10.f25985c.k();
        } else {
            p pVar = p.K(g10.getTexture()) ? g10.getTexture().instance : C16165b.f130161g;
            if (p.L(pVar)) {
                try {
                    pVar.f(c10.f25985c, "albedo");
                } catch (Exception e10) {
                    e10.printStackTrace();
                    try {
                        C16165b.f130161g.f(c10.f25985c, "albedo");
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            } else {
                try {
                    C16165b.f130161g.f(c10.f25985c, "albedo");
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
        if (z11 || z12) {
            RenderableManager.b l10 = l(g10);
            int i10 = isDrawInFront ? 7 : 1;
            FilamentRenderable filamentRenderable2 = c10.f25984b;
            if (filamentRenderable2 != null) {
                try {
                    filamentRenderable2.destroyImmediate();
                } catch (Throwable unused) {
                }
            }
            FilamentRenderable filamentRenderable3 = new FilamentRenderable(new RenderableManager.a(1).f(false).d(false).y(false).x(i10), c10.f25985c, c10.f25983a, vertex.f1(), vertex.l0(), l10, null);
            c10.f25984b = filamentRenderable3;
            filamentRenderable3.setAllLayersOffExceptFor(7);
            c10.f25986d = vertex;
            c10.f25987e = f12;
            c10.f25988f = l02;
            c10.f25989g = ordinal;
        } else if (r16 != null && (filamentRenderable = c10.f25984b) != null) {
            filamentRenderable.setMaterialInstanceAt(0, c10.f25985c);
        }
        if (r16 != null) {
            try {
                r16.k();
            } catch (Throwable unused2) {
            }
            try {
                r16.destroyImmediate();
            } catch (Throwable unused3) {
            }
        }
        c10.f25990h = isDrawInFront;
        c10.f25991i = isEnableTransparency;
        c10.f25992j = isDualFaceRender;
        c10.f25993k = g10.isDeepDestroyVertexAfterCacheInvalidation();
        TransformManager i11 = Qb.a.i();
        if (!i11.o(c10.f25983a.getId())) {
            i11.b(c10.f25983a.getId());
        }
        i11.u(i11.h(c10.f25983a.getId()), k(g10));
    }
}
