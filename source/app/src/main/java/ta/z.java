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

public class z extends NoCodeNode {

    public static final String f24186i = "OneMinus";

    public final NoCodeSlot[] f24187g;

    public final NoCodeSlot[] f24188h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new z();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return z.class;
        }

        @Override
        public String c() {
            return "OneMinus";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, z.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "One Minus";
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
            return 1.0f - a10;
        }
    }

    static {
        ga.o.a(new a());
    }

    public z() {
        ga.H h10 = ga.H.DYNAMIC;
        this.f24187g = new NoCodeSlot[]{new NoCodeSlot("In", h10).c(Lang.l(Lang.T.NOCODE_SLOT_IN))};
        this.f24188h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "OneMinus";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24187g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24188h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "One Minus";
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        y0(this.f24188h[0], ga.m.b(Q(this.f24187g[0]), noCodeData != null ? t0(0, new C13303A(noCodeData)) : ga.H.NUMBER, new b()));
        u(this.f24188h[0]);
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        return resolver.b(this, 0);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ONE_MINUS);
    }
}
