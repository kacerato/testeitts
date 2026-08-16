package ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

public class C16155a extends NoCodeNode implements F {

    public static final String f130092i = "CompareNameBranch";

    public static final int f130093j = 0;

    public static final int f130094k = 1;

    public static final int f130095l = 0;

    public static final int f130096m = 1;

    public final NoCodeSlot[] f130097g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_NAME))};

    public final NoCodeSlot[] f130098h;

    public class C2221a implements p {
        @Override
        public NoCodeNode a() {
            return new C16155a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16155a.class;
        }

        @Override
        public String c() {
            return C16155a.f130092i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16155a.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Queries";
        }

        @Override
        public String f() {
            return "Compare Name";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C2221a());
    }

    public C16155a() {
        H h10 = H.BRANCH;
        this.f130098h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f130092i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130097g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130098h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Compare Name";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130097g[0]);
        u((C13317e.J(b10) && b10.I(Aa.b.c(Q(this.f130097g[1])))) ? this.f130098h[0] : this.f130098h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_COMPARE_NAME_BRANCH);
    }
}
