package Va;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class c extends NoCodeNode implements F {

    public static final String f26736j = "SinTime";

    public static final int f26737k = 0;

    public final NoCodeSlot[] f26738g;

    public final NoCodeSlot[] f26739h;

    public transient float f26740i;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return "SinTime";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Input/Time";
        }

        @Override
        public String f() {
            return "Sin Time";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public c() {
        H h10 = H.NUMBER;
        this.f26738g = new NoCodeSlot[]{new NoCodeSlot("Speed", h10).c(Lang.l(Lang.T.NOCODE_SLOT_SPEED))};
        this.f26739h = new NoCodeSlot[]{new NoCodeSlot("Sin Time", h10).c(Lang.l(Lang.T.NOCODE_SLOT_SIN_TIME))};
        this.serializedNodeType = "SinTime";
        this.exposeInInspector = false;
    }

    private void G0() {
        while (true) {
            float f10 = this.f26740i;
            if (f10 <= 1.0f) {
                break;
            } else {
                this.f26740i = f10 - 1.0f;
            }
        }
        while (true) {
            float f11 = this.f26740i;
            if (f11 >= 0.0f) {
                y0(this.f26739h[0], Float.valueOf((float) Math.sin(this.f26740i * m.V(Q(this.f26738g[0])))));
                return;
            }
            this.f26740i = f11 + 1.0f;
        }
    }

    @Override
    public void E0() {
        this.f26740i += K8.d.b();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f26738g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f26739h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Sin Time";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) {
            return "1.0";
        }
        return null;
    }

    @Override
    public boolean b0() {
        return true;
    }

    @Override
    public void i0() {
        this.f26740i = 0.0f;
    }

    @Override
    public void m0() {
        G0();
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SIN_TIME);
    }
}
