package ua;

import com.ardor3d.util.export.xml.XMLExporter;
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

public class C15585a extends NoCodeNode implements F {

    public static final String f118706h = "SendEventBool";

    public static final int f118707i = 0;

    public static final int f118708j = 1;

    public static final int f118709k = 2;

    public static final int f118710l = 3;

    public final NoCodeSlot[] f118711g;

    public class C2043a implements p {
        @Override
        public NoCodeNode a() {
            return new C15585a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15585a.class;
        }

        @Override
        public String c() {
            return C15585a.f118706h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15585a.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Events";
        }

        @Override
        public String f() {
            return "Send Event Bool";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C2043a());
    }

    public C15585a() {
        NoCodeSlot c10 = new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT));
        NoCodeSlot c11 = new NoCodeSlot("Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_NAME));
        H h10 = H.BOOLEAN;
        this.f118711g = new NoCodeSlot[]{c10, c11, new NoCodeSlot(XMLExporter.ELEMENT_VALUE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE)), new NoCodeSlot("To Hierarchy", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TO_HIERARCHY))};
        this.serializedNodeType = f118706h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f118711g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Send Event Bool";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "" : (inputIndex == 2 || inputIndex == 3) ? "false" : "";
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f118711g[0]);
            if (!C13317e.J(b10)) {
                t();
                return;
            }
            String c10 = Aa.b.c(Q(this.f118711g[1]));
            boolean O10 = m.O(Q(this.f118711g[2]));
            if (m.O(Q(this.f118711g[3]))) {
                b10.callFunction(c10, Boolean.valueOf(O10));
            } else {
                b10.B(c10, Boolean.valueOf(O10));
            }
            t();
        } catch (Throwable th2) {
            t();
            throw th2;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SEND_EVENT_BOOL);
    }
}
