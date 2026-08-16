package Wa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import java.util.List;
import org.eclipse.jdt.core.Signature;

public class e extends NoCodeNode {

    public static final String f27361i = "EulerDecompose";

    public static final int f27362j = 0;

    public final NoCodeSlot[] f27363g = {new NoCodeSlot("Quaternion", H.QUATERNION).c(Lang.l(Lang.T.NOCODE_SLOT_QUATERNION))};

    public final NoCodeSlot[] f27364h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e.class;
        }

        @Override
        public String c() {
            return e.f27361i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Euler Decompose";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public e() {
        H h10 = H.NUMBER;
        this.f27364h = new NoCodeSlot[]{new NoCodeSlot("X", h10).c(Lang.l(Lang.T.NOCODE_SLOT_X)), new NoCodeSlot("Y", h10).c(Lang.l(Lang.T.NOCODE_SLOT_Y)), new NoCodeSlot(Signature.SIG_BOOLEAN, h10).c(Lang.l(Lang.T.NOCODE_SLOT_Z))};
        this.serializedNodeType = f27361i;
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
                if (noCodeBranchConnection != null && B10.equals(noCodeBranchConnection.fromNodeId) && (i11 = noCodeBranchConnection.fromSlot) >= 0 && i11 < this.f27364h.length) {
                    return i11;
                }
            }
        }
        List<NoCodeNodeConnection> list2 = this.f79021a.connections;
        if (list2 != null) {
            for (NoCodeNodeConnection noCodeNodeConnection : list2) {
                if (noCodeNodeConnection != null && B10.equals(noCodeNodeConnection.fromNodeId) && (i10 = noCodeNodeConnection.fromSlot) >= 0 && i10 < this.f27364h.length) {
                    return i10;
                }
            }
        }
        return 0;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27363g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27364h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Euler Decompose";
    }

    @Override
    public void m0() {
        Quaternion f02 = m.f0(Q(this.f27363g[0]));
        y0(this.f27364h[0], Float.valueOf(f02.D()));
        y0(this.f27364h[1], Float.valueOf(f02.E()));
        y0(this.f27364h[2], Float.valueOf(f02.F()));
        u(this.f27364h[G0()]);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.NUMBER;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_EULER_DECOMPOSE);
    }
}
