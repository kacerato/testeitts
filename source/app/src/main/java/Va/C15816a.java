package va;

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

public class C15816a extends NoCodeNode implements F {

    public static final String f121377i = "FindChildObject";

    public static final int f121378j = 0;

    public static final int f121379k = 1;

    public static final int f121380l = 0;

    public final NoCodeSlot[] f121381g;

    public final NoCodeSlot[] f121382h;

    public class C2069a implements p {
        @Override
        public NoCodeNode a() {
            return new C15816a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15816a.class;
        }

        @Override
        public String c() {
            return C15816a.f121377i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15816a.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Hierarchy";
        }

        @Override
        public String f() {
            return "Find Child Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C2069a());
    }

    public C15816a() {
        H h10 = H.GAME_OBJECT;
        this.f121381g = new NoCodeSlot[]{new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_NAME))};
        this.f121382h = new NoCodeSlot[]{new NoCodeSlot("Child", h10).c(Lang.l(Lang.T.NOCODE_SLOT_CHILD))};
        this.serializedNodeType = f121377i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f121381g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f121382h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Find Child Object";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m0() {
        GameObject gameObject;
        GameObject b10;
        try {
            b10 = Aa.b.b(this, this.f79021a, this.f121381g[0]);
        } catch (Exception unused) {
        }
        if (C13317e.J(b10)) {
            String c10 = Aa.b.c(Q(this.f121381g[1]));
            if (c10 == null || c10.isEmpty()) {
                throw new NullPointerException("name can't be empty or null");
            }
            gameObject = b10.Z(c10);
            y0(this.f121382h[0], C13317e.J(gameObject) ? gameObject : null);
            u(this.f121382h[0]);
        }
        gameObject = null;
        y0(this.f121382h[0], C13317e.J(gameObject) ? gameObject : null);
        u(this.f121382h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_FIND_CHILD_OBJECT);
    }
}
