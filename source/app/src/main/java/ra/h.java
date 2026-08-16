package Ra;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.protobuf.C12667d1;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class h extends NoCodeNode implements F {

    public static final String f22663m = "LoopEachList";

    public static final int f22664n = 0;

    public static final int f22665o = 0;

    public static final int f22666p = 1;

    public static final int f22667q = 2;

    public static final int f22668r = 3;

    public final NoCodeSlot[] f22669g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST))};

    public final NoCodeSlot[] f22670h;

    public transient ga.l f22671i;

    public transient int f22672j;

    public transient int f22673k;

    public transient boolean f22674l;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return h.class;
        }

        @Override
        public String c() {
            return h.f22663m;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, h.class);
        }

        @Override
        public String e() {
            return "Flow";
        }

        @Override
        public String f() {
            return "Loop Each";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public h() {
        H h10 = H.BRANCH;
        this.f22670h = new NoCodeSlot[]{new NoCodeSlot("Loop Body", h10).c(Lang.l(Lang.T.NOCODE_SLOT_LOOP_BODY)), new NoCodeSlot("Counter", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_COUNTER)), new NoCodeSlot("Item", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_ITEM)), new NoCodeSlot("On Finish", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FINISH))};
        this.serializedNodeType = f22663m;
    }

    private void H0() {
        this.f22674l = true;
        u(this.f22670h[3]);
    }

    private void I0() {
        y0(this.f22670h[1], Float.valueOf(this.f22672j));
        NoCodeSlot noCodeSlot = this.f22670h[2];
        ga.l lVar = this.f22671i;
        y0(noCodeSlot, lVar != null ? lVar.c(this.f22672j) : null);
        this.f22672j++;
        u(this.f22670h[0]);
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f22669g;
    }

    public final H G0(D resolver) {
        NoCodeNodeConnection Q10;
        H b10;
        NoCodeData a10 = resolver != null ? resolver.a() : null;
        if (a10 != null && (Q10 = a10.Q(B(), 0)) != null) {
            Object V10 = a10.V(Q10.fromNodeId);
            return ((V10 instanceof ga.k) && (b10 = ((ga.k) V10).b(Q10.fromSlot, resolver)) != null) ? b10 : H.DYNAMIC;
        }
        return H.DYNAMIC;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f22670h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Loop Each";
    }

    @Override
    public Ac.b O() {
        return Theme.T.NODEGRAPH_SEMAPHORE_TOPBAR;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        ga.l a02 = ga.m.a0(Q(this.f22669g[0]));
        this.f22671i = a02;
        this.f22672j = 0;
        int i10 = a02 != null ? a02.i() : 0;
        this.f22673k = i10;
        this.f22674l = false;
        if (i10 <= 0) {
            H0();
        } else {
            I0();
        }
    }

    @Override
    public boolean n() {
        this.f22672j = this.f22673k;
        if (this.f22674l) {
            return true;
        }
        H0();
        return true;
    }

    @Override
    public boolean o() {
        if (this.f22672j < this.f22673k) {
            I0();
            return true;
        }
        if (this.f22674l) {
            this.f22674l = false;
            return false;
        }
        H0();
        return true;
    }

    @Override
    public H t0(int index, D resolver) {
        if (index != 2) {
            return super.t0(index, resolver);
        }
        H G02 = G0(resolver);
        return G02 != null ? G02 : H.DYNAMIC;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LOOP_EACH_LIST);
    }
}
