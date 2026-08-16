package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import C5.b;
import F5.c;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.B;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.t;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.tonyodev.fetch2core.server.FileRequest;
import java.util.List;
import org.eclipse.jdt.core.Signature;

public class WaveTextureNode extends ShaderGraphNode implements B {

    public static final String f81215e = "WaveTexture";

    public final ShaderGraphSlot[] f81216c;

    public final ShaderGraphSlot[] f81217d;

    @Expose
    public g waveType = g.BANDS;

    @Expose
    public e direction = e.X;

    @Expose
    public f waveProfile = f.SAW;

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new WaveTextureNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return WaveTextureNode.class;
        }

        @Override
        public String c() {
            return WaveTextureNode.f81215e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, WaveTextureNode.class);
        }

        @Override
        public String e() {
            return "Noise";
        }

        @Override
        public String f() {
            return "Wave";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b extends c.n0<g> {
        public b() {
        }

        @Override
        public void a() {
            WaveTextureNode.this.B();
        }

        @Override
        public void set(g value) {
            WaveTextureNode waveTextureNode = WaveTextureNode.this;
            if (value == null) {
                value = g.BANDS;
            }
            waveTextureNode.waveType = value;
            waveTextureNode.B();
        }

        @Override
        public String c(g enumObject) {
            if (enumObject == null) {
                enumObject = g.BANDS;
            }
            return enumObject.b();
        }
    }

    public class c extends c.n0<e> {
        public c() {
        }

        @Override
        public void a() {
            WaveTextureNode.this.B();
        }

        @Override
        public void set(e value) {
            WaveTextureNode waveTextureNode = WaveTextureNode.this;
            if (value == null) {
                e eVar = waveTextureNode.direction;
                value = e.X;
            }
            waveTextureNode.direction = value;
            waveTextureNode.B();
        }

        @Override
        public String c(e enumObject) {
            if (enumObject == null) {
                e eVar = WaveTextureNode.this.direction;
                enumObject = e.X;
            }
            return enumObject.b();
        }
    }

    public class d extends c.n0<f> {
        public d() {
        }

        @Override
        public void a() {
            WaveTextureNode.this.B();
        }

        @Override
        public void set(f value) {
            WaveTextureNode waveTextureNode = WaveTextureNode.this;
            if (value == null) {
                value = f.SIN;
            }
            waveTextureNode.waveProfile = value;
            waveTextureNode.B();
        }

        @Override
        public String c(f enumObject) {
            if (enumObject == null) {
                enumObject = f.SIN;
            }
            return enumObject.b();
        }
    }

    public enum e {
        X("X"),
        Y("Y"),
        Z(Signature.SIG_BOOLEAN),
        DIAGONAL_SPHERICAL("Diagonal/Spherical");

        private final String displayName;

        e(String displayName) {
            this.displayName = displayName;
        }

        public String b() {
            return this.displayName;
        }
    }

    public enum f {
        SIN("Sine"),
        SAW("Saw"),
        TRI("Triangle");

        private final String displayName;

        f(String displayName) {
            this.displayName = displayName;
        }

        public String b() {
            return this.displayName;
        }
    }

    public enum g {
        BANDS("Bands"),
        RINGS("Rings");

        private final String displayName;

        g(String displayName) {
            this.displayName = displayName;
        }

        public String b() {
            return this.displayName;
        }
    }

    static {
        p.a(new a());
    }

    public WaveTextureNode() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("Vector", C.FLOAT3);
        C c10 = C.NUMBER;
        this.f81216c = new ShaderGraphSlot[]{shaderGraphSlot, new ShaderGraphSlot("Scale", c10), new ShaderGraphSlot("Distortion", c10), new ShaderGraphSlot("Detail", c10), new ShaderGraphSlot("Detail Scale", c10), new ShaderGraphSlot("Detail Roughness", c10), new ShaderGraphSlot("Phase Offset", c10)};
        this.f81217d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, C.FLOAT4), new ShaderGraphSlot("Fac", c10)};
        this.serializedNodeType = f81215e;
    }

    @Override
    public String d(int inputIndex, C desiredType) {
        switch (inputIndex) {
            case 0:
                return "float3(getUV0(), 0.0)";
            case 1:
                return "1.2";
            case 2:
                return "12.0";
            case 3:
                return "2.15";
            case 4:
                return "1.05";
            case 5:
                return Dd.c.f5125q;
            case 6:
                return "4.1";
            default:
                return null;
        }
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, w stage) {
        String str;
        String str2;
        context.f(stage, t.b("perlin.glsl"));
        context.f(stage, t.b("wave.glsl"));
        String g10 = context.g(this, 0, stage, C.FLOAT3);
        C c10 = C.NUMBER;
        String g11 = context.g(this, 1, stage, c10);
        String g12 = context.g(this, 2, stage, c10);
        String g13 = context.g(this, 3, stage, c10);
        String g14 = context.g(this, 4, stage, c10);
        String g15 = context.g(this, 5, stage, c10);
        String g16 = context.g(this, 6, stage, c10);
        String c11 = context.c(this, 0, stage, C.FLOAT4);
        String c12 = context.c(this, 1, stage, c10);
        String str3 = "((" + ("(" + g10 + ") * (" + g11 + ")") + ") + 0.000001) * 0.999999";
        g gVar = this.waveType;
        if (gVar == null) {
            gVar = g.BANDS;
        }
        if (gVar == g.BANDS) {
            e eVar = this.direction;
            if (eVar == null) {
                eVar = e.X;
            }
            int ordinal = eVar.ordinal();
            if (ordinal == 1) {
                str = "(" + str3 + ").y * 20.0";
            } else if (ordinal == 2) {
                str = "(" + str3 + ").z * 20.0";
            } else if (ordinal != 3) {
                str = "(" + str3 + ").x * 20.0";
            } else {
                str = "((" + str3 + ").x + (" + str3 + ").y + (" + str3 + ").z) * 10.0";
            }
        } else {
            e eVar2 = this.direction;
            if (eVar2 == null) {
                eVar2 = e.X;
            }
            int ordinal2 = eVar2.ordinal();
            if (ordinal2 == 1) {
                str = "length((" + str3 + ") * float3(1.0, 0.0, 1.0)) * 20.0";
            } else if (ordinal2 == 2) {
                str = "length((" + str3 + ") * float3(1.0, 1.0, 0.0)) * 20.0";
            } else if (ordinal2 != 3) {
                str = "length((" + str3 + ") * float3(0.0, 1.0, 1.0)) * 20.0";
            } else {
                str = "length(" + str3 + ") * 20.0";
            }
        }
        String str4 = "(" + ("(" + str + ") + (" + g16 + ")") + ") + (" + g12 + ") * (" + ("sg_wave_detail_noise(" + str3 + " * (" + g14 + "), " + g13 + ", " + g14 + ", " + g15 + ")") + ")";
        f fVar = this.waveProfile;
        if (fVar == null) {
            fVar = f.SIN;
        }
        int ordinal3 = fVar.ordinal();
        if (ordinal3 == 1) {
            str2 = "sg_wave_profile_saw(" + str4 + ")";
        } else if (ordinal3 != 2) {
            str2 = "sg_wave_profile_sin(" + str4 + ")";
        } else {
            str2 = "sg_wave_profile_tri(" + str4 + ")";
        }
        context.h(stage, c12 + " = " + str2 + ";");
        context.h(stage, c11 + " = float4(" + c12 + ", " + c12 + ", " + c12 + ", 1.0);");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f81216c;
    }

    @Override
    public List<C5.b> p(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        g gVar = this.waveType;
        b bVar = new b();
        b.a aVar = b.a.SLDropdownWrap;
        steppedArrayList.add(F5.c.j(FileRequest.FIELD_TYPE, g.class, gVar, bVar, aVar));
        steppedArrayList.add(F5.c.j("Direction", e.class, this.direction, new c(), aVar));
        steppedArrayList.add(F5.c.j("Profile", f.class, this.waveProfile, new d(), aVar));
        return steppedArrayList;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81217d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Wave";
    }
}
