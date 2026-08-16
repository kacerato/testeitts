package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.m;

public class C3056f extends NoCodeNode implements ga.F {

    public static final String f24135i = "Blend";

    public static final int f24136j = 0;

    public static final int f24137k = 1;

    public static final int f24138l = 2;

    public static final int f24139m = 0;

    public final NoCodeSlot[] f24140g;

    public final NoCodeSlot[] f24141h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3056f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3056f.class;
        }

        @Override
        public String c() {
            return "Blend";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3056f.class);
        }

        @Override
        public String e() {
            return "Math";
        }

        @Override
        public String f() {
            return "Blend";
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
            return a10 - b10;
        }
    }

    public class c implements m.b {
        public c() {
        }

        @Override
        public float a(float a10, float b10) {
            return a10 * b10;
        }
    }

    public class d implements m.b {
        public d() {
        }

        @Override
        public float a(float a10, float b10) {
            return a10 + b10;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3056f() {
        ga.H h10 = ga.H.FLOAT4;
        this.f24140g = new NoCodeSlot[]{new NoCodeSlot("Base", h10).c(Lang.l(Lang.T.NOCODE_SLOT_BASE)), new NoCodeSlot("Blend", h10).c(Lang.l(Lang.T.NOCODE_SLOT_BLEND)), new NoCodeSlot("Opacity", ga.H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_OPACITY))};
        this.f24141h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "Blend";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24140g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24141h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Blend";
    }

    @Override
    public String a(int inputIndex, ga.H desiredType) {
        if (inputIndex == 2) {
            return Dd.c.f5125q;
        }
        return null;
    }

    @Override
    public void m0() {
        float V10 = ga.m.V(Q(this.f24140g[2]));
        Object Q10 = Q(this.f24140g[1]);
        Object Q11 = Q(this.f24140g[0]);
        ga.H h10 = ga.H.FLOAT4;
        y0(this.f24141h[0], ga.m.a(Q(this.f24140g[0]), ga.m.a(ga.m.a(Q10, Q11, h10, new b()), Float.valueOf(V10), h10, new c()), h10, new d()));
        u(this.f24141h[0]);
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        return ga.H.FLOAT4;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_BLEND);
    }
}
