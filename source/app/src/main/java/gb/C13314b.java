package gb;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13314b;
import ib.C13600g;
import java.util.function.Supplier;
import org.eclipse.jdt.internal.core.JavaElement;

public class C13314b extends K8.f {

    public static final ThreadLocal<C1626b> f88249e = ThreadLocal.withInitial(new Supplier() {
        @Override
        public final Object get() {
            C13314b.C1626b k10;
            k10 = C13314b.k();
            return k10;
        }
    });

    public final Vector3 f88250b;

    public final Vector3 f88251c;

    public final Vector3 f88252d;

    public static final class C1626b {

        public final com.itsmagic.engine.Engines.Engine.Vector.f f88253a;

        public final com.itsmagic.engine.Engines.Engine.Vector.f f88254b;

        public final Vector3 f88255c;

        public final Quaternion f88256d;

        public final float[] f88257e;

        public C1626b() {
            this.f88253a = new com.itsmagic.engine.Engines.Engine.Vector.f();
            this.f88254b = new com.itsmagic.engine.Engines.Engine.Vector.f();
            this.f88255c = new Vector3();
            this.f88256d = new Quaternion();
            this.f88257e = new float[16];
        }
    }

    public C13314b(Vector3 min, Vector3 max, Vector3 center) {
        this.f88250b = min;
        this.f88251c = max;
        this.f88252d = center;
    }

    public static void e(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix, C13314b bounds, boolean takePosition, boolean takeRotation) {
        float f10;
        float f11;
        float f12;
        float f13;
        C1626b c1626b = f88249e.get();
        Vector3 vector3 = takePosition ? c1626b.f88255c : null;
        Quaternion quaternion = takeRotation ? c1626b.f88256d : null;
        float x10 = bounds.f88250b.getX();
        float y10 = bounds.f88250b.getY();
        float z10 = bounds.f88250b.getZ();
        float x11 = bounds.f88251c.getX();
        float y11 = bounds.f88251c.getY();
        float z11 = bounds.f88251c.getZ();
        Quaternion r12 = takeRotation ? globalMatrix.r1(quaternion) : null;
        Vector3 D12 = takePosition ? globalMatrix.D1(vector3) : null;
        float f14 = Float.NEGATIVE_INFINITY;
        float f15 = Float.POSITIVE_INFINITY;
        float f16 = Float.POSITIVE_INFINITY;
        float f17 = Float.POSITIVE_INFINITY;
        int i10 = 0;
        float f18 = Float.NEGATIVE_INFINITY;
        float f19 = Float.NEGATIVE_INFINITY;
        while (i10 < 8) {
            float f20 = (i10 & 1) == 0 ? x10 : x11;
            if ((i10 & 2) == 0) {
                f10 = z10;
                f11 = y10;
            } else {
                f10 = z10;
                f11 = y11;
            }
            if ((i10 & 4) == 0) {
                f12 = x11;
                f13 = f10;
            } else {
                f12 = x11;
                f13 = z11;
            }
            float f21 = y11;
            if (takeRotation) {
                r12.n0(f20, f11, f13, c1626b.f88255c);
                f20 = c1626b.f88255c.getX();
                f11 = c1626b.f88255c.getY();
                f13 = c1626b.f88255c.getZ();
            }
            if (takePosition) {
                f20 += D12.getX();
                f11 += D12.getY();
                f13 += D12.getZ();
            }
            if (f20 < f15) {
                f15 = f20;
            }
            if (f11 < f16) {
                f16 = f11;
            }
            if (f13 < f17) {
                f17 = f13;
            }
            if (f20 > f14) {
                f14 = f20;
            }
            if (f11 > f18) {
                f18 = f11;
            }
            if (f13 > f19) {
                f19 = f13;
            }
            i10++;
            z10 = f10;
            x11 = f12;
            y11 = f21;
        }
        bounds.f88250b.set(f15, f16, f17);
        bounds.f88251c.set(f14, f18, f19);
        bounds.f88252d.set((f15 + f14) * 0.5f, (f16 + f18) * 0.5f, (f17 + f19) * 0.5f);
    }

    public static AABB f(GameObject gameObject, com.itsmagic.engine.Engines.Engine.Vector.f toLocalMat4, float[] tmp) {
        AABB renderBoundingBox;
        AABB aabb = null;
        if (gameObject == null || !gameObject.isHierarchyActive()) {
            return null;
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
        C13600g.b(gameObject, fVar);
        toLocalMat4.L(fVar, fVar);
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 != null && L10.isEnabled() && L10.hasRenderBounding() && L10.getRenderCenter() != null && (renderBoundingBox = L10.getRenderBoundingBox()) != null) {
                aabb = l(aabb, renderBoundingBox.d(fVar.o(tmp)));
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            aabb = l(aabb, f(gameObject.C(i11), toLocalMat4, tmp));
        }
        return aabb == null ? new AABB() : aabb;
    }

    public static C13314b h(GameObject gameObject, boolean takePosition, boolean takeRotation) {
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = f88249e.get().f88253a;
        fVar.G();
        C13600g.b(gameObject, fVar);
        C13314b j10 = j(gameObject, fVar);
        if (takeRotation || takePosition) {
            e(fVar, j10, takePosition, takeRotation);
        }
        return j10;
    }

    public static C13314b i(GameObject gameObject) {
        return j(gameObject, null);
    }

    public static C13314b j(GameObject gameObject, com.itsmagic.engine.Engines.Engine.Vector.f precomputedGlobalMatrix) {
        C1626b c1626b = f88249e.get();
        float[] fArr = c1626b.f88257e;
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = c1626b.f88254b;
        if (precomputedGlobalMatrix == null) {
            precomputedGlobalMatrix = c1626b.f88253a;
            precomputedGlobalMatrix.G();
            C13600g.b(gameObject, precomputedGlobalMatrix);
        }
        fVar.s0(precomputedGlobalMatrix).E();
        AABB f10 = f(gameObject, fVar, fArr);
        if (f10 == null) {
            f10 = new AABB();
        }
        return new C13314b(new Vector3(f10.B(), f10.C(), f10.D()), new Vector3(f10.w(), f10.x(), f10.y()), new Vector3(f10.o(), f10.p(), f10.q()));
    }

    public static C1626b k() {
        return new C1626b();
    }

    public static AABB l(AABB a10, AABB b10) {
        if (a10 == null) {
            return b10;
        }
        if (b10 == null) {
            return a10;
        }
        AABB aabb = new AABB();
        aabb.U(Math.min(a10.B(), b10.B()));
        aabb.W(Math.min(a10.C(), b10.C()));
        aabb.Y(Math.min(a10.D(), b10.D()));
        aabb.T(Math.max(a10.w(), b10.w()));
        aabb.V(Math.max(a10.x(), b10.x()));
        aabb.X(Math.max(a10.y(), b10.y()));
        aabb.M((aabb.w() + aabb.B()) * 0.5f);
        aabb.N((aabb.x() + aabb.C()) * 0.5f);
        aabb.O((aabb.y() + aabb.D()) * 0.5f);
        float w10 = aabb.w() - aabb.o();
        float x10 = aabb.x() - aabb.p();
        float y10 = aabb.y() - aabb.q();
        aabb.setRadius((float) Math.sqrt((w10 * w10) + (x10 * x10) + (y10 * y10)));
        return aabb;
    }

    public String toString() {
        return "GameObjectBounds{min=" + ((Object) this.f88250b) + ", max=" + ((Object) this.f88251c) + ", center=" + ((Object) this.f88252d) + JavaElement.JEM_ANNOTATION;
    }
}
