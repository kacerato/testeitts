package ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
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

public class C16162h extends NoCodeNode implements F {

    public static final String f130140i = "ObjectDistance";

    public static final int f130141j = 0;

    public static final int f130142k = 1;

    public static final int f130143l = 0;

    public final NoCodeSlot[] f130144g;

    public final NoCodeSlot[] f130145h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16162h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16162h.class;
        }

        @Override
        public String c() {
            return C16162h.f130140i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16162h.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Queries";
        }

        @Override
        public String f() {
            return "Distance";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16162h() {
        H h10 = H.GAME_OBJECT;
        this.f130144g = new NoCodeSlot[]{new NoCodeSlot("Object A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_A)), new NoCodeSlot("Object B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_B))};
        this.f130145h = new NoCodeSlot[]{new NoCodeSlot("Distance", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_DISTANCE))};
        this.serializedNodeType = f130140i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130144g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130145h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Distance";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130144g[0]);
        GameObject b11 = Aa.b.b(this, this.f79021a, this.f130144g[1]);
        y0(this.f130145h[0], Float.valueOf((C13317e.J(b10) && C13317e.J(b11)) ? b10.J0().A1(b11) : 0.0f));
        u(this.f130145h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_OBJECT_DISTANCE);
    }
}
