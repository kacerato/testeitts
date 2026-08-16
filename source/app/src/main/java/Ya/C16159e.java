package ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

public class C16159e extends NoCodeNode implements F {

    public static final String f130118i = "IsCollidingWith";

    public static final int f130119j = 0;

    public static final int f130120k = 1;

    public static final int f130121l = 0;

    public static final int f130122m = 1;

    public final NoCodeSlot[] f130123g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Other Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_OTHER_NAME))};

    public final NoCodeSlot[] f130124h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16159e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16159e.class;
        }

        @Override
        public String c() {
            return C16159e.f130118i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16159e.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Queries";
        }

        @Override
        public String f() {
            return "Is Colliding With";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16159e() {
        H h10 = H.BRANCH;
        this.f130124h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f130118i;
    }

    public static boolean G0(GameObject target, String objectName) {
        if (!C13317e.J(target)) {
            return false;
        }
        PhysicsComponent physicsComponent = (PhysicsComponent) target.i0(PhysicsComponent.class);
        if (physicsComponent != null) {
            return physicsComponent.colliderWith(objectName);
        }
        Collider collider = (Collider) target.i0(Collider.class);
        if (collider != null) {
            return collider.colliderWith(objectName);
        }
        return false;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130123g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130124h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Colliding With";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        u(G0(Aa.b.b(this, this.f79021a, this.f130123g[0]), Aa.b.c(Q(this.f130123g[1]))) ? this.f130124h[0] : this.f130124h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_COLLIDING_WITH);
    }
}
