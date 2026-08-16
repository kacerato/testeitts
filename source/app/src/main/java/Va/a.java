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

public class a extends NoCodeNode implements F {

    public static final String f26729j = "CosTime";

    public static final int f26730k = 0;

    public final NoCodeSlot[] f26731g;

    public final NoCodeSlot[] f26732h;

    public transient float f26733i;

    public class C0735a implements p {
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
            return "CosTime";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Input/Time";
        }

        @Override
        public String f() {
            return "Cos Time";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0735a());
    }

    public a() {
        H h10 = H.NUMBER;
        this.f26731g = new NoCodeSlot[]{new NoCodeSlot("Speed", h10).c(Lang.l(Lang.T.NOCODE_SLOT_SPEED))};
        this.f26732h = new NoCodeSlot[]{new NoCodeSlot("Cos Time", h10).c(Lang.l(Lang.T.NOCODE_SLOT_COS_TIME))};
        this.serializedNodeType = "CosTime";
        this.exposeInInspector = false;
    }

    @Override
    public void E0() {
        this.f26733i += K8.d.b();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f26731g;
    }

    public final void G0() {
        while (true) {
            float f10 = this.f26733i;
            if (f10 <= 1.0f) {
                break;
            } else {
                this.f26733i = f10 - 1.0f;
            }
        }
        while (true) {
            float f11 = this.f26733i;
            if (f11 >= 0.0f) {
                y0(this.f26732h[0], Float.valueOf((float) Math.cos(this.f26733i * m.V(Q(this.f26731g[0])))));
                return;
            }
            this.f26733i = f11 + 1.0f;
        }
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f26732h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Cos Time";
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
        this.f26733i = 0.0f;
    }

    @Override
    public void m0() {
        G0();
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_COS_TIME);
    }
}
