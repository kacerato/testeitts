package Wa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import org.eclipse.jdt.core.Signature;

public class f extends NoCodeNode {

    public static final String f27365i = "EulerRotation";

    public static final int f27366j = 0;

    public static final int f27367k = 1;

    public static final int f27368l = 2;

    public static final int f27369m = 0;

    public final NoCodeSlot[] f27370g;

    public final NoCodeSlot[] f27371h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return f.class;
        }

        @Override
        public String c() {
            return f.f27365i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Euler Rotation";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public f() {
        H h10 = H.NUMBER;
        this.f27370g = new NoCodeSlot[]{new NoCodeSlot("X", h10).c(Lang.l(Lang.T.NOCODE_SLOT_X)), new NoCodeSlot("Y", h10).c(Lang.l(Lang.T.NOCODE_SLOT_Y)), new NoCodeSlot(Signature.SIG_BOOLEAN, h10).c(Lang.l(Lang.T.NOCODE_SLOT_Z))};
        this.f27371h = new NoCodeSlot[]{new NoCodeSlot("Quaternion", H.QUATERNION).c(Lang.l(Lang.T.NOCODE_SLOT_QUATERNION))};
        this.serializedNodeType = f27365i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27370g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27371h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Euler Rotation";
    }

    @Override
    public void m0() {
        float V10 = m.V(Q(this.f27370g[0]));
        float V11 = m.V(Q(this.f27370g[1]));
        float V12 = m.V(Q(this.f27370g[2]));
        Quaternion quaternion = new Quaternion();
        quaternion.v(V10, V11, V12);
        y0(this.f27371h[0], quaternion);
        u(this.f27371h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.QUATERNION;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_EULER_ROTATION);
    }
}
