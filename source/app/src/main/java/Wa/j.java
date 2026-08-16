package Wa;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import org.eclipse.jdt.core.Signature;

public class j extends NoCodeNode {

    public static final String f27381i = "VectorCompose";

    public final NoCodeSlot[] f27382g;

    public final NoCodeSlot[] f27383h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return j.class;
        }

        @Override
        public String c() {
            return "VectorCompose";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, j.class);
        }

        @Override
        public String e() {
            return "Vector";
        }

        @Override
        public String f() {
            return "Vector Compose";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public j() {
        H h10 = H.NUMBER;
        this.f27382g = new NoCodeSlot[]{new NoCodeSlot("X", h10).c(Lang.l(Lang.T.NOCODE_SLOT_X)), new NoCodeSlot("Y", h10).c(Lang.l(Lang.T.NOCODE_SLOT_Y)), new NoCodeSlot(Signature.SIG_BOOLEAN, h10).c(Lang.l(Lang.T.NOCODE_SLOT_Z)), new NoCodeSlot(ExifInterface.LONGITUDE_WEST, h10).c(Lang.l(Lang.T.NOCODE_SLOT_W))};
        this.f27383h = new NoCodeSlot[]{new NoCodeSlot("Out", H.FLOAT4).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "VectorCompose";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27382g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27383h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Vector Compose";
    }

    @Override
    public void m0() {
        y0(this.f27383h[0], new Vector4(m.V(Q(this.f27382g[0])), m.V(Q(this.f27382g[1])), m.V(Q(this.f27382g[2])), m.V(Q(this.f27382g[3]))));
        u(this.f27383h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.FLOAT4;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_COMPOSE);
    }
}
