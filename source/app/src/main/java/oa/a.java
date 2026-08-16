package Oa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class a extends Fa.a implements F {

    public static final String f16577i = "OnInFrontBegin";

    public static final int f16578j = 0;

    public static final int f16579k = 1;

    public static final int f16580l = 2;

    public static final int f16581m = 3;

    public final NoCodeSlot[] f16582g;

    public transient boolean f16583h;

    public class C0470a implements p {
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
            return a.f16577i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Events/Object/Spatial";
        }

        @Override
        public String f() {
            return "On In Front Begin";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0470a());
    }

    public a() {
        H h10 = H.GAME_OBJECT;
        NoCodeSlot c10 = new NoCodeSlot("Object A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_A));
        NoCodeSlot c11 = new NoCodeSlot("Object B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_B));
        H h11 = H.NUMBER;
        this.f16582g = new NoCodeSlot[]{c10, c11, new NoCodeSlot("Tolerance", h11).c(Lang.l(Lang.T.NOCODE_SLOT_TOLERANCE)), new NoCodeSlot("Max Distance", h11).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};
        this.serializedNodeType = f16577i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            NoCodeData noCodeData = this.f79021a;
            NoCodeSlot[] noCodeSlotArr = this.f16582g;
            boolean a10 = Aa.c.a(this, noCodeData, noCodeSlotArr[0], noCodeSlotArr[1], noCodeSlotArr[2], noCodeSlotArr[3]);
            if (!a10 || this.f16583h) {
                this.f16583h = a10;
            } else {
                this.f16583h = true;
                t();
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f16582g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On In Front Begin";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : inputIndex == 2 ? "30" : inputIndex == 3 ? "1000" : "";
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
        this.f16583h = false;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_IN_FRONT_BEGIN);
    }
}
