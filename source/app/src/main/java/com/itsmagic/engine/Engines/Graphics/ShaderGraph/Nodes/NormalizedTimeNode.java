package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import C5.b;
import D5.h;
import android.content.Context;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.f;
import java.lang.constant.ConstantDescs;
import java.util.List;

public class NormalizedTimeNode extends ShaderGraphNode {

    public static final String f81167e = "NormalizedTime";

    @Expose
    public float speed = 1.0f;

    public transient float f81168c = 0.0f;

    public final ShaderGraphSlot[] f81169d = {new ShaderGraphSlot("Normalized Time", C.NUMBER)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new NormalizedTimeNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return NormalizedTimeNode.class;
        }

        @Override
        public String c() {
            return NormalizedTimeNode.f81167e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, NormalizedTimeNode.class);
        }

        @Override
        public String e() {
            return "Input/Time";
        }

        @Override
        public String f() {
            return "Normalized Time";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", NormalizedTimeNode.this.speed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                NormalizedTimeNode normalizedTimeNode = NormalizedTimeNode.this;
                normalizedTimeNode.speed = variable.float_value;
                normalizedTimeNode.B();
            }
        }
    }

    static {
        p.a(new a());
    }

    public NormalizedTimeNode() {
        this.serializedNodeType = f81167e;
        this.exposeInInspector = false;
    }

    public void I(float deltaTime) {
        float f10 = this.f81168c + (deltaTime * this.speed);
        this.f81168c = f10;
        this.f81168c = f10 - ((float) Math.floor(f10));
    }

    public float J() {
        return this.f81168c;
    }

    public String K() {
        String Q10 = Tc.b.Q(j(), ConstantDescs.DEFAULT_NAME);
        if (Q10 == null || Q10.isEmpty()) {
            Q10 = "node";
        }
        return "sg_normalized_time_" + Q10;
    }

    @Override
    public void h(g context, w stage) {
        String K10 = K();
        context.i(new f(MaterialBuilder.r.FLOAT, MaterialBuilder.g.HIGH, K10));
        context.d(this, 0, stage, "materialParams." + K10, C.NUMBER);
    }

    @Override
    public List<C5.b> p(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new b(), "Speed", b.a.SLFloat));
        return steppedArrayList;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81169d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Normalized Time";
    }

    @Override
    public boolean y() {
        return false;
    }
}
