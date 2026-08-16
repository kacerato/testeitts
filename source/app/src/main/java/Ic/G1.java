package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class G1 extends ShaderGraphNode {

    public static final String f91724d = "ViewDirection";

    public final ShaderGraphSlot[] f91725c = {new ShaderGraphSlot("View Dir", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new G1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return G1.class;
        }

        @Override
        public String c() {
            return G1.f91724d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, G1.class);
        }

        @Override
        public String e() {
            return "Input/Space";
        }

        @Override
        public String f() {
            return "View Direction";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public G1() {
        this.serializedNodeType = f91724d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.d(this, 0, stage, "normalize(getWorldViewVector())", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91725c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "View Direction";
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
