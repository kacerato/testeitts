package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import Ic.C2629h;
import Ic.C2632k;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import java.util.function.Predicate;

public abstract class ShaderGraphNode {

    public transient Runnable f81308b;

    @Expose
    public boolean exposeInInspector;

    @Expose
    public String f81309id;

    @Expose
    public String serializedNodeType;

    @Expose
    public float f81310x;

    @Expose
    public float f81311y;

    @Expose
    public String inspectorAttributeName = "Name";

    @Expose
    public List<ShaderGraphInputDefault> inputDefaults = new SteppedArrayList();

    public final ShaderGraphSlot[] f81307a = new ShaderGraphSlot[0];

    public ShaderGraphNode() {
        String str = this.f81309id;
        if (str == null || str.isEmpty()) {
            this.f81309id = Tc.b.L();
        }
    }

    public static boolean A(ShaderGraphInputDefault shaderGraphInputDefault, ShaderGraphInputDefault shaderGraphInputDefault2) {
        return shaderGraphInputDefault2 != null && shaderGraphInputDefault2.inputIndex == shaderGraphInputDefault.inputIndex;
    }

    public void B() {
        Runnable runnable = this.f81308b;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void C(BuildDictionary dictionary) {
        for (int i10 = 0; i10 < this.inputDefaults.size(); i10++) {
            ShaderGraphInputDefault shaderGraphInputDefault = this.inputDefaults.get(i10);
            if (shaderGraphInputDefault != null) {
                shaderGraphInputDefault.i(dictionary);
            }
        }
    }

    public C D(int index, z resolver) {
        ShaderGraphSlot[] q10 = q();
        return (q10 == null || index < 0 || index >= q10.length) ? C.NUMBER : q10[index].type;
    }

    public void E(Runnable editorRefreshListener) {
        this.f81308b = editorRefreshListener;
    }

    public void F(final ShaderGraphInputDefault def) {
        if (def == null) {
            return;
        }
        if (this.inputDefaults == null) {
            this.inputDefaults = new SteppedArrayList();
        }
        this.inputDefaults.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean A10;
                A10 = ShaderGraphNode.A(ShaderGraphInputDefault.this, (ShaderGraphInputDefault) obj);
                return A10;
            }
        });
        this.inputDefaults.add(def);
    }

    public void G(String value) {
        if (value == null) {
            value = "";
        }
        this.inspectorAttributeName = value;
    }

    public boolean f() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0023 A[Catch: Exception -> 0x000b, TRY_LEAVE, TryCatch #0 {Exception -> 0x000b, blocks: (B:2:0x0000, B:4:0x0004, B:7:0x0011, B:9:0x0023, B:13:0x000d), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ShaderGraphNode g() {
        ShaderGraphNode c10;
        try {
            String str = this.serializedNodeType;
            if (str != null) {
                if (str.isEmpty()) {
                }
                c10 = p.c(str, X7.a.m().toJsonTree(this).getAsJsonObject());
                if (c10 != null) {
                    c10.f81309id = Tc.b.L();
                }
                return c10;
            }
            str = t();
            c10 = p.c(str, X7.a.m().toJsonTree(this).getAsJsonObject());
            if (c10 != null) {
            }
            return c10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void h(g context, w stage) {
    }

    public C2632k i(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        for (int i10 = 0; i10 < this.inputDefaults.size(); i10++) {
            ShaderGraphInputDefault shaderGraphInputDefault = this.inputDefaults.get(i10);
            if (shaderGraphInputDefault != null) {
                c2632k.f9114a.addAll(shaderGraphInputDefault.b(dependencyRequest).f9114a);
            }
        }
        return c2632k;
    }

    public String j() {
        String str = this.f81309id;
        if (str == null || str.isEmpty()) {
            this.f81309id = Tc.b.L();
        }
        return this.f81309id;
    }

    public ShaderGraphInputDefault k(int inputIndex) {
        List<ShaderGraphInputDefault> list = this.inputDefaults;
        if (list == null) {
            return null;
        }
        for (ShaderGraphInputDefault shaderGraphInputDefault : list) {
            if (shaderGraphInputDefault != null && shaderGraphInputDefault.inputIndex == inputIndex) {
                return shaderGraphInputDefault;
            }
        }
        return null;
    }

    public int l(ShaderGraphData graphData, int uiIndex) {
        return uiIndex;
    }

    public ShaderGraphSlot[] m() {
        return this.f81307a;
    }

    public ShaderGraphSlot[] n(ShaderGraphData graphData) {
        return m();
    }

    public String o(ShaderGraphData graphData) {
        String str = this.inspectorAttributeName;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                return trim;
            }
        }
        return v(graphData);
    }

    public List<C5.b> p(Context context) {
        return null;
    }

    public ShaderGraphSlot[] q() {
        return this.f81307a;
    }

    public ShaderGraphSlot[] r(ShaderGraphData graphData) {
        return q();
    }

    public Vertex.v s() {
        return Vertex.v.SPHERE;
    }

    public String t() {
        return getClass().getSimpleName();
    }

    public abstract w u();

    public abstract String v(ShaderGraphData graphData);

    public boolean w() {
        return false;
    }

    public boolean x() {
        return false;
    }

    public boolean y() {
        return true;
    }

    public boolean z() {
        return false;
    }
}
