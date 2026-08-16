package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13303A;

public class I extends Fa.c {

    public static final String f24127j = "Subtract";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new I();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return I.class;
        }

        @Override
        public String c() {
            return "Subtract";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, I.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Subtract";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public I() {
        super("Subtract");
        this.serializedNodeType = "Subtract";
    }

    @Override
    public float G0(float a10, float b10) {
        return a10 - b10;
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        if ((noCodeData != null ? t0(0, new C13303A(noCodeData)) : ga.H.NUMBER) != ga.H.TEXT) {
            super.m0();
            return;
        }
        NoCodeSlot[] F10 = F();
        NoCodeSlot[] J10 = J();
        String i02 = ga.m.i0(Q(F10[0]));
        String i03 = ga.m.i0(Q(F10[1]));
        NoCodeSlot noCodeSlot = J10[0];
        if (!i03.isEmpty()) {
            i02 = i02.replace(i03, "");
        }
        y0(noCodeSlot, i02);
        u(J10[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SUBTRACT);
    }
}
