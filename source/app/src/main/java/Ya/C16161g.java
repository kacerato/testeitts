package ya;

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

public class C16161g extends NoCodeNode implements F {

    public static final String f130131i = "IsInFrontBranch";

    public static final int f130132j = 0;

    public static final int f130133k = 1;

    public static final int f130134l = 2;

    public static final int f130135m = 3;

    public static final int f130136n = 0;

    public static final int f130137o = 1;

    public final NoCodeSlot[] f130138g;

    public final NoCodeSlot[] f130139h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16161g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16161g.class;
        }

        @Override
        public String c() {
            return C16161g.f130131i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16161g.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Queries";
        }

        @Override
        public String f() {
            return "Is In Front";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16161g() {
        H h10 = H.GAME_OBJECT;
        NoCodeSlot c10 = new NoCodeSlot("Object A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_A));
        NoCodeSlot c11 = new NoCodeSlot("Object B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_B));
        H h11 = H.NUMBER;
        this.f130138g = new NoCodeSlot[]{c10, c11, new NoCodeSlot("Tolerance", h11).c(Lang.l(Lang.T.NOCODE_SLOT_TOLERANCE)), new NoCodeSlot("Max Distance", h11).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};
        H h12 = H.BRANCH;
        this.f130139h = new NoCodeSlot[]{new NoCodeSlot("On True", h12).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h12).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f130131i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130138g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130139h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is In Front";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : inputIndex == 2 ? "30" : inputIndex == 3 ? "1000" : "";
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        NoCodeSlot[] noCodeSlotArr = this.f130138g;
        u(Aa.c.a(this, noCodeData, noCodeSlotArr[0], noCodeSlotArr[1], noCodeSlotArr[2], noCodeSlotArr[3]) ? this.f130139h[0] : this.f130139h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_IN_FRONT_BRANCH);
    }
}
