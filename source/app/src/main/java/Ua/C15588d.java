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

public class C15588d extends NoCodeNode implements F {

    public static final String f118723h = "SendEventText";

    public static final int f118724i = 0;

    public static final int f118725j = 1;

    public static final int f118726k = 2;

    public static final int f118727l = 3;

    public final NoCodeSlot[] f118728g;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15588d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15588d.class;
        }

        @Override
        public String c() {
            return C15588d.f118723h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15588d.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Events";
        }

        @Override
        public String f() {
            return "Send Event Text";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15588d() {
        NoCodeSlot c10 = new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT));
        H h10 = H.TEXT;
        this.f118728g = new NoCodeSlot[]{c10, new NoCodeSlot("Name", h10).c(Lang.l(Lang.T.NOCODE_SLOT_NAME)), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE)), new NoCodeSlot("To Hierarchy", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_TO_HIERARCHY))};
        this.serializedNodeType = f118723h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f118728g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Send Event Text";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : (inputIndex == 1 || inputIndex == 2 || inputIndex != 3) ? "" : "false";
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f118728g[0]);
            if (!C13317e.J(b10)) {
                t();
                return;
            }
            String c10 = Aa.b.c(Q(this.f118728g[1]));
            String c11 = Aa.b.c(Q(this.f118728g[2]));
            if (m.O(Q(this.f118728g[3]))) {
                b10.callFunction(c10, c11);
            } else {
                b10.B(c10, c11);
            }
            t();
        } catch (Throwable th2) {
            t();
            throw th2;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SEND_EVENT_TEXT);
    }
}
