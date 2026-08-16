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

public class D extends NoCodeNode {

    public static final String f24114i = "SignedToUnit";

    public final NoCodeSlot[] f24115g;

    public final NoCodeSlot[] f24116h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new D();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return D.class;
        }

        @Override
        public String c() {
            return "SignedToUnit";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, D.class);
        }

        @Override
        public String e() {
            return "Math/Range";
        }

        @Override
        public String f() {
            return "Signed to Unit";
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
            return (a10 * 0.5f) + 0.5f;
        }
    }

    static {
        ga.o.a(new a());
    }

    public D() {
        ga.H h10 = ga.H.DYNAMIC;
        this.f24115g = new NoCodeSlot[]{new NoCodeSlot("In", h10).c(Lang.l(Lang.T.NOCODE_SLOT_IN))};
        this.f24116h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "SignedToUnit";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24115g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24116h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Signed to Unit";
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        y0(this.f24116h[0], ga.m.b(Q(this.f24115g[0]), noCodeData != null ? t0(0, new C13303A(noCodeData)) : ga.H.NUMBER, new b()));
        u(this.f24116h[0]);
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        return resolver.b(this, 0);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SIGNED_TO_UNIT);
    }
}
