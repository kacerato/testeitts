package Ta;

import androidx.exifinterface.media.ExifInterface;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import org.eclipse.jdt.core.Signature;

public class o extends NoCodeNode implements ga.F {

    public static final String f24160i = "InverseLerp";

    public final NoCodeSlot[] f24161g;

    public final NoCodeSlot[] f24162h;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new o();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return o.class;
        }

        @Override
        public String c() {
            return "InverseLerp";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, o.class);
        }

        @Override
        public String e() {
            return "Math/Interpolation";
        }

        @Override
        public String f() {
            return "Inverse Lerp";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public o() {
        ga.H h10 = ga.H.NUMBER;
        this.f24161g = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B)), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};
        this.f24162h = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_DIRECTION_TRUE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_T))};
        this.serializedNodeType = "InverseLerp";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f24161g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f24162h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Inverse Lerp";
    }

    @Override
    public String a(int inputIndex, ga.H desiredType) {
        return (inputIndex != 0 && inputIndex == 1) ? "1.0" : "0.0";
    }

    @Override
    public void m0() {
        float V10 = ga.m.V(Q(this.f24161g[0]));
        float V11 = ga.m.V(Q(this.f24161g[1]));
        float f10 = V11 - V10;
        y0(this.f24162h[0], Float.valueOf(f10 != 0.0f ? (ga.m.V(Q(this.f24161g[2])) - V10) / f10 : 0.0f));
        u(this.f24162h[0]);
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        return ga.H.NUMBER;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_INVERSE_LERP);
    }
}
