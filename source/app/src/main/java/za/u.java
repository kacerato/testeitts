package za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.C13308d;
import ga.EnumC13304B;
import ga.H;
import gb.C13317e;

public class u extends NoCodeNode implements ga.F {

    public static final String f130944m = "LookTo";

    public static final int f130945n = 0;

    public static final int f130946o = 1;

    public static final int f130947p = 2;

    public static final int f130948q = 3;

    public final NoCodeSlot[] f130949g;

    public transient GameObject f130950h;

    public transient Quaternion f130951i;

    public transient Quaternion f130952j;

    public transient float f130953k;

    public transient float f130954l;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new u();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return u.class;
        }

        @Override
        public String c() {
            return u.f130944m;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, u.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Look To";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public u() {
        H h10 = H.GAME_OBJECT;
        this.f130949g = new NoCodeSlot[]{new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Target", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TARGET)), new NoCodeSlot("Ignore Y", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_IGNORE_Y)), new NoCodeSlot("Seconds", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_SECONDS))};
        this.serializedNodeType = f130944m;
    }

    public static void G0(GameObject object, GameObject target, boolean ignoreY) {
        if (C13317e.J(object) && C13317e.J(target)) {
            if (ignoreY) {
                object.J0().n2(target.J0());
            } else {
                object.J0().j2(target.J0());
            }
        }
    }

    public static Quaternion H0(GameObject object, GameObject target, boolean ignoreY) {
        if (!C13317e.J(object) || !C13317e.J(target)) {
            return null;
        }
        Vector3 t02 = object.J0().t0();
        Vector3 t03 = target.J0().t0();
        if (ignoreY) {
            t03 = t03.m1249clone();
            t03.setY(t02.getY());
        }
        return Quaternion.S(t02, t03);
    }

    @Override
    public void E0() {
        if (d0()) {
            if (C13317e.J(this.f130950h) && this.f130951i != null && this.f130952j != null) {
                if (this.f130953k > 0.0f) {
                    float b10 = this.f130954l + K8.d.b();
                    this.f130954l = b10;
                    float f10 = b10 / this.f130953k;
                    float f11 = f10 >= 0.0f ? f10 : 0.0f;
                    if (f11 > 1.0f) {
                        f11 = 1.0f;
                    }
                    Quaternion clone = this.f130951i.clone();
                    clone.f(this.f130952j, f11);
                    this.f130950h.J0().i3(clone);
                    if (f11 >= 1.0f) {
                        t();
                        return;
                    }
                    return;
                }
            }
            t();
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130949g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Look To";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : inputIndex == 2 ? "false" : inputIndex == 3 ? "0" : "";
    }

    @Override
    public void j0() {
        this.f130950h = null;
        this.f130951i = null;
        this.f130952j = null;
        this.f130953k = 0.0f;
        this.f130954l = 0.0f;
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130949g[0]);
        GameObject b11 = Aa.b.b(this, this.f79021a, this.f130949g[1]);
        boolean O10 = ga.m.O(Q(this.f130949g[2]));
        float max = Math.max(0.0f, ga.m.V(Q(this.f130949g[3])));
        if (!C13317e.J(b10) || !C13317e.J(b11)) {
            t();
            return;
        }
        if (max <= 0.0f) {
            G0(b10, b11, O10);
            t();
            return;
        }
        Quaternion H02 = H0(b10, b11, O10);
        if (H02 == null) {
            t();
            return;
        }
        this.f130950h = b10;
        this.f130951i = b10.J0().B0();
        this.f130952j = H02;
        this.f130953k = max;
        this.f130954l = 0.0f;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LOOK_TO);
    }
}
