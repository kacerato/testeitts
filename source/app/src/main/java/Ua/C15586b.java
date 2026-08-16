package ua;

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
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

public class C15586b extends NoCodeNode implements F {

    public static final String f118712h = "SendEvent";

    public static final int f118713i = 0;

    public static final int f118714j = 1;

    public static final int f118715k = 2;

    public final NoCodeSlot[] f118716g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_NAME)), new NoCodeSlot("To Hierarchy", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_TO_HIERARCHY))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15586b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15586b.class;
        }

        @Override
        public String c() {
            return C15586b.f118712h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15586b.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Events";
        }

        @Override
        public String f() {
            return "Send Event";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15586b() {
        this.serializedNodeType = f118712h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f118716g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Send Event";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : (inputIndex != 1 && inputIndex == 2) ? "false" : "";
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f118716g[0]);
            if (!C13317e.J(b10)) {
                t();
                return;
            }
            String c10 = Aa.b.c(Q(this.f118716g[1]));
            if (m.O(Q(this.f118716g[2]))) {
                b10.callFunction(c10);
            } else {
                b10.B(c10, new Object[0]);
            }
            t();
        } catch (Throwable th2) {
            t();
            throw th2;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SEND_EVENT);
    }
}
