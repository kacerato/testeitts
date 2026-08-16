package Da;

import JAVARuntime.SaveGame;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public class a extends u {

    public static final String f4971h = "DeleteAll";

    public final NoCodeSlot[] f4972g = new NoCodeSlot[0];

    public class C0093a implements ga.p {
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
            return a.f4971h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "SaveGame";
        }

        @Override
        public String f() {
            return "Delete All";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new C0093a());
    }

    public a() {
        this.serializedNodeType = f4971h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f4972g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Delete All";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        try {
            SaveGame.deleteAll();
        } finally {
            t();
        }
    }
}
