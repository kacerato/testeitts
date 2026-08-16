package Ta;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13303A;
import ga.EnumC13304B;
import ga.m;
import org.eclipse.jdt.core.Signature;

public class p extends NoCodeNode implements ga.F {

    public static final String f24163i = "Lerp";

    public final NoCodeSlot[] f24164g;

    public final NoCodeSlot[] f24165h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new p();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return p.class;
        }

        @Override
        public String c() {
            return "Lerp";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, p.class);
        }

        @Override
        public String e() {
            return "Math/Interpolation";
        }

        @Override
        public String f() {
            return "Lerp";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b implements m.b {
        public b() {
        }

        @Override
        public float a(float a10, float b10) {
            return a10 - b10;
        }
    }

    public class c implements m.b {
        public c() {
        }

        @Override
        public float a(float a10, float b10) {
            return a10 * b10;
        }
    }

    public class d implements m.b {
        public d() {
        }

        @Override
        public float a(float a10, float b10) {
            return a10 + b10;
        }
    }

    static {
        ga.o.a(new a());
    }

    public p() {
        ga.H h10 = ga.H.DYNAMIC;
        this.f24164g = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B)), new NoCodeSlot(ExifInterface.GPS_DIRECTION_TRUE, ga.H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_T))};
        this.f24165h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "Lerp";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24164g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24165h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Lerp";
    }

    @Override
    public String a(int inputIndex, ga.H desiredType) {
        if (inputIndex == 2) {
            return Dd.c.f5125q;
        }
        return null;
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        ga.H t02 = noCodeData != null ? t0(0, new C13303A(noCodeData)) : ga.H.NUMBER;
        y0(this.f24165h[0], ga.m.a(Q(this.f24164g[0]), ga.m.a(ga.m.a(Q(this.f24164g[1]), Q(this.f24164g[0]), t02, new b()), Float.valueOf(ga.m.V(Q(this.f24164g[2]))), t02, new c()), t02, new d()));
        u(this.f24165h[0]);
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        return ga.C.i(resolver.b(this, 0), resolver.b(this, 1));
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LERP);
    }
}
