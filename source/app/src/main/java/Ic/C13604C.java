package ic;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public class C13604C extends ShaderGraphNode {

    public static final String f91690e = "Dot";

    public final ShaderGraphSlot[] f91691c;

    public final ShaderGraphSlot[] f91692d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13604C();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13604C.class;
        }

        @Override
        public String c() {
            return "Dot";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13604C.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Dot";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13604C() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f91691c = new ShaderGraphSlot[]{new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c10), new ShaderGraphSlot(Signature.SIG_BYTE, c10)};
        this.f91692d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};
        this.serializedNodeType = "Dot";
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
    }

    public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C H(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, int idx) {
        return ((com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context).b(this, idx);
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C f10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.f(H(context, 0), H(context, 1));
        String g10 = context.g(this, 0, stage, f10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("dot.glsl"), "@OUT@", context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)), "@A@", g10), "@B@", context.g(this, 1, stage, f10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91691c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91692d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Dot";
    }
}
