package E7;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13314b;

public final class c {

    public static final class b {

        public final Vector3 f5707a;

        public final float f5708b;

        public final boolean f5709c;

        public static b a() {
            return new b();
        }

        public Vector3 b() {
            return this.f5707a.m1249clone();
        }

        public float c() {
            return this.f5708b;
        }

        public boolean d() {
            return this.f5709c;
        }

        public b(Vector3 center, float radius) {
            this.f5707a = center;
            this.f5708b = radius;
            this.f5709c = false;
        }

        public b() {
            this.f5707a = new Vector3();
            this.f5708b = 0.0f;
            this.f5709c = true;
        }
    }

    public static b a(GameObject gameObject) {
        if (gameObject == null) {
            return b.a();
        }
        b b10 = b(gameObject);
        if (!b10.d()) {
            return b10;
        }
        GameObject.g z10 = gameObject.z();
        return !z10.f() ? new b(z10.d(), z10.e()) : b.a();
    }

    public static b b(GameObject gameObject) {
        C13314b h10;
        if (c(gameObject) && (h10 = C13314b.h(gameObject, false, false)) != null) {
            AABB d10 = new AABB(h10.f88250b, h10.f88251c).d(gameObject.transform.x1());
            Vector3 z10 = d10.z();
            Vector3 u10 = d10.u();
            Vector3 vector3 = new Vector3((z10.getX() + u10.getX()) * 0.5f, (z10.getY() + u10.getY()) * 0.5f, (z10.getZ() + u10.getZ()) * 0.5f);
            float x10 = u10.getX() - vector3.getX();
            float y10 = u10.getY() - vector3.getY();
            float z11 = u10.getZ() - vector3.getZ();
            return new b(vector3, (float) Math.sqrt((x10 * x10) + (y10 * y10) + (z11 * z11)));
        }
        return b.a();
    }

    public static boolean c(GameObject gameObject) {
        if (gameObject != null && gameObject.isHierarchyActive()) {
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                Component L10 = gameObject.L(i10);
                if (L10 instanceof ModelRenderer) {
                    ModelRenderer modelRenderer = (ModelRenderer) L10;
                    if (modelRenderer.isEnabled() && modelRenderer.getVertex() != null) {
                        return true;
                    }
                }
            }
            for (int i11 = 0; i11 < gameObject.D(); i11++) {
                if (c(gameObject.C(i11))) {
                    return true;
                }
            }
        }
        return false;
    }
}
