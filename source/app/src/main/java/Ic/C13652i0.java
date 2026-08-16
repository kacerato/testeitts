package ic;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public class C13652i0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91923e = "Lerp";

    public final ShaderGraphSlot[] f91924c;

    public final ShaderGraphSlot[] f91925d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13652i0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13652i0.class;
        }

        @Override
        public String c() {
            return "Lerp";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13652i0.class);
        }

        @Override
        public String e() {
            return "Math/Interpolation";
        }

        @Override
        public String f() {
            return "Lerp";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13652i0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f91924c = new ShaderGraphSlot[]{new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c10), new ShaderGraphSlot(Signature.SIG_BYTE, c10), new ShaderGraphSlot(ExifInterface.GPS_DIRECTION_TRUE, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};
        this.f91925d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = "Lerp";
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.f(resolver.b(this, 0), resolver.b(this, 1));
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 2) {
            return Dd.c.f5125q;
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = D(0, (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context);
        String g10 = context.g(this, 0, stage, D10);
        String g11 = context.g(this, 1, stage, D10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("mix.glsl"), "@OUT@", context.c(this, 0, stage, D10)), "@A@", g10), "@B@", g11), "@T@", context.g(this, 2, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91924c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91925d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Lerp";
    }
}
