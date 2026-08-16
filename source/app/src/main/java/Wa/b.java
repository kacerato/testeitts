package Wa;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import org.eclipse.jdt.core.Signature;

public class b extends NoCodeNode {

    public static final String f27352i = "Cross";

    public final NoCodeSlot[] f27353g;

    public final NoCodeSlot[] f27354h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return "Cross";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Cross";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public b() {
        H h10 = H.FLOAT3;
        this.f27353g = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B))};
        this.f27354h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "Cross";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27353g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27354h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Cross";
    }

    @Override
    public void m0() {
        Vector3 n02 = m.n0(Q(this.f27353g[0]));
        Vector3 n03 = m.n0(Q(this.f27353g[1]));
        y0(this.f27354h[0], new Vector3((n02.getY() * n03.getZ()) - (n02.getZ() * n03.getY()), (n02.getZ() * n03.getX()) - (n02.getX() * n03.getZ()), (n02.getX() * n03.getY()) - (n02.getY() * n03.getX())));
        u(this.f27354h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CROSS);
    }
}
