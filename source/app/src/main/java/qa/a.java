package Qa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class a extends Fa.a implements F {

    public static final String f22005i = "Is3DTouched";

    public static final int f22006j = 0;

    public static final int f22007k = 0;

    public static final int f22008l = 1;

    public final NoCodeSlot[] f22009g = {new NoCodeSlot("Max Distance", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};

    public final NoCodeSlot[] f22010h;

    public class C0534a implements p {
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
            return a.f22005i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Events/Object/Touch 3D";
        }

        @Override
        public String f() {
            return "Is 3D Touched";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0534a());
    }

    public a() {
        H h10 = H.BRANCH;
        this.f22010h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f22005i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            if (d.e(this.f79021a, m.V(Q(this.f22009g[0])))) {
                if (this.f79021a.o0(this, this.f22010h[0])) {
                    u(this.f22010h[0]);
                }
            } else if (this.f79021a.o0(this, this.f22010h[1])) {
                u(this.f22010h[1]);
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f22009g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f22010h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is 3D Touched";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "1000" : "";
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_3D_TOUCHED);
    }
}
