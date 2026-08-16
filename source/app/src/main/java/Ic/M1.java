package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class M1 extends ShaderGraphNode {

    public static final String f91765d = "WorldFromViewMatrix";

    public final ShaderGraphSlot[] f91766c = {new ShaderGraphSlot("World From View", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new M1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return M1.class;
        }

        @Override
        public String c() {
            return M1.f91765d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, M1.class);
        }

        @Override
        public String e() {
            return "Input/Matrices";
        }

        @Override
        public String f() {
            return "World From View";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public M1() {
        this.serializedNodeType = f91765d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.d(this, 0, stage, "getWorldFromViewMatrix()", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91766c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "World From View";
    }

    @Override
    public boolean y() {
        return false;
    }
}
