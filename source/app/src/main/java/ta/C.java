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

public class C extends NoCodeNode {

    public static final String f24110i = "Saturate";

    public final NoCodeSlot[] f24111g;

    public final NoCodeSlot[] f24112h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C.class;
        }

        @Override
        public String c() {
            return "Saturate";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C.class);
        }

        @Override
        public String e() {
            return "Math";
        }

        @Override
        public String f() {
            return "Saturate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b implements m.c {
        public b() {
        }

        @Override
        public float apply(float a10) {
            return Math.max(0.0f, Math.min(1.0f, a10));
        }
    }

    static {
        ga.o.a(new a());
    }

    public C() {
        ga.H h10 = ga.H.DYNAMIC;
        this.f24111g = new NoCodeSlot[]{new NoCodeSlot("In", h10).c(Lang.l(Lang.T.NOCODE_SLOT_IN))};
        this.f24112h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "Saturate";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24111g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24112h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Saturate";
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        y0(this.f24112h[0], ga.m.b(Q(this.f24111g[0]), noCodeData != null ? t0(0, new C13303A(noCodeData)) : ga.H.NUMBER, new b()));
        u(this.f24112h[0]);
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        return resolver.b(this, 0);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SATURATE);
    }
}
