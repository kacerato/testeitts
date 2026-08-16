package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class C13963a extends AbstractC13820a {

    public static final String f95039i = "VectorWW";

    public class C1842a implements q {
        @Override
        public ShaderGraphNode a() {
            return new C13963a();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13963a.class;
        }

        @Override
        public String c() {
            return "VectorWW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13963a.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector WW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new C1842a());
    }

    public C13963a() {
        super("VectorWW", "Vector WW", C.FLOAT2, "ww");
    }
}
