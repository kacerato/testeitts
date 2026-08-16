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

public class C16156b extends NoCodeNode implements F {

    public static final String f130099i = "CompareTagBranch";

    public static final int f130100j = 0;

    public static final int f130101k = 1;

    public static final int f130102l = 0;

    public static final int f130103m = 1;

    public final NoCodeSlot[] f130104g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Tag", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_TAG))};

    public final NoCodeSlot[] f130105h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16156b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16156b.class;
        }

        @Override
        public String c() {
            return C16156b.f130099i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16156b.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Queries";
        }

        @Override
        public String f() {
            return "Compare Tag";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16156b() {
        H h10 = H.BRANCH;
        this.f130105h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f130099i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130104g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130105h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Compare Tag";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130104g[0]);
        u((C13317e.J(b10) && b10.K(Aa.b.c(Q(this.f130104g[1])))) ? this.f130105h[0] : this.f130105h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_COMPARE_TAG_BRANCH);
    }
}
