package Xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.H;

public class d extends Wa.a {

    public static final String f28094l = "VectorWZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return "VectorWZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Vector/Number2 Converters";
        }

        @Override
        public String f() {
            return "Vector WZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public d() {
        super("VectorWZ", "Vector WZ", H.FLOAT2, "wz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WZ);
    }
}
