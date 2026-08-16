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

public class F extends NoCodeNode {

    public static final String f24119i = "SmoothStep";

    public final NoCodeSlot[] f24120g;

    public final NoCodeSlot[] f24121h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new F();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return F.class;
        }

        @Override
        public String c() {
            return "SmoothStep";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, F.class);
        }

        @Override
        public String e() {
            return "Math";
        }

        @Override
        public String f() {
            return "Smooth Step";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b implements m.c {

        public final float f24122a;

        public final float f24123b;

        public b(final float val$edge0, final float val$edge1) {
            this.f24122a = val$edge0;
            this.f24123b = val$edge1;
        }

        @Override
        public float apply(float a10) {
            float f10 = this.f24122a;
            float f11 = this.f24123b;
            if (f10 == f11) {
                return 0.0f;
            }
            float max = Math.max(0.0f, Math.min(1.0f, (a10 - f10) / (f11 - f10)));
            return max * max * (3.0f - (max * 2.0f));
        }
    }

    static {
        ga.o.a(new a());
    }

    public F() {
        ga.H h10 = ga.H.NUMBER;
        NoCodeSlot c10 = new NoCodeSlot("Edge0", h10).c(Lang.l(Lang.T.NOCODE_SLOT_EDGE0));
        NoCodeSlot c11 = new NoCodeSlot("Edge1", h10).c(Lang.l(Lang.T.NOCODE_SLOT_EDGE1));
        ga.H h11 = ga.H.DYNAMIC;
        this.f24120g = new NoCodeSlot[]{c10, c11, new NoCodeSlot("In", h11).c(Lang.l(Lang.T.NOCODE_SLOT_IN))};
        this.f24121h = new NoCodeSlot[]{new NoCodeSlot("Out", h11).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "SmoothStep";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24120g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24121h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Smooth Step";
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        y0(this.f24121h[0], ga.m.b(Q(this.f24120g[2]), noCodeData != null ? t0(0, new C13303A(noCodeData)) : ga.H.NUMBER, new b(ga.m.V(Q(this.f24120g[0])), ga.m.V(Q(this.f24120g[1])))));
        u(this.f24121h[0]);
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        return resolver.b(this, 2);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SMOOTH_STEP);
    }
}
