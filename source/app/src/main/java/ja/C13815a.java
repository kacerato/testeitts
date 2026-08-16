package ja;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Input.Axis;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import rc.C15169a;

public class C13815a extends NoCodeNode implements F {

    public static final String f92670i = "GetAxis";

    public static final int f92671j = 0;

    public static final int f92672k = 0;

    public final NoCodeSlot[] f92673g = {new NoCodeSlot("Axis Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_AXIS_NAME))};

    public final NoCodeSlot[] f92674h = {new NoCodeSlot("Axis", H.FLOAT2).c(Lang.l(Lang.T.NOCODE_SLOT_AXIS))};

    public class C1795a implements p {
        @Override
        public NoCodeNode a() {
            return new C13815a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13815a.class;
        }

        @Override
        public String c() {
            return C13815a.f92670i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13815a.class);
        }

        @Override
        public String e() {
            return "Actions/Buttons";
        }

        @Override
        public String f() {
            return "Get Axis";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C1795a());
    }

    public C13815a() {
        this.serializedNodeType = f92670i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f92673g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f92674h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Axis";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "axisname" : "";
    }

    @Override
    public void m0() {
        Axis h10;
        Vector2 vector2 = (Vector2) e(Vector2.class);
        vector2.v0(0.0f);
        Object Q10 = Q(this.f92673g[0]);
        String trim = Q10 != null ? String.valueOf(Q10).trim() : "";
        if (!trim.isEmpty() && (h10 = C15169a.h(trim)) != null) {
            vector2.x0(h10.d());
        }
        y0(this.f92674h[0], vector2);
        u(this.f92674h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_AXIS);
    }
}
