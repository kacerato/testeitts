package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class d extends AbstractC13820a {

    public static final String f95042i = "VectorWZ";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new d();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return "VectorWZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
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
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public d() {
        super("VectorWZ", "Vector WZ", C.FLOAT2, "wz");
    }
}
