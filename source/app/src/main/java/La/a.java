package La;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class a extends Fa.a implements F {

    public static final String f11667h = "OnStart";

    public static final int f11668i = 0;

    public final NoCodeSlot[] f11669g = {new NoCodeSlot("Then", H.BRANCH).c(Lang.l(Lang.T.NOCODE_SLOT_THEN))};

    public class C0380a implements p {
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
            return a.f11667h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Events/Component/Lifecycle";
        }

        @Override
        public String f() {
            return "On Start";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0380a());
    }

    public a() {
        this.serializedNodeType = f11667h;
    }

    public void G0() {
        if (d0()) {
            u(this.f11669g[0]);
        }
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f11669g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On Start";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_START);
    }
}
