package Ja;

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

public class b extends Fa.a implements F {

    public static final String f10368i = "Is3DAimed";

    public static final int f10369j = 0;

    public static final int f10370k = 0;

    public static final int f10371l = 1;

    public final NoCodeSlot[] f10372g = {new NoCodeSlot("Max Distance", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};

    public final NoCodeSlot[] f10373h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f10368i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Events/Object/Aim 3D";
        }

        @Override
        public String f() {
            return "Is 3D Aimed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public b() {
        H h10 = H.BRANCH;
        this.f10373h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f10368i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            if (Ja.a.f(this.f79021a, m.V(Q(this.f10372g[0])))) {
                if (this.f79021a.o0(this, this.f10373h[0])) {
                    u(this.f10373h[0]);
                }
            } else if (this.f79021a.o0(this, this.f10373h[1])) {
                u(this.f10373h[1]);
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f10372g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f10373h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is 3D Aimed";
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
        return Lang.l(Lang.T.NOCODE_IS_3D_AIMED);
    }
}
