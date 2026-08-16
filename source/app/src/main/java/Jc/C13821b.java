package jc;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.z;
import org.eclipse.jdt.core.Signature;

public class C13821b extends ShaderGraphNode {

    public static final String f92865e = "VectorCompose";

    public final ShaderGraphSlot[] f92866c;

    public final ShaderGraphSlot[] f92867d;

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new C13821b();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13821b.class;
        }

        @Override
        public String c() {
            return "VectorCompose";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13821b.class);
        }

        @Override
        public String e() {
            return "Vector";
        }

        @Override
        public String f() {
            return "Vector Compose";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public C13821b() {
        C c10 = C.NUMBER;
        this.f92866c = new ShaderGraphSlot[]{new ShaderGraphSlot("X", c10), new ShaderGraphSlot("Y", c10), new ShaderGraphSlot(Signature.SIG_BOOLEAN, c10), new ShaderGraphSlot(ExifInterface.LONGITUDE_WEST, c10)};
        this.f92867d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", C.FLOAT4)};
        this.serializedNodeType = "VectorCompose";
    }

    @Override
    public C D(int index, z resolver) {
        return C.FLOAT4;
    }

    @Override
    public void h(g context, w stage) {
        C c10 = C.NUMBER;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        String g12 = context.g(this, 2, stage, c10);
        String g13 = context.g(this, 3, stage, c10);
        context.h(stage, context.c(this, 0, stage, C.FLOAT4) + " = float4(" + g10 + ", " + g11 + ", " + g12 + ", " + g13 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92866c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92867d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Vector Compose";
    }
}
