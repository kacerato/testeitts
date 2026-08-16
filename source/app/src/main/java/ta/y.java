package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;

public class y extends NoCodeNode implements ga.F {

    public static final String f24180i = "NumberToText";

    public static final int f24181j = 0;

    public static final int f24182k = 1;

    public static final int f24183l = 0;

    public final NoCodeSlot[] f24184g;

    public final NoCodeSlot[] f24185h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new y();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return y.class;
        }

        @Override
        public String c() {
            return y.f24180i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, y.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Number to Text";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public y() {
        ga.H h10 = ga.H.NUMBER;
        this.f24184g = new NoCodeSlot[]{new NoCodeSlot("Number", h10).c(Lang.l(Lang.T.NOCODE_SLOT_NUMBER)), new NoCodeSlot("Decimals", h10).c(Lang.l(Lang.T.NOCODE_SLOT_DECIMALS))};
        this.f24185h = new NoCodeSlot[]{new NoCodeSlot("Text", ga.H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_TEXT))};
        this.serializedNodeType = f24180i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24184g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24185h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Number to Text";
    }

    @Override
    public String a(int inputIndex, ga.H desiredType) {
        return inputIndex == 0 ? "0.0" : inputIndex == 1 ? "2.0" : "";
    }

    @Override
    public void m0() {
        y0(this.f24185h[0], Tc.b.p(ga.m.V(Q(this.f24184g[0])), Math.max(0, (int) ga.m.V(Q(this.f24184g[1])))));
        u(this.f24185h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_NUMBER_TO_TEXT);
    }
}
