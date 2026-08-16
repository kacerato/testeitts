package Wa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeInputDefault;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class g extends NoCodeNode {

    public static final String f27372i = "HeightNormal";

    public final NoCodeSlot[] f27373g;

    public final NoCodeSlot[] f27374h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return g.class;
        }

        @Override
        public String c() {
            return "HeightNormal";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, g.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Height Normal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public g() {
        H h10 = H.NUMBER;
        this.f27373g = new NoCodeSlot[]{new NoCodeSlot("Height A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_HEIGHT_A)), new NoCodeSlot("Height B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_HEIGHT_B)), new NoCodeSlot("Height C", h10).c(Lang.l(Lang.T.NOCODE_SLOT_HEIGHT_C)), new NoCodeSlot(F2.d.f6276t1, h10).c(Lang.l(Lang.T.NOCODE_SLOT_WIDTH))};
        this.f27374h = new NoCodeSlot[]{new NoCodeSlot("Out", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "HeightNormal";
        w0(NoCodeInputDefault.r(3, 1.0f));
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27373g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27374h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Height Normal";
    }

    @Override
    public void m0() {
        float V10 = m.V(Q(this.f27373g[0]));
        float V11 = m.V(Q(this.f27373g[1]));
        float V12 = m.V(Q(this.f27373g[2]));
        float V13 = m.V(Q(this.f27373g[3]));
        y0(this.f27374h[0], Vector3.triangleNormal(0.0f, V10, 0.0f, V13, V11, 0.0f, 0.0f, V12, V13, new Vector3()));
        u(this.f27374h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.FLOAT3;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_HEIGHT_NORMAL);
    }
}
