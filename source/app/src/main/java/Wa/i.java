package Wa;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import org.eclipse.jdt.core.Signature;

public class i extends NoCodeNode {

    public static final String f27378i = "TriangleNormal";

    public final NoCodeSlot[] f27379g;

    public final NoCodeSlot[] f27380h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return i.class;
        }

        @Override
        public String c() {
            return "TriangleNormal";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, i.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Triangle Normal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public i() {
        H h10 = H.FLOAT3;
        this.f27379g = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B)), new NoCodeSlot(Signature.SIG_CHAR, h10).c(Lang.l(Lang.T.NOCODE_SLOT_C))};
        this.f27380h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "TriangleNormal";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27379g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27380h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Triangle Normal";
    }

    @Override
    public void m0() {
        y0(this.f27380h[0], Vector3.triangleNormal(m.n0(Q(this.f27379g[0])), m.n0(Q(this.f27379g[1])), m.n0(Q(this.f27379g[2])), new Vector3()));
        u(this.f27380h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.FLOAT3;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_TRIANGLE_NORMAL);
    }
}
