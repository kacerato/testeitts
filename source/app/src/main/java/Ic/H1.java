package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class H1 extends ShaderGraphNode {

    public static final String f91730d = "ViewFromWorldMatrix";

    public final ShaderGraphSlot[] f91731c = {new ShaderGraphSlot("View From World", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new H1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return H1.class;
        }

        @Override
        public String c() {
            return H1.f91730d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, H1.class);
        }

        @Override
        public String e() {
            return "Input/Matrices";
        }

        @Override
        public String f() {
            return "View From World";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public H1() {
        this.serializedNodeType = f91730d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.d(this, 0, stage, "getViewFromWorldMatrix()", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91731c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "View From World";
    }

    @Override
    public boolean y() {
        return false;
    }
}
