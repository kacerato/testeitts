package ic;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public class C13692y extends ShaderGraphNode {

    public static final String f92038e = "Distance";

    public final ShaderGraphSlot[] f92039c;

    public final ShaderGraphSlot[] f92040d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13692y();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13692y.class;
        }

        @Override
        public String c() {
            return "Distance";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13692y.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Distance";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13692y() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f92039c = new ShaderGraphSlot[]{new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c10), new ShaderGraphSlot(Signature.SIG_BYTE, c10)};
        this.f92040d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};
        this.serializedNodeType = "Distance";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.z zVar = (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C f10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.f(zVar.b(this, 0), zVar.b(this, 1));
        String g10 = context.g(this, 0, stage, f10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("distance.glsl"), "@OUT@", context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)), "@A@", g10), "@B@", context.g(this, 1, stage, f10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92039c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92040d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Distance";
    }
}
