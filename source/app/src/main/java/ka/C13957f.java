package ka;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import j9.C13813a;
import java.util.List;

public class C13957f extends NoCodeNode {

    public static final String f95018i = "ContactDecompose";

    public static final int f95019j = 0;

    public final NoCodeSlot[] f95020g = {new NoCodeSlot("Contact", H.CONTACT).c(Lang.l(Lang.T.NOCODE_SLOT_CONTACT))};

    public final NoCodeSlot[] f95021h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C13957f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13957f.class;
        }

        @Override
        public String c() {
            return C13957f.f95018i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13957f.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Contact";
        }

        @Override
        public String f() {
            return "Contact Decompose";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C13957f() {
        H h10 = H.FLOAT3;
        NoCodeSlot c10 = new NoCodeSlot("Normal", h10).c(Lang.l(Lang.T.NOCODE_SLOT_NORMAL));
        NoCodeSlot c11 = new NoCodeSlot("Contact Point", h10).c(Lang.l(Lang.T.NOCODE_SLOT_CONTACT_POINT));
        H h11 = H.NUMBER;
        this.f95021h = new NoCodeSlot[]{c10, c11, new NoCodeSlot("Impulse", h11).c(Lang.l(Lang.T.NOCODE_SLOT_IMPULSE)), new NoCodeSlot("Distance", h11).c(Lang.l(Lang.T.NOCODE_SLOT_DISTANCE)), new NoCodeSlot(Collider.f73199i3, H.COMPONENT_COLLIDER).c(Lang.l(Lang.T.NOCODE_SLOT_COLLIDER)), new NoCodeSlot("Collider Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_COLLIDER_OBJECT))};
        this.serializedNodeType = f95018i;
    }

    private int G0() {
        int i10;
        int i11;
        if (this.f79021a == null) {
            return 0;
        }
        String B10 = B();
        List<NoCodeBranchConnection> list = this.f79021a.branchConnections;
        if (list != null) {
            for (NoCodeBranchConnection noCodeBranchConnection : list) {
                if (noCodeBranchConnection != null && B10.equals(noCodeBranchConnection.fromNodeId) && (i11 = noCodeBranchConnection.fromSlot) >= 0 && i11 < this.f95021h.length) {
                    return i11;
                }
            }
        }
        List<NoCodeNodeConnection> list2 = this.f79021a.connections;
        if (list2 != null) {
            for (NoCodeNodeConnection noCodeNodeConnection : list2) {
                if (noCodeNodeConnection != null && B10.equals(noCodeNodeConnection.fromNodeId) && (i10 = noCodeNodeConnection.fromSlot) >= 0 && i10 < this.f95021h.length) {
                    return i10;
                }
            }
        }
        return 0;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f95020g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f95021h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Contact Decompose";
    }

    @Override
    public void m0() {
        C13813a.C1794a S10 = ga.m.S(Q(this.f95020g[0]));
        y0(this.f95021h[0], S10 != null ? C13956e.a(S10.f92655a) : null);
        y0(this.f95021h[1], S10 != null ? C13956e.a(S10.f92656b) : null);
        y0(this.f95021h[2], Float.valueOf(S10 != null ? S10.f92657c : 0.0f));
        y0(this.f95021h[3], Float.valueOf(S10 != null ? S10.f92658d : 0.0f));
        y0(this.f95021h[4], S10 != null ? C13956e.c(S10.f92659e) : null);
        y0(this.f95021h[5], S10 != null ? C13956e.b(S10.f92660f) : null);
        u(this.f95021h[G0()]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CONTACT_DECOMPOSE);
    }
}
