package ka;

import JAVARuntime.Component;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import h9.InterfaceC13435a;
import j9.C13813a;
import java.util.List;

public class C13955d extends NoCodeNode implements ga.k {

    public static final String f95004i = "CollisionDecompose";

    public static final int f95005j = 0;

    public static final int f95006k = 0;

    public static final int f95007l = 1;

    public static final int f95008m = 2;

    public static final int f95009n = 3;

    public static final int f95010o = 4;

    public static final int f95011p = 5;

    public static final int f95012q = 6;

    public static final int f95013r = 7;

    public static final int f95014s = 8;

    public static final int f95015t = 9;

    public final NoCodeSlot[] f95016g = {new NoCodeSlot("Collision", H.COLLISION).c(Lang.l(Lang.T.NOCODE_SLOT_COLLISION))};

    public final NoCodeSlot[] f95017h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C13955d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13955d.class;
        }

        @Override
        public String c() {
            return C13955d.f95004i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13955d.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Collision";
        }

        @Override
        public String f() {
            return "Collision Decompose";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C13955d() {
        H h10 = H.GAME_OBJECT;
        NoCodeSlot c10 = new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT));
        NoCodeSlot c11 = new NoCodeSlot("Physics Component", H.ANY_COMPONENT).c(Lang.l(Lang.T.NOCODE_SLOT_PHYSICS_COMPONENT));
        NoCodeSlot c12 = new NoCodeSlot(Collider.f73199i3, H.COMPONENT_COLLIDER).c(Lang.l(Lang.T.NOCODE_SLOT_COLLIDER));
        NoCodeSlot c13 = new NoCodeSlot("Collider Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_COLLIDER_OBJECT));
        H h11 = H.NUMBER;
        NoCodeSlot c14 = new NoCodeSlot("Contact Count", h11).c(Lang.l(Lang.T.NOCODE_SLOT_CONTACT_COUNT));
        NoCodeSlot c15 = new NoCodeSlot("Contact List", H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_CONTACT_LIST));
        H h12 = H.FLOAT3;
        this.f95017h = new NoCodeSlot[]{c10, c11, c12, c13, c14, c15, new NoCodeSlot("Normal", h12).c(Lang.l(Lang.T.NOCODE_SLOT_NORMAL)), new NoCodeSlot("Contact Point", h12).c(Lang.l(Lang.T.NOCODE_SLOT_CONTACT_POINT)), new NoCodeSlot("Impulse", h11).c(Lang.l(Lang.T.NOCODE_SLOT_IMPULSE)), new NoCodeSlot("Distance", h11).c(Lang.l(Lang.T.NOCODE_SLOT_DISTANCE))};
        this.serializedNodeType = f95004i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f95016g;
    }

    public final int G0() {
        int i10;
        int i11;
        if (this.f79021a == null) {
            return 0;
        }
        String B10 = B();
        List<NoCodeBranchConnection> list = this.f79021a.branchConnections;
        if (list != null) {
            for (NoCodeBranchConnection noCodeBranchConnection : list) {
                if (noCodeBranchConnection != null && B10.equals(noCodeBranchConnection.fromNodeId) && (i11 = noCodeBranchConnection.fromSlot) >= 0 && i11 < this.f95017h.length) {
                    return i11;
                }
            }
        }
        List<NoCodeNodeConnection> list2 = this.f79021a.connections;
        if (list2 != null) {
            for (NoCodeNodeConnection noCodeNodeConnection : list2) {
                if (noCodeNodeConnection != null && B10.equals(noCodeNodeConnection.fromNodeId) && (i10 = noCodeNodeConnection.fromSlot) >= 0 && i10 < this.f95017h.length) {
                    return i10;
                }
            }
        }
        return 0;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f95017h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Collision Decompose";
    }

    @Override
    public H b(int outputIndex, D resolver) {
        return outputIndex == 5 ? H.CONTACT : H.DYNAMIC;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0059  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m0() {
        Component component;
        C13813a P10 = ga.m.P(Q(this.f95016g[0]));
        C13813a.C1794a c1794a = (P10 == null || P10.f92648d.isEmpty()) ? null : P10.f92648d.get(0);
        y0(this.f95017h[0], P10 != null ? C13956e.b(P10.f92646b) : null);
        NoCodeSlot noCodeSlot = this.f95017h[1];
        if (P10 != null) {
            InterfaceC13435a interfaceC13435a = P10.f92647c;
            if (interfaceC13435a instanceof PhysicsComponent) {
                component = C13956e.c((PhysicsComponent) interfaceC13435a);
                y0(noCodeSlot, component);
                y0(this.f95017h[2], P10 == null ? C13956e.c(P10.f92650g) : null);
                y0(this.f95017h[3], P10 == null ? C13956e.b(P10.f92651i) : null);
                y0(this.f95017h[4], Float.valueOf(P10 == null ? P10.f92648d.size() : 0.0f));
                y0(this.f95017h[5], P10 == null ? ga.m.m(H.CONTACT, P10.f92648d) : ga.m.m(H.CONTACT, null));
                y0(this.f95017h[6], c1794a == null ? C13956e.a(c1794a.f92655a) : null);
                y0(this.f95017h[7], c1794a != null ? C13956e.a(c1794a.f92656b) : null);
                y0(this.f95017h[8], Float.valueOf(c1794a == null ? c1794a.f92657c : 0.0f));
                y0(this.f95017h[9], Float.valueOf(c1794a != null ? c1794a.f92658d : 0.0f));
                u(this.f95017h[G0()]);
            }
        }
        component = null;
        y0(noCodeSlot, component);
        y0(this.f95017h[2], P10 == null ? C13956e.c(P10.f92650g) : null);
        y0(this.f95017h[3], P10 == null ? C13956e.b(P10.f92651i) : null);
        y0(this.f95017h[4], Float.valueOf(P10 == null ? P10.f92648d.size() : 0.0f));
        y0(this.f95017h[5], P10 == null ? ga.m.m(H.CONTACT, P10.f92648d) : ga.m.m(H.CONTACT, null));
        y0(this.f95017h[6], c1794a == null ? C13956e.a(c1794a.f92655a) : null);
        y0(this.f95017h[7], c1794a != null ? C13956e.a(c1794a.f92656b) : null);
        y0(this.f95017h[8], Float.valueOf(c1794a == null ? c1794a.f92657c : 0.0f));
        y0(this.f95017h[9], Float.valueOf(c1794a != null ? c1794a.f92658d : 0.0f));
        u(this.f95017h[G0()]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_COLLISION_DECOMPOSE);
    }
}
