package Va;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class f extends NoCodeNode {

    public static final String f26746j = "WaitNode";

    public final NoCodeSlot[] f26747g = {new NoCodeSlot("Seconds", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_SECONDS))};

    public float f26748h = 0.0f;

    public float f26749i;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return f.class;
        }

        @Override
        public String c() {
            return f.f26746j;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f.class);
        }

        @Override
        public String e() {
            return "Time";
        }

        @Override
        public String f() {
            return "Wait";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public f() {
        this.serializedNodeType = f26746j;
    }

    @Override
    public void E0() {
        super.E0();
        if (d0()) {
            float b10 = this.f26749i + K8.d.b();
            this.f26749i = b10;
            if (b10 >= this.f26748h) {
                this.f26749i = 0.0f;
                t();
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f26747g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Wait";
    }

    @Override
    public void m0() {
        GameObject h02;
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null || (h02 = noCodeData.h0()) == null || h02.J0() == null) {
            return;
        }
        float V10 = m.V(Q(this.f26747g[0]));
        this.f26748h = V10;
        if (V10 <= 0.0f) {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_WAIT);
    }
}
