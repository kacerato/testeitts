package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import C5.b;
import F5.c;
import android.content.Context;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.B;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.t;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.tonyodev.fetch2core.server.FileRequest;
import java.util.List;

public class MusgraveNode extends ShaderGraphNode implements B {

    public static final String f81163e = "Musgrave";

    public final ShaderGraphSlot[] f81164c;

    public final ShaderGraphSlot[] f81165d;

    @Expose
    public c musgraveType = c.FBM;

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new MusgraveNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return MusgraveNode.class;
        }

        @Override
        public String c() {
            return MusgraveNode.f81163e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, MusgraveNode.class);
        }

        @Override
        public String e() {
            return "Noise";
        }

        @Override
        public String f() {
            return MusgraveNode.f81163e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b extends c.n0<c> {
        public b() {
        }

        @Override
        public void a() {
            MusgraveNode.this.B();
        }

        @Override
        public void set(c value) {
            MusgraveNode musgraveNode = MusgraveNode.this;
            if (value == null) {
                value = c.FBM;
            }
            musgraveNode.musgraveType = value;
            musgraveNode.B();
        }

        @Override
        public String c(c enumObject) {
            if (enumObject == null) {
                enumObject = c.FBM;
            }
            return enumObject.b();
        }
    }

    public enum c {
        FBM("fBM"),
        MULTIFRACTAL("Multifractal"),
        HYBRID_MULTIFRACTAL("Hybrid Multifractal"),
        RIDGED_MULTIFRACTAL("Ridged Multifractal"),
        HETERO_TERRAIN("Hetero Terrain");

        private final String displayName;

        c(String displayName) {
            this.displayName = displayName;
        }

        public String b() {
            return this.displayName;
        }
    }

    static {
        p.a(new a());
    }

    public MusgraveNode() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("UV", C.FLOAT2);
        C c10 = C.NUMBER;
        this.f81164c = new ShaderGraphSlot[]{shaderGraphSlot, new ShaderGraphSlot("Scale", c10), new ShaderGraphSlot("Detail", c10), new ShaderGraphSlot("Dimension", c10), new ShaderGraphSlot("Lacunarity", c10), new ShaderGraphSlot("Offset", c10), new ShaderGraphSlot("Gain", c10)};
        this.f81165d = new ShaderGraphSlot[]{new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, c10)};
        this.serializedNodeType = f81163e;
    }

    @Override
    public String d(int inputIndex, C desiredType) {
        switch (inputIndex) {
            case 0:
                return "getUV0()";
            case 1:
                return "1.0";
            case 2:
                return "5.0";
            case 3:
            case 4:
                return "2.0";
            case 5:
            case 6:
                return "1.0";
            default:
                return null;
        }
    }

    @Override
    public void h(g context, w stage) {
        String str;
        context.f(stage, t.b("perlin.glsl"));
        context.f(stage, t.b("musgrave.glsl"));
        String g10 = context.g(this, 0, stage, C.FLOAT2);
        C c10 = C.NUMBER;
        String g11 = context.g(this, 1, stage, c10);
        String g12 = context.g(this, 2, stage, c10);
        String g13 = context.g(this, 3, stage, c10);
        String g14 = context.g(this, 4, stage, c10);
        String g15 = context.g(this, 5, stage, c10);
        String g16 = context.g(this, 6, stage, c10);
        String c11 = context.c(this, 0, stage, c10);
        String str2 = "(" + g10 + ") * (" + g11 + ")";
        c cVar = this.musgraveType;
        if (cVar == null) {
            cVar = c.FBM;
        }
        int ordinal = cVar.ordinal();
        if (ordinal == 1) {
            str = "sg_musgrave_multifractal(" + str2 + ", " + g12 + ", " + g13 + ", " + g14 + ")";
        } else if (ordinal == 2) {
            str = "sg_musgrave_hybrid_multifractal(" + str2 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ", " + g16 + ")";
        } else if (ordinal == 3) {
            str = "sg_musgrave_ridged_multifractal(" + str2 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ", " + g16 + ")";
        } else if (ordinal != 4) {
            str = "sg_musgrave_fbm(" + str2 + ", " + g12 + ", " + g13 + ", " + g14 + ")";
        } else {
            str = "sg_musgrave_hetero_terrain(" + str2 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ", " + g16 + ")";
        }
        context.h(stage, c11 + " = " + str + ";");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f81164c;
    }

    @Override
    public List<C5.b> p(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(F5.c.j(FileRequest.FIELD_TYPE, c.class, this.musgraveType, new b(), b.a.SLDropdownWrap));
        return steppedArrayList;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81165d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f81163e;
    }
}
