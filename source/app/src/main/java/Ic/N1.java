package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class N1 extends ShaderGraphNode {

    public static final String f91786d = "WorldNormal";

    public final ShaderGraphSlot[] f91787c = {new ShaderGraphSlot("World Normal", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new N1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return N1.class;
        }

        @Override
        public String c() {
            return N1.f91786d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, N1.class);
        }

        @Override
        public String e() {
            return "Input/Space";
        }

        @Override
        public String f() {
            return "World Normal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public N1() {
        this.serializedNodeType = f91786d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.d(this, 0, stage, stage == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX ? "normalize(v.worldNormal)" : "normalize(getWorldGeometricNormalVector())", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91787c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "World Normal";
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public boolean y() {
        return false;
    }

    @Override
    public boolean z() {
        return false;
    }
}
