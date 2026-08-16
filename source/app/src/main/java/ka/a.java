package Ka;

import com.ardor3d.util.export.xml.XMLExporter;
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

public class a extends Fa.a implements F {

    public static final String f11077i = "OnAxis";

    public static final int f11078j = 0;

    public static final int f11079k = 0;

    public static final int f11080l = 1;

    public final NoCodeSlot[] f11081g = {new NoCodeSlot("Axis Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_AXIS_NAME))};

    public final NoCodeSlot[] f11082h = {new NoCodeSlot("Then", H.BRANCH).c(Lang.l(Lang.T.NOCODE_SLOT_THEN)), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.FLOAT2).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};

    public class C0367a implements p {
        @Override
        public NoCodeNode a() {
            return new a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return a.class;
        }

        @Override
        public String c() {
            return a.f11077i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Events/Buttons";
        }

        @Override
        public String f() {
            return "On Axis";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0367a());
    }

    public a() {
        this.serializedNodeType = f11077i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            Object Q10 = Q(this.f11081g[0]);
            String trim = Q10 != null ? String.valueOf(Q10).trim() : "";
            if (trim.isEmpty()) {
                return;
            }
            Axis h10 = C15169a.h(trim);
            Vector2 d10 = h10 != null ? h10.d() : null;
            if (d10 == null) {
                return;
            }
            Vector2 vector2 = (Vector2) e(Vector2.class);
            vector2.x0(d10);
            y0(this.f11082h[1], vector2);
            if (this.f79021a.o0(this, this.f11082h[0])) {
                u(this.f11082h[0]);
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f11081g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f11082h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On Axis";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "axisname" : "";
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_AXIS);
    }
}
