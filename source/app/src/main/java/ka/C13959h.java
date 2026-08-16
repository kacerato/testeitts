package ka;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import j9.C13813a;

public class C13959h extends AbstractC13953b {

    public static final String f95023l = "GetCollisionColliderObject";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C13959h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13959h.class;
        }

        @Override
        public String c() {
            return C13959h.f95023l;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13959h.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Collision";
        }

        @Override
        public String f() {
            return "Get Collider Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C13959h() {
        super(f95023l, "Get Collider Object", "Collider Object", Lang.l(Lang.T.NOCODE_SLOT_COLLIDER_OBJECT), H.GAME_OBJECT);
    }

    @Override
    public NoCodeSlot[] F() {
        return super.F();
    }

    @Override
    public Object G0(C13813a collision) {
        if (collision != null) {
            return C13956e.b(collision.f92651i);
        }
        return null;
    }

    @Override
    public NoCodeSlot[] J() {
        return super.J();
    }

    @Override
    public EnumC13304B M() {
        return super.M();
    }

    @Override
    public String N(NoCodeData graphData) {
        return super.N(graphData);
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return super.a(inputIndex, desiredType);
    }

    @Override
    public void m0() {
        super.m0();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_COLLISION_COLLIDER_OBJECT);
    }
}
