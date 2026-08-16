package Ja;

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

public class d extends Fa.a implements F {

    public static final String f10379j = "On3DAimExit";

    public static final int f10380k = 0;

    public final NoCodeSlot[] f10381g = {new NoCodeSlot("Max Distance", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};

    public transient boolean f10382h;

    public transient boolean f10383i;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return d.f10379j;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Events/Object/Aim 3D";
        }

        @Override
        public String f() {
            return "On 3D Aim Exit";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public d() {
        this.serializedNodeType = f10379j;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            boolean d10 = Ja.a.d(this.f79021a, m.V(Q(this.f10381g[0])));
            if (!this.f10383i) {
                this.f10382h = d10;
                this.f10383i = true;
            } else if (d10 || !this.f10382h) {
                this.f10382h = d10;
            } else {
                this.f10382h = false;
                t();
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f10381g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On 3D Aim Exit";
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
        this.f10382h = false;
        this.f10383i = false;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_3D_AIM_EXIT);
    }
}
