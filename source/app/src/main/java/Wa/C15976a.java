package wa;

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

public class C15976a extends NoCodeNode implements F {

    public static final String f127358h = "DestroyObject";

    public static final int f127359i = 0;

    public final NoCodeSlot[] f127360g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public class C2192a implements p {
        @Override
        public NoCodeNode a() {
            return new C15976a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15976a.class;
        }

        @Override
        public String c() {
            return C15976a.f127358h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15976a.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Lifecycle";
        }

        @Override
        public String f() {
            return "Destroy Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C2192a());
    }

    public C15976a() {
        this.serializedNodeType = f127358h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f127360g;
    }

    public final GameObject G0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f127360g[0]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Destroy Object";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        try {
            GameObject G02 = G0();
            if (C13317e.J(G02)) {
                G02.e();
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_DESTROY_OBJECT);
    }
}
