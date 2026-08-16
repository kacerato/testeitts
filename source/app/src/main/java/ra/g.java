package Ra;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class g extends NoCodeNode implements F {

    public static final String f22653l = "LimitedLoop";

    public static final int f22654m = 0;

    public static final int f22655n = 0;

    public static final int f22656o = 1;

    public static final int f22657p = 2;

    public final NoCodeSlot[] f22658g;

    public final NoCodeSlot[] f22659h;

    public transient int f22660i;

    public transient int f22661j;

    public transient boolean f22662k;

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
            return g.f22653l;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, g.class);
        }

        @Override
        public String e() {
            return "Flow";
        }

        @Override
        public String f() {
            return "Limited Loop";
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
        this.f22658g = new NoCodeSlot[]{new NoCodeSlot("Count", h10).c(Lang.l(Lang.T.NOCODE_SLOT_COUNT))};
        H h11 = H.BRANCH;
        this.f22659h = new NoCodeSlot[]{new NoCodeSlot("Loop Body", h11).c(Lang.l(Lang.T.NOCODE_SLOT_LOOP_BODY)), new NoCodeSlot("Counter", h10).c(Lang.l(Lang.T.NOCODE_SLOT_COUNTER)), new NoCodeSlot("On Finish", h11).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FINISH))};
        this.serializedNodeType = f22653l;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f22658g;
    }

    public final void G0() {
        this.f22662k = true;
        u(this.f22659h[1]);
    }

    public final void H0() {
        y0(this.f22659h[2], Float.valueOf(this.f22661j));
        this.f22661j++;
        u(this.f22659h[0]);
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f22659h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Limited Loop";
    }

    @Override
    public Ac.b O() {
        return Theme.T.NODEGRAPH_SEMAPHORE_TOPBAR;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "1" : "0";
    }

    @Override
    public void m0() {
        int max = Math.max(0, (int) Math.floor(ga.m.V(Q(this.f22658g[0]))));
        this.f22660i = max;
        this.f22661j = 0;
        this.f22662k = false;
        if (max <= 0) {
            G0();
        } else {
            H0();
        }
    }

    @Override
    public boolean n() {
        this.f22661j = this.f22660i;
        if (this.f22662k) {
            return true;
        }
        G0();
        return true;
    }

    @Override
    public boolean o() {
        if (this.f22661j < this.f22660i) {
            H0();
            return true;
        }
        if (this.f22662k) {
            this.f22662k = false;
            return false;
        }
        G0();
        return true;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LIMITED_LOOP);
    }
}
