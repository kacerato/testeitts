package Ea;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

public class a extends NoCodeNode implements F {

    public static final String f5737i = "FindObject";

    public static final int f5738j = 0;

    public static final int f5739k = 0;

    public final NoCodeSlot[] f5740g = {new NoCodeSlot("Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_NAME))};

    public final NoCodeSlot[] f5741h = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public class C0110a implements p {
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
            return a.f5737i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Actions/World";
        }

        @Override
        public String f() {
            return "Find Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0110a());
    }

    public a() {
        this.serializedNodeType = f5737i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5740g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f5741h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Find Object";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        World world;
        try {
            String c10 = Aa.b.c(Q(this.f5740g[0]));
            if (c10 != null && !c10.trim().isEmpty()) {
                GameObject k10 = (W7.b.f27304d == null || (world = com.itsmagic.engine.Engines.Engine.World.a.f80030c) == null) ? null : world.k(c10);
                if (!C13317e.J(k10)) {
                    s();
                    return;
                } else {
                    y0(this.f5741h[0], k10);
                    u(this.f5741h[0]);
                    return;
                }
            }
            s();
        } catch (Exception unused) {
            s();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_FIND_OBJECT);
    }
}
