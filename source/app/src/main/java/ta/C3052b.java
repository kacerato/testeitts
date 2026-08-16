package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13303A;

public class C3052b extends Fa.c {

    public static final String f24131j = "Add";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3052b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3052b.class;
        }

        @Override
        public String c() {
            return "Add";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3052b.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Add";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3052b() {
        super("Add");
        this.serializedNodeType = "Add";
    }

    @Override
    public float G0(float a10, float b10) {
        return a10 + b10;
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
        y0(J10[0], i02 + i03);
        u(J10[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ADD);
    }
}
