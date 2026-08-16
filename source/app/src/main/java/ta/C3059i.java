package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13303A;
import ga.EnumC13304B;
import ga.m;

public class C3059i extends NoCodeNode {

    public static final String f24150i = "Clamp";

    public final NoCodeSlot[] f24151g;

    public final NoCodeSlot[] f24152h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3059i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3059i.class;
        }

        @Override
        public String c() {
            return "Clamp";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3059i.class);
        }

        @Override
        public String e() {
            return "Math";
        }

        @Override
        public String f() {
            return "Clamp";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b implements m.b {
        public b() {
        }

        @Override
        public float a(float a10, float b10) {
            return Math.min(a10, b10);
        }
    }

    public class c implements m.b {
        public c() {
        }

        @Override
        public float a(float a10, float b10) {
            return Math.max(a10, b10);
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3059i() {
        ga.H h10 = ga.H.DYNAMIC;
        this.f24151g = new NoCodeSlot[]{new NoCodeSlot("In", h10).c(Lang.l(Lang.T.NOCODE_SLOT_IN)), new NoCodeSlot("Min", h10).c(Lang.l(Lang.T.NOCODE_SLOT_MIN)), new NoCodeSlot("Max", h10).c(Lang.l(Lang.T.NOCODE_SLOT_MAX))};
        this.f24152h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "Clamp";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24151g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24152h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Clamp";
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        ga.H t02 = noCodeData != null ? t0(0, new C13303A(noCodeData)) : ga.H.NUMBER;
        y0(this.f24152h[0], ga.m.a(ga.m.a(Q(this.f24151g[0]), Q(this.f24151g[1]), t02, new c()), Q(this.f24151g[2]), t02, new b()));
        u(this.f24152h[0]);
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        return resolver.b(this, 0);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CLAMP);
    }
}
