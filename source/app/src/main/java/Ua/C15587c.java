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

public class C15587c extends NoCodeNode implements F {

    public static final String f118717h = "SendEventNumber";

    public static final int f118718i = 0;

    public static final int f118719j = 1;

    public static final int f118720k = 2;

    public static final int f118721l = 3;

    public final NoCodeSlot[] f118722g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_NAME)), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE)), new NoCodeSlot("To Hierarchy", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_TO_HIERARCHY))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15587c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15587c.class;
        }

        @Override
        public String c() {
            return C15587c.f118717h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15587c.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Events";
        }

        @Override
        public String f() {
            return "Send Event Number";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15587c() {
        this.serializedNodeType = f118717h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f118722g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Send Event Number";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "" : inputIndex == 2 ? "0" : inputIndex == 3 ? "false" : "";
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f118722g[0]);
            if (!C13317e.J(b10)) {
                t();
                return;
            }
            String c10 = Aa.b.c(Q(this.f118722g[1]));
            float V10 = m.V(Q(this.f118722g[2]));
            if (m.O(Q(this.f118722g[3]))) {
                b10.callFunction(c10, Float.valueOf(V10));
            } else {
                b10.B(c10, Float.valueOf(V10));
            }
            t();
        } catch (Throwable th2) {
            t();
            throw th2;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SEND_EVENT_NUMBER);
    }
}
