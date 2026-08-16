package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class i extends AbstractC13820a {

    public static final String f95056i = "VectorYW";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new i();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return i.class;
        }

        @Override
        public String c() {
            return "VectorYW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, i.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector YW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public i() {
        super("VectorYW", "Vector YW", C.FLOAT2, "yw");
    }
}
