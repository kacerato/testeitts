package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import C5.b;
import F5.c;
import N9.a;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.exifinterface.media.ExifInterface;
import cc.C4171b;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.AttributeAccessNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.NormalizedTimeNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawColorNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawCubemapNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat2Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat3Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat4Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawGradientNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawNumberNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawSliderNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawTextureNode;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.EnumC13053a;
import ic.C13659k1;
import ic.C13662l1;
import ic.C13678r;
import ic.C13688w;
import ic.V0;
import ic.y1;
import java.util.ArrayDeque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.Signature;
import wb.C15981c;
import yb.C16165b;

public class ShaderGraphBinder extends ShaderBinder {
    private boolean compiledParametersReady;
    private ShaderGraphData graphData;
    private boolean refreshPending;
    private boolean writeDeltaUniform;
    private boolean writeSmoothDeltaUniform;
    private boolean writeTimeUniform;
    public EnumC13053a blendingMode = EnumC13053a.OPAQUE;

    @Keep
    public final ec.d blendingMode_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            ShaderGraphBinder.this.P();
        }
    };
    private boolean doubleSided = false;

    @Keep
    public final ec.d doubleSided_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            ShaderGraphBinder.this.P();
        }
    };
    private boolean drawInFront = false;

    @Keep
    public final ec.d drawInFront_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            ShaderGraphBinder.this.P();
        }
    };
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.u shadingModel = com.itsmagic.engine.Engines.Graphics.ShaderGraph.u.LIT;

    @Keep
    public final ec.d shadingModel_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            ShaderGraphBinder.this.P();
        }
    };
    public volatile EnumC12816b refractionType = EnumC12816b.NONE;

    @Keep
    public final ec.d refractionType_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            ShaderGraphBinder.this.P();
        }
    };
    private float localWindIntensity = 0.0f;

    @Keep
    public final ec.d localWindIntensity_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            ShaderGraphBinder.this.L0();
        }
    };
    private final HashSet<String> availableUniforms = new HashSet<>();
    private float timeSeconds = 0.0f;
    private float lastDeltaTime = 0.0f;
    private float lastSmoothDeltaTime = 0.0f;
    private final com.itsmagic.engine.Engines.Engine.Modules.a timeUpdateModule = new A(this);

    public static final class A extends com.itsmagic.engine.Engines.Engine.Modules.a {
        public A(ShaderGraphBinder binder) {
            super(binder);
        }

        @Override
        public String c() {
            return "ShaderGraphBinder-Time";
        }

        @Override
        public void l(Object target) {
            if (target instanceof ShaderGraphBinder) {
                ((ShaderGraphBinder) target).j1();
            }
        }
    }

    public class RunnableC12814a implements Runnable {

        public class RunnableC1490a implements Runnable {
            public RunnableC1490a() {
            }

            @Override
            public void run() {
                ShaderGraphBinder.this.refreshPending = false;
                ShaderGraphBinder.this.V0();
            }
        }

        public RunnableC12814a() {
        }

        @Override
        public void run() {
            if (Qb.a.k()) {
                K8.a.h(1, new RunnableC1490a());
            } else {
                ShaderGraphBinder.this.refreshPending = false;
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class b implements D5.h {

        public final RawCubemapNode f81230a;

        public b(final RawCubemapNode val$n) {
            this.f81230a = val$n;
        }

        @Override
        public Variable get() {
            String str = this.f81230a.cubemapFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81230a.J(variable.str_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class c implements a.b {
        public c() {
        }

        @Override
        public void a() {
            ShaderGraphBinder.this.V0();
        }
    }

    public class d implements D5.h {

        public final ShaderGraphAttribute f81233a;

        public d(final ShaderGraphAttribute val$a) {
            this.f81233a = val$a;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f81233a.number + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81233a.number = variable.float_value;
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class e implements D5.h {

        public final ShaderGraphAttribute f81235a;

        public e(final ShaderGraphAttribute val$a) {
            this.f81235a = val$a;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f81235a.number + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81235a.number = variable.float_value;
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class f implements D5.h {

        public final ShaderGraphAttribute f81237a;

        public f(final ShaderGraphAttribute val$a) {
            this.f81237a = val$a;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f81237a.f81227v4 != null) {
                str = this.f81237a.f81227v4.getX() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81237a.f81227v4.n(variable.float_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class g implements D5.h {

        public final ShaderGraphAttribute f81239a;

        public g(final ShaderGraphAttribute val$a) {
            this.f81239a = val$a;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f81239a.f81227v4 != null) {
                str = this.f81239a.f81227v4.getY() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81239a.f81227v4.o(variable.float_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class h implements D5.h {

        public final ShaderGraphAttribute f81241a;

        public h(final ShaderGraphAttribute val$a) {
            this.f81241a = val$a;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f81241a.f81227v4 != null) {
                str = this.f81241a.f81227v4.getZ() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81241a.f81227v4.p(variable.float_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class i implements D5.h {

        public final ShaderGraphAttribute f81243a;

        public i(final ShaderGraphAttribute val$a) {
            this.f81243a = val$a;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f81243a.f81227v4 != null) {
                str = this.f81243a.f81227v4.f() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81243a.f81227v4.m(variable.float_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class j implements D5.h {

        public final ShaderGraphAttribute f81245a;

        public j(final ShaderGraphAttribute val$a) {
            this.f81245a = val$a;
        }

        @Override
        public Variable get() {
            ShaderGraphAttribute shaderGraphAttribute = this.f81245a;
            if (shaderGraphAttribute.f81227v4 == null) {
                shaderGraphAttribute.f81227v4 = new Vector4();
            }
            return new Variable("", new ColorINT(this.f81245a.f81227v4.f(), this.f81245a.f81227v4.getX(), this.f81245a.f81227v4.getY(), this.f81245a.f81227v4.getZ()));
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.color_value == null) {
                return;
            }
            ShaderGraphAttribute shaderGraphAttribute = this.f81245a;
            if (shaderGraphAttribute.f81227v4 == null) {
                shaderGraphAttribute.f81227v4 = new Vector4();
            }
            this.f81245a.f81227v4.n(variable.color_value.w());
            this.f81245a.f81227v4.o(variable.color_value.u());
            this.f81245a.f81227v4.p(variable.color_value.s());
            this.f81245a.f81227v4.m(variable.color_value.r());
            ShaderGraphBinder.this.V0();
        }
    }

    public class k implements D5.h {

        public final ShaderGraphAttribute f81247a;

        public k(final ShaderGraphAttribute val$a) {
            this.f81247a = val$a;
        }

        @Override
        public Variable get() {
            String str = this.f81247a.file;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ShaderGraphAttribute shaderGraphAttribute = this.f81247a;
                String str = variable.str_value;
                if (str == null) {
                    str = "";
                }
                shaderGraphAttribute.file = str;
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class l implements D5.h {

        public final ShaderGraphAttribute f81249a;

        public l(final ShaderGraphAttribute val$a) {
            this.f81249a = val$a;
        }

        @Override
        public Variable get() {
            String str = this.f81249a.file;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ShaderGraphAttribute shaderGraphAttribute = this.f81249a;
                String str = variable.str_value;
                if (str == null) {
                    str = "";
                }
                shaderGraphAttribute.file = str;
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class m extends c.n0<EnumC13053a> {

        public final ShaderBinder.b f81251a;

        public class a implements Runnable {

            public final EnumC13053a f81253b;

            public a(final EnumC13053a val$value) {
                this.f81253b = val$value;
            }

            @Override
            public void run() {
                ShaderGraphBinder shaderGraphBinder = ShaderGraphBinder.this;
                shaderGraphBinder.blendingMode = this.f81253b;
                shaderGraphBinder.P();
            }
        }

        public m(final ShaderBinder.b val$listener) {
            this.f81251a = val$listener;
        }

        @Override
        public void a() {
            ShaderBinder.b bVar = this.f81251a;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new a(value));
        }
    }

    public class n extends c.n0<com.itsmagic.engine.Engines.Graphics.ShaderGraph.u> {

        public final ShaderBinder.b f81255a;

        public class a implements Runnable {

            public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.u f81257b;

            public a(final com.itsmagic.engine.Engines.Graphics.ShaderGraph.u val$value) {
                this.f81257b = val$value;
            }

            @Override
            public void run() {
                ShaderGraphSettings shaderGraphSettings;
                ShaderGraphBinder shaderGraphBinder = ShaderGraphBinder.this;
                shaderGraphBinder.shadingModel = this.f81257b;
                ShaderGraphData shaderGraphData = shaderGraphBinder.graphData;
                if (shaderGraphData == null && ShaderGraphBinder.this.J() != null) {
                    shaderGraphData = ShaderGraphBinder.this.J().C();
                }
                if (shaderGraphData != null && (shaderGraphSettings = shaderGraphData.settings) != null) {
                    shaderGraphSettings.shadingModel = this.f81257b;
                    shaderGraphData.k();
                }
                ShaderGraphBinder.this.P();
            }
        }

        public n(final ShaderBinder.b val$listener) {
            this.f81255a = val$listener;
        }

        @Override
        public void a() {
            ShaderBinder.b bVar = this.f81255a;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void set(com.itsmagic.engine.Engines.Graphics.ShaderGraph.u value) {
            K8.a.I(new a(value));
        }
    }

    public class o implements D5.h {

        public class a implements Runnable {

            public final EnumC12816b f81260b;

            public a(final EnumC12816b val$newRefractionType) {
                this.f81260b = val$newRefractionType;
            }

            @Override
            public void run() {
                ShaderGraphSettings shaderGraphSettings;
                ShaderGraphData shaderGraphData = ShaderGraphBinder.this.graphData;
                if (shaderGraphData == null && ShaderGraphBinder.this.J() != null) {
                    shaderGraphData = ShaderGraphBinder.this.J().C();
                }
                Material J10 = ShaderGraphBinder.this.J();
                if (shaderGraphData != null && (shaderGraphSettings = shaderGraphData.settings) != null) {
                    shaderGraphSettings.refractionType = this.f81260b;
                    shaderGraphData.k();
                }
                if (J10 != null) {
                    SerializableShaderEntry.o(SerializableShaderEntry.e("refractionType", SerializableShaderEntry.f81157k, J10.B()), this.f81260b.name());
                }
                ShaderGraphBinder.this.P();
            }
        }

        public o() {
        }

        @Override
        public Variable get() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ShaderGraphBinder.this.refractionType == EnumC12816b.THIN);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            EnumC12816b enumC12816b = (variable == null || !variable.booolean_value.booleanValue()) ? EnumC12816b.NONE : EnumC12816b.THIN;
            ShaderGraphBinder.this.refractionType = enumC12816b;
            K8.a.I(new a(enumC12816b));
        }
    }

    public class p implements c.o0 {

        public final String f81262a;

        public final String f81263b;

        public final ShaderBinder.b f81264c;

        public class a implements D5.h {

            public class RunnableC1491a implements Runnable {

                public final Variable f81267b;

                public RunnableC1491a(final Variable val$variable) {
                    this.f81267b = val$variable;
                }

                @Override
                public void run() {
                    ShaderGraphBinder.this.e1(Nc.b.G(this.f81267b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", ShaderGraphBinder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1491a(variable));
                }
            }
        }

        public p(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f81262a = val$objectUID;
            this.f81263b = val$componentUID;
            this.f81264c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            ShaderBinder.b bVar;
            C5.b bVar2 = new C5.b(new a(), "Intensity", b.a.SLFloat);
            if (this.f81262a != null && this.f81263b != null && (bVar = this.f81264c) != null && bVar.b() != null) {
                bVar2.f(this.f81262a, this.f81264c.b(), "localWindIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar2);
            return entries;
        }
    }

    public class q implements c.o0 {

        public class a implements D5.h {

            public class RunnableC1492a implements Runnable {

                public final Variable f81271b;

                public RunnableC1492a(final Variable val$variable) {
                    this.f81271b = val$variable;
                }

                @Override
                public void run() {
                    ShaderGraphBinder.this.doubleSided = this.f81271b.booolean_value.booleanValue();
                    ShaderGraphBinder.this.P();
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", ShaderGraphBinder.this.doubleSided + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1492a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f81274b;

                public a(final Variable val$variable) {
                    this.f81274b = val$variable;
                }

                @Override
                public void run() {
                    ShaderGraphBinder.this.drawInFront = this.f81274b.booolean_value.booleanValue();
                    ShaderGraphBinder.this.P();
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", ShaderGraphBinder.this.drawInFront + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public q() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> colapsableEntries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLBoolean;
            colapsableEntries.add(new C5.b(aVar, "Double sided", aVar2));
            colapsableEntries.add(new C5.b(new b(), "Draw in front", aVar2));
            return colapsableEntries;
        }
    }

    public static class r {

        public static final int[] f81276a;

        public static final int[] f81277b;

        static {
            int[] iArr = new int[C.values().length];
            f81277b = iArr;
            try {
                iArr[C.FLOAT2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81277b[C.FLOAT3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81277b[C.FLOAT4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81277b[C.COLOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f81277b[C.TEXTURE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f81277b[C.CUBEMAP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f81277b[C.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f81277b[C.NUMBER01.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[EnumC12816b.values().length];
            f81276a = iArr2;
            try {
                iArr2[EnumC12816b.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f81276a[EnumC12816b.SOLID.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f81276a[EnumC12816b.THIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public class s implements D5.h {

        public final RawNumberNode f81278a;

        public s(final RawNumberNode val$n) {
            this.f81278a = val$n;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f81278a.value + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81278a.value = variable.float_value;
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class t implements D5.h {

        public final RawSliderNode f81280a;

        public t(final RawSliderNode val$n) {
            this.f81280a = val$n;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f81280a.value + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81280a.value = variable.float_value;
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class u implements D5.h {

        public final RawFloat4Node f81282a;

        public u(final RawFloat4Node val$n) {
            this.f81282a = val$n;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f81282a.value != null) {
                str = this.f81282a.value.getX() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81282a.value.n(variable.float_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class v implements D5.h {

        public final RawFloat4Node f81284a;

        public v(final RawFloat4Node val$n) {
            this.f81284a = val$n;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f81284a.value != null) {
                str = this.f81284a.value.getY() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81284a.value.o(variable.float_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class w implements D5.h {

        public final RawFloat4Node f81286a;

        public w(final RawFloat4Node val$n) {
            this.f81286a = val$n;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f81286a.value != null) {
                str = this.f81286a.value.getZ() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81286a.value.p(variable.float_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class x implements D5.h {

        public final RawFloat4Node f81288a;

        public x(final RawFloat4Node val$n) {
            this.f81288a = val$n;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f81288a.value != null) {
                str = this.f81288a.value.f() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81288a.value.m(variable.float_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public class y implements D5.h {

        public final RawColorNode f81290a;

        public y(final RawColorNode val$n) {
            this.f81290a = val$n;
        }

        @Override
        public Variable get() {
            ColorINT colorINT = this.f81290a.value;
            return new Variable("", colorINT != null ? colorINT.clone() : new ColorINT(1.0f, 1.0f, 1.0f, 1.0f));
        }

        @Override
        public void set(Variable variable) {
            ColorINT colorINT;
            if (variable == null || (colorINT = variable.color_value) == null) {
                return;
            }
            this.f81290a.value = colorINT.clone();
            ShaderGraphBinder.this.V0();
        }
    }

    public class z implements D5.h {

        public final RawTextureNode f81292a;

        public z(final RawTextureNode val$n) {
            this.f81292a = val$n;
        }

        @Override
        public Variable get() {
            String str = this.f81292a.textureFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f81292a.J(variable.str_value);
                ShaderGraphBinder.this.V0();
            }
        }
    }

    public static com.itsmagic.engine.Engines.Engine.Animation.c I0(ShaderGraphAttribute attribute) {
        C c10;
        if (attribute == null || (c10 = attribute.type) == null) {
            return null;
        }
        int i10 = r.f81277b[c10.ordinal()];
        if (i10 == 1) {
            return com.itsmagic.engine.Engines.Engine.Animation.c.VEC2;
        }
        if (i10 == 2) {
            return com.itsmagic.engine.Engines.Engine.Animation.c.VEC3;
        }
        if (i10 == 3 || i10 == 4) {
            return com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
        }
        if (i10 == 7 || i10 == 8) {
            return com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        }
        return null;
    }

    public void L0() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    public static String U0(String value) {
        if (value == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < value.length(); i10++) {
            char charAt = value.charAt(i10);
            if (Character.isLetterOrDigit(charAt)) {
                sb2.append(Character.toLowerCase(charAt));
            }
        }
        return sb2.toString();
    }

    public static String X0(String file) {
        if (file == null) {
            file = "";
        }
        if (file.isEmpty()) {
            return "sgp_cube_0";
        }
        return "sgp_cube_" + Math.abs(file.hashCode());
    }

    public static String Y0(String file) {
        if (file == null) {
            file = "";
        }
        if (file.isEmpty()) {
            return "sgp_tex_0";
        }
        return "sgp_tex_" + Math.abs(file.hashCode());
    }

    public static MaterialBuilder.k h1(EnumC12816b value) {
        int i10;
        if (value == null || (i10 = r.f81276a[value.ordinal()]) == 1) {
            return null;
        }
        return i10 != 2 ? MaterialBuilder.k.THIN : MaterialBuilder.k.SOLID;
    }

    @Override
    public Vector2 A(String entry) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            return super.A(entry);
        }
        if (R02.type != C.FLOAT2) {
            throw Q0(entry, SerializableShaderEntry.f81150d);
        }
        if (R02.f81225v2 == null) {
            R02.f81225v2 = new Vector2();
        }
        return R02.f81225v2;
    }

    @Override
    public ColorINT B(String entryName) {
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 != null) {
            C c10 = R02.type;
            if (c10 == C.FLOAT4 || c10 == C.COLOR) {
                if (R02.f81227v4 == null) {
                    R02.f81227v4 = new Vector4();
                }
                ColorINT colorINT = new ColorINT(R02.f81227v4.getX(), R02.f81227v4.getY(), R02.f81227v4.getZ());
                colorINT.N(R02.f81227v4.f());
                return colorINT;
            }
            if (c10 == C.FLOAT3) {
                if (R02.f81226v3 == null) {
                    R02.f81226v3 = new Vector3();
                }
                ColorINT colorINT2 = new ColorINT(R02.f81226v3.getX(), R02.f81226v3.getY(), R02.f81226v3.getZ());
                colorINT2.N(1.0f);
                return colorINT2;
            }
        }
        return super.B(entryName);
    }

    @Override
    public float E(String entryName) {
        C c10;
        ShaderGraphAttribute R02 = R0(entryName);
        return (R02 == null || !((c10 = R02.type) == C.NUMBER || c10 == C.NUMBER01)) ? super.E(entryName) : R02.number;
    }

    @Override
    public List<C5.b> H(Context context, ShaderBinder.b listener) {
        String str;
        ShaderGraphSettings shaderGraphSettings;
        int i10;
        List<ShaderGraphAttribute> list;
        String str2;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String c10 = listener != null ? listener.c() : null;
        String d10 = listener != null ? listener.d() : null;
        ShaderGraphData shaderGraphData = this.graphData;
        if (shaderGraphData == null && J() != null) {
            shaderGraphData = J().C();
        }
        if (shaderGraphData != null) {
            shaderGraphData.e();
            int i11 = 0;
            while (true) {
                i10 = 4;
                if (i11 >= shaderGraphData.f81295a.size()) {
                    break;
                }
                ShaderGraphNode shaderGraphNode = shaderGraphData.f81295a.get(i11);
                if (shaderGraphNode != null && shaderGraphNode.exposeInInspector) {
                    if (shaderGraphNode instanceof RawNumberNode) {
                        RawNumberNode rawNumberNode = (RawNumberNode) shaderGraphNode;
                        steppedArrayList.add(new C5.b(new s(rawNumberNode), rawNumberNode.o(shaderGraphData), b.a.SLFloatWrap));
                    } else if (shaderGraphNode instanceof RawSliderNode) {
                        RawSliderNode rawSliderNode = (RawSliderNode) shaderGraphNode;
                        steppedArrayList.add(new C5.b(new t(rawSliderNode), rawSliderNode.o(shaderGraphData), b.a.SLFloat01));
                    } else if (shaderGraphNode instanceof RawFloat2Node) {
                        RawFloat2Node rawFloat2Node = (RawFloat2Node) shaderGraphNode;
                        steppedArrayList.add(F5.c.x(rawFloat2Node.o(shaderGraphData), rawFloat2Node.value));
                    } else if (shaderGraphNode instanceof RawFloat3Node) {
                        RawFloat3Node rawFloat3Node = (RawFloat3Node) shaderGraphNode;
                        steppedArrayList.add(F5.c.K(rawFloat3Node.o(shaderGraphData), rawFloat3Node.value));
                    } else {
                        if (shaderGraphNode instanceof RawFloat4Node) {
                            RawFloat4Node rawFloat4Node = (RawFloat4Node) shaderGraphNode;
                            C5.b bVar = new C5.b(rawFloat4Node.o(shaderGraphData), b.a.Vector, new C5.b[4]);
                            C5.b[] bVarArr = bVar.f2081p;
                            u uVar = new u(rawFloat4Node);
                            str2 = d10;
                            b.a aVar = b.a.SLFloatWrap;
                            bVarArr[0] = new C5.b(uVar, "X", aVar);
                            bVar.f2081p[1] = new C5.b(new v(rawFloat4Node), "Y", aVar);
                            bVar.f2081p[2] = new C5.b(new w(rawFloat4Node), Signature.SIG_BOOLEAN, aVar);
                            bVar.f2081p[3] = new C5.b(new x(rawFloat4Node), ExifInterface.LONGITUDE_WEST, aVar);
                            steppedArrayList.add(bVar);
                        } else {
                            str2 = d10;
                            if (shaderGraphNode instanceof RawColorNode) {
                                RawColorNode rawColorNode = (RawColorNode) shaderGraphNode;
                                steppedArrayList.add(new C5.b(new y(rawColorNode), rawColorNode.o(shaderGraphData), b.a.Color));
                            } else if (shaderGraphNode instanceof RawTextureNode) {
                                RawTextureNode rawTextureNode = (RawTextureNode) shaderGraphNode;
                                steppedArrayList.add(new C5.b(new z(rawTextureNode), rawTextureNode.o(shaderGraphData), b.a.Texture));
                            } else if (shaderGraphNode instanceof RawCubemapNode) {
                                RawCubemapNode rawCubemapNode = (RawCubemapNode) shaderGraphNode;
                                steppedArrayList.add(new C5.b(new b(rawCubemapNode), rawCubemapNode.o(shaderGraphData), b.a.CubemapOrGallery));
                            } else if (shaderGraphNode instanceof RawGradientNode) {
                                RawGradientNode rawGradientNode = (RawGradientNode) shaderGraphNode;
                                steppedArrayList.add(N9.a.b(rawGradientNode.o(shaderGraphData), rawGradientNode.gradient, context, new c()));
                                i11++;
                                d10 = str2;
                            }
                        }
                        i11++;
                        d10 = str2;
                    }
                }
                str2 = d10;
                i11++;
                d10 = str2;
            }
            str = d10;
            ShaderGraphSettings shaderGraphSettings2 = shaderGraphData.settings;
            if (shaderGraphSettings2 != null && (list = shaderGraphSettings2.attributes) != null) {
                for (ShaderGraphAttribute shaderGraphAttribute : list) {
                    if (shaderGraphAttribute != null) {
                        String str3 = shaderGraphAttribute.name;
                        if (str3 == null) {
                            str3 = "Attribute";
                        }
                        C c11 = shaderGraphAttribute.type;
                        if (c11 == C.NUMBER) {
                            steppedArrayList.add(new C5.b(new d(shaderGraphAttribute), str3, b.a.SLFloatWrap));
                        } else if (c11 == C.NUMBER01) {
                            steppedArrayList.add(new C5.b(new e(shaderGraphAttribute), str3, b.a.SLFloat01));
                        } else if (c11 == C.FLOAT2) {
                            steppedArrayList.add(F5.c.x(str3, shaderGraphAttribute.f81225v2));
                        } else if (c11 == C.FLOAT3) {
                            steppedArrayList.add(F5.c.K(str3, shaderGraphAttribute.f81226v3));
                        } else {
                            if (c11 == C.FLOAT4) {
                                C5.b bVar2 = new C5.b(str3, b.a.Vector, new C5.b[i10]);
                                C5.b[] bVarArr2 = bVar2.f2081p;
                                f fVar = new f(shaderGraphAttribute);
                                b.a aVar2 = b.a.SLFloatWrap;
                                bVarArr2[0] = new C5.b(fVar, "X", aVar2);
                                bVar2.f2081p[1] = new C5.b(new g(shaderGraphAttribute), "Y", aVar2);
                                bVar2.f2081p[2] = new C5.b(new h(shaderGraphAttribute), Signature.SIG_BOOLEAN, aVar2);
                                bVar2.f2081p[3] = new C5.b(new i(shaderGraphAttribute), ExifInterface.LONGITUDE_WEST, aVar2);
                                steppedArrayList.add(bVar2);
                            } else if (c11 == C.COLOR) {
                                steppedArrayList.add(new C5.b(new j(shaderGraphAttribute), str3, b.a.Color));
                            } else if (c11 == C.TEXTURE) {
                                steppedArrayList.add(new C5.b(new k(shaderGraphAttribute), str3, b.a.Texture));
                            } else if (c11 == C.CUBEMAP) {
                                steppedArrayList.add(new C5.b(new l(shaderGraphAttribute), str3, b.a.CubemapOrGallery));
                            }
                            i10 = 4;
                        }
                        i10 = 4;
                    }
                }
            }
        } else {
            str = d10;
        }
        steppedArrayList.add(F5.c.i("blend", EnumC13053a.class, this.blendingMode, new m(listener)));
        steppedArrayList.add(F5.c.i("Shading", com.itsmagic.engine.Engines.Graphics.ShaderGraph.u.class, this.shadingModel, new n(listener)));
        steppedArrayList.add(new C5.b(new o(), "Refraction", b.a.SLBoolean));
        if (shaderGraphData != null && (shaderGraphSettings = shaderGraphData.settings) != null && !shaderGraphSettings.isPostProcessing) {
            steppedArrayList.add(F5.c.e("Wind effect", new p(str, c10, listener)));
        }
        steppedArrayList.add(F5.c.e("Others", new q()));
        return steppedArrayList;
    }

    @Override
    public int I(String entryName) {
        C c10;
        ShaderGraphAttribute R02 = R0(entryName);
        return (R02 == null || !((c10 = R02.type) == C.NUMBER || c10 == C.NUMBER01)) ? super.I(entryName) : (int) R02.number;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void J0(ShaderGraphData shaderGraphData, HashSet<String> hashSet) {
        ShaderGraphSettings shaderGraphSettings;
        FilamentMaterial D10;
        String str;
        if (shaderGraphData == null || (shaderGraphSettings = shaderGraphData.settings) == null || shaderGraphSettings.attributes == null || (D10 = D()) == null) {
            return;
        }
        for (ShaderGraphAttribute shaderGraphAttribute : shaderGraphData.settings.attributes) {
            if (shaderGraphAttribute != null && (str = shaderGraphAttribute.f81224id) != null && hashSet.contains(str)) {
                String a10 = shaderGraphAttribute.a();
                if (T0(a10)) {
                    try {
                        ub.g gVar = null;
                        r4 = null;
                        FileCubemap fileCubemap = null;
                        gVar = null;
                        switch (r.f81277b[shaderGraphAttribute.type.ordinal()]) {
                            case 1:
                                Vector2 vector2 = shaderGraphAttribute.f81225v2;
                                D10.y(a10, vector2.f79838x, vector2.f79839y);
                                continue;
                            case 2:
                                D10.B(a10, shaderGraphAttribute.f81226v3.getX(), shaderGraphAttribute.f81226v3.getY(), shaderGraphAttribute.f81226v3.getZ());
                                continue;
                            case 3:
                            case 4:
                                D10.E(a10, shaderGraphAttribute.f81227v4.getX(), shaderGraphAttribute.f81227v4.getY(), shaderGraphAttribute.f81227v4.getZ(), shaderGraphAttribute.f81227v4.f());
                                continue;
                            case 5:
                                String str2 = shaderGraphAttribute.file;
                                if (str2 != null && !str2.isEmpty()) {
                                    gVar = C16165b.u(shaderGraphAttribute.file);
                                }
                                if (ub.p.L(gVar)) {
                                    gVar.f(D10, a10);
                                    break;
                                } else {
                                    ub.p pVar = C16165b.f130163i;
                                    if (pVar != null) {
                                        pVar.f(D10, a10);
                                        break;
                                    } else {
                                        continue;
                                    }
                                }
                                break;
                            case 6:
                                String str3 = shaderGraphAttribute.file;
                                if (str3 != null && !str3.isEmpty()) {
                                    fileCubemap = C15981c.m(shaderGraphAttribute.file);
                                }
                                if (fileCubemap != null) {
                                    if (fileCubemap.a() != null) {
                                        D10.p(a10, fileCubemap.a());
                                        break;
                                    } else {
                                        break;
                                    }
                                } else {
                                    continue;
                                }
                                break;
                            default:
                                D10.w(a10, shaderGraphAttribute.number);
                                continue;
                        }
                    } catch (Throwable unused) {
                    }
                }
                while (r8.hasNext()) {
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void K0(ShaderGraphData shaderGraphData, List<String> list) {
        FilamentMaterial D10;
        List<ShaderGraphInputDefault> list2;
        if (shaderGraphData == null || list == null || list.isEmpty() || (D10 = D()) == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (ShaderGraphNode shaderGraphNode : shaderGraphData.f81295a) {
            if (shaderGraphNode != null && list.contains(shaderGraphNode.j()) && (list2 = shaderGraphNode.inputDefaults) != null && !list2.isEmpty()) {
                for (ShaderGraphInputDefault shaderGraphInputDefault : shaderGraphNode.inputDefaults) {
                    if (shaderGraphInputDefault != null) {
                        C c10 = shaderGraphInputDefault.type;
                        ub.g gVar = null;
                        r6 = null;
                        FileCubemap fileCubemap = null;
                        gVar = null;
                        if (c10 == C.TEXTURE) {
                            String Y02 = Y0(shaderGraphInputDefault.fileIPP);
                            if (hashSet.add("t:" + Y02)) {
                                try {
                                    String str = shaderGraphInputDefault.fileIPP;
                                    if (str != null && !str.isEmpty()) {
                                        gVar = C16165b.u(shaderGraphInputDefault.fileIPP);
                                    }
                                    if (ub.p.L(gVar)) {
                                        gVar.f(D10, Y02);
                                    } else {
                                        ub.p pVar = C16165b.f130163i;
                                        if (pVar != null) {
                                            pVar.f(D10, Y02);
                                        }
                                    }
                                } catch (Throwable unused) {
                                }
                            }
                            while (r2.hasNext()) {
                            }
                        } else if (c10 == C.CUBEMAP) {
                            String X02 = X0(shaderGraphInputDefault.fileIPP);
                            if (hashSet.add("c:" + X02)) {
                                String str2 = shaderGraphInputDefault.fileIPP;
                                if (str2 != null && !str2.isEmpty()) {
                                    fileCubemap = C15981c.m(shaderGraphInputDefault.fileIPP);
                                }
                                if (fileCubemap != null && fileCubemap.a() != null) {
                                    D10.p(X02, fileCubemap.a());
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public Quaternion L(String entryName) {
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 == null || R02.type != C.FLOAT4) {
            return super.L(entryName);
        }
        if (R02.f81227v4 == null) {
            R02.f81227v4 = new Vector4();
        }
        return new Quaternion(R02.f81227v4.f(), R02.f81227v4.getX(), R02.f81227v4.getY(), R02.f81227v4.getZ());
    }

    public final void M0(boolean advanceTimer) {
        FilamentMaterial D10;
        ShaderGraphData shaderGraphData = this.graphData;
        Material J10 = J();
        if (shaderGraphData == null && J10 != null) {
            shaderGraphData = J10.C();
        }
        if (shaderGraphData == null || shaderGraphData.f81296b || (D10 = D()) == null) {
            return;
        }
        shaderGraphData.e();
        List<String> P02 = P0(shaderGraphData);
        if (P02 == null || P02.isEmpty()) {
            return;
        }
        float f10 = this.lastDeltaTime;
        for (int i10 = 0; i10 < shaderGraphData.f81295a.size(); i10++) {
            ShaderGraphNode shaderGraphNode = shaderGraphData.f81295a.get(i10);
            if ((shaderGraphNode instanceof NormalizedTimeNode) && P02.contains(shaderGraphNode.j())) {
                NormalizedTimeNode normalizedTimeNode = (NormalizedTimeNode) shaderGraphNode;
                if (advanceTimer) {
                    normalizedTimeNode.I(f10);
                }
                String K10 = normalizedTimeNode.K();
                if (T0(K10)) {
                    try {
                        D10.w(K10, normalizedTimeNode.J());
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    @Override
    public Vector2 N(String entryName) {
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 == null || R02.type != C.FLOAT2) {
            return super.N(entryName);
        }
        if (R02.f81225v2 == null) {
            R02.f81225v2 = new Vector2();
        }
        return R02.f81225v2;
    }

    public final void N0() {
        FilamentMaterial D10 = D();
        if (D10 == null || !K8.a.r() || Qb.a.k()) {
            return;
        }
        try {
            if (this.writeTimeUniform) {
                D10.w(com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81392a, this.timeSeconds);
            }
            if (this.writeDeltaUniform) {
                D10.w(com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81393b, this.lastDeltaTime);
            }
            if (this.writeSmoothDeltaUniform) {
                D10.w(com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81394c, this.lastSmoothDeltaTime);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public Vector3 O(String entryName) {
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 == null || R02.type != C.FLOAT3) {
            return super.O(entryName);
        }
        if (R02.f81226v3 == null) {
            R02.f81226v3 = new Vector3();
        }
        return R02.f81226v3;
    }

    public final boolean O0(ShaderGraphAttribute attribute) {
        if (attribute == null) {
            return false;
        }
        Z();
        V0();
        return true;
    }

    public final List<String> P0(ShaderGraphData data) {
        ShaderGraphNode h10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (data == null || data.connections == null || (h10 = data.h()) == null) {
            return steppedArrayList;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(h10.j());
        while (!arrayDeque.isEmpty()) {
            String str = (String) arrayDeque.pop();
            if (!steppedArrayList.contains(str)) {
                steppedArrayList.add(str);
                for (int i10 = 0; i10 < data.connections.size(); i10++) {
                    ShaderGraphNodeConnection shaderGraphNodeConnection = data.connections.get(i10);
                    if (shaderGraphNodeConnection != null && str.equals(shaderGraphNodeConnection.toNodeId)) {
                        arrayDeque.push(shaderGraphNodeConnection.fromNodeId);
                    }
                }
            }
        }
        return steppedArrayList;
    }

    @Override
    public boolean Q() {
        return this.drawInFront;
    }

    public final EntryNotFoundException Q0(String entry, String typeName) {
        return new EntryNotFoundException("Visible ShaderGraph attribute of type " + typeName + " not found with name " + entry);
    }

    public final ShaderGraphAttribute R0(String entry) {
        ShaderGraphSettings shaderGraphSettings;
        String str;
        ShaderGraphData W02 = W0();
        if (W02 != null && (shaderGraphSettings = W02.settings) != null && shaderGraphSettings.attributes != null && entry != null) {
            String U02 = U0(entry);
            for (ShaderGraphAttribute shaderGraphAttribute : W02.settings.attributes) {
                if (shaderGraphAttribute != null && (str = shaderGraphAttribute.name) != null) {
                    if (str.equalsIgnoreCase(entry)) {
                        return shaderGraphAttribute;
                    }
                    if (!U02.isEmpty() && U0(shaderGraphAttribute.name).equals(U02)) {
                        return shaderGraphAttribute;
                    }
                }
            }
        }
        return null;
    }

    public float S0() {
        return this.localWindIntensity;
    }

    public final boolean T0(String name) {
        if (name == null || name.isEmpty()) {
            return false;
        }
        if (this.compiledParametersReady) {
            return this.availableUniforms.contains(name);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void V0() {
        boolean z10;
        AttributeAccessNode attributeAccessNode;
        String str;
        if (D() == null) {
            f1(false);
            return;
        }
        if (!K8.a.r()) {
            Z0();
            return;
        }
        if (Qb.a.k()) {
            Z0();
            return;
        }
        ShaderGraphData shaderGraphData = this.graphData;
        Material J10 = J();
        if (shaderGraphData == null && J10 != null) {
            shaderGraphData = J10.C();
        }
        if (shaderGraphData == null) {
            f1(false);
            return;
        }
        if (shaderGraphData.f81296b) {
            f1(false);
            return;
        }
        shaderGraphData.e();
        List<String> P02 = P0(shaderGraphData);
        HashSet<String> hashSet = new HashSet<>();
        int i10 = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        while (true) {
            z10 = true;
            if (i10 >= shaderGraphData.f81295a.size()) {
                break;
            }
            ShaderGraphNode shaderGraphNode = shaderGraphData.f81295a.get(i10);
            if ((shaderGraphNode instanceof com.itsmagic.engine.Engines.Graphics.ShaderGraph.s) && P02.contains(shaderGraphNode.j())) {
                try {
                    com.itsmagic.engine.Engines.Graphics.ShaderGraph.s sVar = (com.itsmagic.engine.Engines.Graphics.ShaderGraph.s) shaderGraphNode;
                    if (T0(sVar.b())) {
                        sVar.a(D(), J10);
                    }
                } catch (Throwable unused) {
                }
            }
            if (P02.contains(shaderGraphNode.j())) {
                if ((shaderGraphNode instanceof y1) || (shaderGraphNode instanceof C13659k1) || (shaderGraphNode instanceof C13678r) || (shaderGraphNode instanceof V0)) {
                    z11 = true;
                }
                if (shaderGraphNode instanceof NormalizedTimeNode) {
                    z14 = true;
                }
                if (shaderGraphNode instanceof C13688w) {
                    z12 = true;
                }
                if (shaderGraphNode instanceof C13662l1) {
                    z13 = true;
                }
                if ((shaderGraphNode instanceof AttributeAccessNode) && (str = (attributeAccessNode = (AttributeAccessNode) shaderGraphNode).attributeId) != null && !str.isEmpty()) {
                    hashSet.add(attributeAccessNode.attributeId);
                }
            }
            i10++;
        }
        boolean z15 = z11 && T0(com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81392a);
        boolean z16 = z12 && T0(com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81393b);
        boolean z17 = z13 && T0(com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81394c);
        if (!z15 && !z16 && !z17 && !z14) {
            z10 = false;
        }
        g1(z15, z16, z17);
        f1(z10);
        N0();
        M0(false);
        if (!hashSet.isEmpty()) {
            J0(shaderGraphData, hashSet);
        }
        K0(shaderGraphData, P02);
    }

    public final ShaderGraphData W0() {
        ShaderGraphData shaderGraphData = this.graphData;
        if (shaderGraphData == null && J() != null) {
            shaderGraphData = J().C();
        }
        if (shaderGraphData != null) {
            shaderGraphData.e();
        }
        return shaderGraphData;
    }

    @Override
    public void X() {
        f1(false);
    }

    public final void Z0() {
        if (this.refreshPending) {
            return;
        }
        this.refreshPending = true;
        K8.a.B(new RunnableC12814a());
    }

    @Override
    public boolean a0() {
        return true;
    }

    public void a1(List<ec.f> params, List<ec.g> samplers) {
        this.availableUniforms.clear();
        this.compiledParametersReady = true;
        if (params != null) {
            for (int i10 = 0; i10 < params.size(); i10++) {
                ec.f fVar = params.get(i10);
                if (fVar != null && fVar.a() != null && !fVar.a().isEmpty()) {
                    this.availableUniforms.add(fVar.a());
                }
            }
        }
        if (samplers != null) {
            for (int i11 = 0; i11 < samplers.size(); i11++) {
                ec.g gVar = samplers.get(i11);
                if (gVar != null && gVar.b() != null && !gVar.b().isEmpty()) {
                    this.availableUniforms.add(gVar.b());
                }
            }
        }
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        SerializableShaderEntry d10 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d10 != null) {
            this.blendingMode = EnumC13053a.valueOf(SerializableShaderEntry.s(d10));
        }
        SerializableShaderEntry d11 = SerializableShaderEntry.d("doubleSided", "Boolean", dataList);
        if (d11 != null) {
            this.doubleSided = SerializableShaderEntry.a(d11);
        }
        SerializableShaderEntry d12 = SerializableShaderEntry.d("drawInFront", "Boolean", dataList);
        if (d12 != null) {
            this.drawInFront = SerializableShaderEntry.a(d12);
        }
        SerializableShaderEntry d13 = SerializableShaderEntry.d("shadingModel", SerializableShaderEntry.f81157k, dataList);
        if (d13 != null) {
            try {
                this.shadingModel = com.itsmagic.engine.Engines.Graphics.ShaderGraph.u.valueOf(SerializableShaderEntry.s(d13));
            } catch (Exception unused) {
            }
        }
        SerializableShaderEntry d14 = SerializableShaderEntry.d("refractionType", SerializableShaderEntry.f81157k, dataList);
        if (d14 != null) {
            try {
                this.refractionType = EnumC12816b.valueOf(SerializableShaderEntry.s(d14));
            } catch (Exception unused2) {
            }
        }
        SerializableShaderEntry d15 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d15 != null) {
            e1(SerializableShaderEntry.g(d15));
        }
    }

    public void b1(boolean value) {
        this.doubleSided = value;
        Z();
    }

    @Override
    public void c0(List<SerializableShaderEntry> dataList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SerializableShaderEntry e10 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e10);
        SerializableShaderEntry.o(e10, this.blendingMode.toString());
        SerializableShaderEntry e11 = SerializableShaderEntry.e("doubleSided", "Boolean", dataList);
        steppedArrayList.add(e11);
        SerializableShaderEntry.q(e11, this.doubleSided);
        SerializableShaderEntry e12 = SerializableShaderEntry.e("drawInFront", "Boolean", dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.q(e12, this.drawInFront);
        SerializableShaderEntry e13 = SerializableShaderEntry.e("shadingModel", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.o(e13, this.shadingModel.name());
        SerializableShaderEntry e14 = SerializableShaderEntry.e("refractionType", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.o(e14, this.refractionType.name());
        SerializableShaderEntry e15 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.i(e15, this.localWindIntensity);
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    public void c1(boolean value) {
        this.drawInFront = value;
        Z();
    }

    @Override
    public void d0(String entry, boolean value) {
        super.d0(entry, value);
    }

    public void d1(ShaderGraphData graphData) {
        ShaderGraphSettings shaderGraphSettings;
        this.graphData = graphData;
        if (graphData != null && (shaderGraphSettings = graphData.settings) != null) {
            this.shadingModel = shaderGraphSettings.shadingModel;
            EnumC12816b enumC12816b = shaderGraphSettings.refractionType;
            if (enumC12816b == null) {
                enumC12816b = EnumC12816b.NONE;
            }
            this.refractionType = enumC12816b;
        }
        Z();
    }

    @Override
    public int e() {
        ShaderGraphSettings shaderGraphSettings;
        List<ShaderGraphAttribute> list;
        ShaderGraphData W02 = W0();
        int e10 = super.e();
        if (W02 != null && (shaderGraphSettings = W02.settings) != null && (list = shaderGraphSettings.attributes) != null) {
            Iterator<ShaderGraphAttribute> it = list.iterator();
            while (it.hasNext()) {
                if (I0(it.next()) != null) {
                    e10++;
                }
            }
        }
        return e10;
    }

    @Override
    public void e0(String entry, ColorINT colorINT) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            super.e0(entry, colorINT);
            return;
        }
        C c10 = R02.type;
        if (c10 != C.FLOAT4 && c10 != C.COLOR) {
            if (c10 != C.FLOAT3) {
                throw Q0(entry, SerializableShaderEntry.f81153g);
            }
            if (R02.f81226v3 == null) {
                R02.f81226v3 = new Vector3();
            }
            if (colorINT != null) {
                R02.f81226v3.set(colorINT.w(), colorINT.u(), colorINT.s());
            } else {
                R02.f81226v3.set(0.0f, 0.0f, 0.0f);
            }
            O0(R02);
            return;
        }
        if (R02.f81227v4 == null) {
            R02.f81227v4 = new Vector4();
        }
        if (colorINT != null) {
            R02.f81227v4.n(colorINT.w());
            R02.f81227v4.o(colorINT.u());
            R02.f81227v4.p(colorINT.s());
            R02.f81227v4.m(colorINT.r());
        } else {
            R02.f81227v4.n(0.0f);
            R02.f81227v4.o(0.0f);
            R02.f81227v4.p(0.0f);
            R02.f81227v4.m(0.0f);
        }
        O0(R02);
    }

    public void e1(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = Nc.b.G(localWindIntensity);
        if (z10) {
            Z();
            L0();
        }
    }

    @Override
    public String f(int index) {
        ShaderGraphSettings shaderGraphSettings;
        List<ShaderGraphAttribute> list;
        int e10 = super.e();
        if (index < e10) {
            return super.f(index);
        }
        ShaderGraphData W02 = W0();
        if (W02 == null || (shaderGraphSettings = W02.settings) == null || (list = shaderGraphSettings.attributes) == null) {
            return null;
        }
        for (ShaderGraphAttribute shaderGraphAttribute : list) {
            if (I0(shaderGraphAttribute) != null) {
                if (e10 == index) {
                    return shaderGraphAttribute.name;
                }
                e10++;
            }
        }
        return null;
    }

    @Override
    public void f0(String entryName, ColorINT value) {
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 != null) {
            C c10 = R02.type;
            if (c10 == C.FLOAT4 || c10 == C.COLOR) {
                if (R02.f81227v4 == null) {
                    R02.f81227v4 = new Vector4();
                }
                if (value != null) {
                    R02.f81227v4.n(value.w());
                    R02.f81227v4.o(value.u());
                    R02.f81227v4.p(value.s());
                    R02.f81227v4.m(value.r());
                } else {
                    R02.f81227v4.n(0.0f);
                    R02.f81227v4.o(0.0f);
                    R02.f81227v4.p(0.0f);
                    R02.f81227v4.m(0.0f);
                }
                O0(R02);
                return;
            }
            if (c10 == C.FLOAT3) {
                if (R02.f81226v3 == null) {
                    R02.f81226v3 = new Vector3();
                }
                if (value != null) {
                    R02.f81226v3.set(value.w(), value.u(), value.s());
                } else {
                    R02.f81226v3.set(0.0f, 0.0f, 0.0f);
                }
                O0(R02);
                return;
            }
        }
        super.f0(entryName, value);
    }

    public final void f1(boolean enabled) {
        if (enabled) {
            if (this.timeUpdateModule.d()) {
                return;
            }
            j1();
            this.timeUpdateModule.a();
            return;
        }
        g1(false, false, false);
        if (this.timeUpdateModule.d()) {
            this.timeUpdateModule.b();
        }
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.Animation.c g(int index) {
        ShaderGraphSettings shaderGraphSettings;
        List<ShaderGraphAttribute> list;
        int e10 = super.e();
        if (index < e10) {
            return super.g(index);
        }
        ShaderGraphData W02 = W0();
        if (W02 == null || (shaderGraphSettings = W02.settings) == null || (list = shaderGraphSettings.attributes) == null) {
            return null;
        }
        Iterator<ShaderGraphAttribute> it = list.iterator();
        while (it.hasNext()) {
            com.itsmagic.engine.Engines.Engine.Animation.c I02 = I0(it.next());
            if (I02 != null) {
                if (e10 == index) {
                    return I02;
                }
                e10++;
            }
        }
        return null;
    }

    public final void g1(boolean writeTime, boolean writeDelta, boolean writeSmoothDelta) {
        this.writeTimeUniform = writeTime;
        this.writeDeltaUniform = writeDelta;
        this.writeSmoothDeltaUniform = writeSmoothDelta;
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        if (filamentMaterial == null) {
            f1(false);
        } else {
            V0();
        }
    }

    @Override
    public void i0(String entry, float value) {
        if (entry != null && (entry.equalsIgnoreCase("windeffect") || entry.equalsIgnoreCase("localWindIntensity"))) {
            e1(value);
            return;
        }
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            super.i0(entry, value);
            return;
        }
        C c10 = R02.type;
        if (c10 != C.NUMBER && c10 != C.NUMBER01) {
            throw Q0(entry, SerializableShaderEntry.f81148b);
        }
        R02.number = value;
        O0(R02);
    }

    public final void i1() {
        this.lastDeltaTime = K8.d.b();
        this.lastSmoothDeltaTime = K8.d.e();
        this.timeSeconds += this.lastDeltaTime;
    }

    @Override
    public void j0(String entryName, float value) {
        C c10;
        if (entryName != null && (entryName.equalsIgnoreCase("windeffect") || entryName.equalsIgnoreCase("localWindIntensity"))) {
            e1(value);
            return;
        }
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 == null || !((c10 = R02.type) == C.NUMBER || c10 == C.NUMBER01)) {
            super.j0(entryName, value);
        } else {
            R02.number = value;
            O0(R02);
        }
    }

    public final void j1() {
        i1();
        N0();
        M0(true);
    }

    @Override
    public List<ec.i> k(C4171b renderPass) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        boolean[] zArr = {false, true};
        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
            for (EnumC12816b enumC12816b : EnumC12816b.values()) {
                for (int i10 = 0; i10 < 2; i10++) {
                    boolean z10 = zArr[i10];
                    for (int i11 = 0; i11 < 2; i11++) {
                        boolean z11 = zArr[i11];
                        steppedArrayList.add(new ec.i(MaterialBuilder.a.valueOf(enumC13053a.name()), 0.5f, MaterialBuilder.c.BACK, z10, h1(enumC12816b), !z11, !z11));
                    }
                }
            }
        }
        return steppedArrayList;
    }

    @Override
    public void k0(nc.h globalShaderEntity) {
        super.k0(globalShaderEntity);
        L0();
    }

    @Override
    public ShaderBinder l() {
        ShaderGraphBinder shaderGraphBinder = new ShaderGraphBinder();
        shaderGraphBinder.blendingMode = this.blendingMode;
        shaderGraphBinder.doubleSided = this.doubleSided;
        shaderGraphBinder.drawInFront = this.drawInFront;
        shaderGraphBinder.shadingModel = this.shadingModel;
        shaderGraphBinder.refractionType = this.refractionType;
        shaderGraphBinder.localWindIntensity = this.localWindIntensity;
        shaderGraphBinder.graphData = this.graphData;
        shaderGraphBinder.availableUniforms.addAll(this.availableUniforms);
        shaderGraphBinder.compiledParametersReady = this.compiledParametersReady;
        shaderGraphBinder.timeSeconds = this.timeSeconds;
        shaderGraphBinder.lastDeltaTime = this.lastDeltaTime;
        shaderGraphBinder.lastSmoothDeltaTime = this.lastSmoothDeltaTime;
        return shaderGraphBinder;
    }

    @Override
    public void m0(String entryName, int value) {
        C c10;
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 == null || !((c10 = R02.type) == C.NUMBER || c10 == C.NUMBER01)) {
            super.m0(entryName, value);
        } else {
            R02.number = value;
            O0(R02);
        }
    }

    @Override
    public void p0(String entryName, Quaternion value) {
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 == null || R02.type != C.FLOAT4) {
            super.p0(entryName, value);
            return;
        }
        if (R02.f81227v4 == null) {
            R02.f81227v4 = new Vector4();
        }
        if (value != null) {
            R02.f81227v4.n(value.getX());
            R02.f81227v4.o(value.getY());
            R02.f81227v4.p(value.getZ());
            R02.f81227v4.m(value.I());
        } else {
            R02.f81227v4.n(0.0f);
            R02.f81227v4.o(0.0f);
            R02.f81227v4.p(0.0f);
            R02.f81227v4.m(1.0f);
        }
        O0(R02);
    }

    @Override
    public void q(GameObject gameObject, ModelRenderer modelRenderer, List<C5.b> entries) {
        ShaderGraphData W02;
        ShaderGraphSettings shaderGraphSettings;
        String str;
        super.q(gameObject, modelRenderer, entries);
        if (entries == null || (W02 = W0()) == null || (shaderGraphSettings = W02.settings) == null || shaderGraphSettings.attributes == null) {
            return;
        }
        for (C5.b bVar : entries) {
            if (bVar != null && bVar.f2061N == null && (str = bVar.f2077l) != null) {
                ShaderGraphAttribute R02 = R0(str);
                com.itsmagic.engine.Engines.Engine.Animation.c I02 = I0(R02);
                if (R02 != null && I02 != null) {
                    bVar.d(gameObject, modelRenderer, R02.name, I02);
                }
            }
        }
    }

    @Override
    public void q0(String entry, String value) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            super.q0(entry, value);
            return;
        }
        C c10 = R02.type;
        if (c10 != C.TEXTURE && c10 != C.CUBEMAP) {
            throw Q0(entry, SerializableShaderEntry.f81157k);
        }
        if (value == null) {
            value = "";
        }
        R02.file = value;
        O0(R02);
    }

    @Override
    public void r0(String entry, ub.p texture) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            super.r0(entry, texture);
            return;
        }
        if (R02.type != C.TEXTURE) {
            throw Q0(entry, SerializableShaderEntry.f81152f);
        }
        if (texture == null) {
            R02.file = "";
            O0(R02);
        } else if (texture instanceof ub.g) {
            R02.file = ((ub.g) texture).getFile();
            O0(R02);
        } else {
            throw new EntryNotFoundException("Visible ShaderGraph texture attribute " + entry + " only supports file-backed textures");
        }
    }

    @Override
    public boolean s(String entry) {
        return super.s(entry);
    }

    @Override
    public void s0(String entry, String file) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            super.s0(entry, file);
        } else {
            if (R02.type != C.TEXTURE) {
                throw Q0(entry, SerializableShaderEntry.f81152f);
            }
            if (file == null) {
                file = "";
            }
            R02.file = file;
            O0(R02);
        }
    }

    @Override
    public ColorINT t(String entry) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            return super.t(entry);
        }
        C c10 = R02.type;
        if (c10 == C.FLOAT4 || c10 == C.COLOR) {
            if (R02.f81227v4 == null) {
                R02.f81227v4 = new Vector4();
            }
            ColorINT colorINT = new ColorINT(R02.f81227v4.getX(), R02.f81227v4.getY(), R02.f81227v4.getZ());
            colorINT.N(R02.f81227v4.f());
            return colorINT;
        }
        if (c10 != C.FLOAT3) {
            throw Q0(entry, SerializableShaderEntry.f81153g);
        }
        if (R02.f81226v3 == null) {
            R02.f81226v3 = new Vector3();
        }
        ColorINT colorINT2 = new ColorINT(R02.f81226v3.getX(), R02.f81226v3.getY(), R02.f81226v3.getZ());
        colorINT2.N(1.0f);
        return colorINT2;
    }

    @Override
    public float u(String entry) {
        if (entry != null && (entry.equalsIgnoreCase("windeffect") || entry.equalsIgnoreCase("localWindIntensity"))) {
            return this.localWindIntensity;
        }
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            return super.u(entry);
        }
        C c10 = R02.type;
        if (c10 == C.NUMBER || c10 == C.NUMBER01) {
            return R02.number;
        }
        throw Q0(entry, SerializableShaderEntry.f81148b);
    }

    @Override
    public void u0(String entryName, Vector2 value) {
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 == null || R02.type != C.FLOAT2) {
            super.u0(entryName, value);
            return;
        }
        if (R02.f81225v2 == null) {
            R02.f81225v2 = new Vector2();
        }
        if (value != null) {
            R02.f81225v2.x0(value);
        } else {
            R02.f81225v2.w0(0.0f, 0.0f);
        }
        O0(R02);
    }

    @Override
    public void v0(String entryName, Vector3 value) {
        ShaderGraphAttribute R02 = R0(entryName);
        if (R02 == null || R02.type != C.FLOAT3) {
            super.v0(entryName, value);
            return;
        }
        if (R02.f81226v3 == null) {
            R02.f81226v3 = new Vector3();
        }
        if (value != null) {
            R02.f81226v3.set(value);
        } else {
            R02.f81226v3.set(0.0f, 0.0f, 0.0f);
        }
        O0(R02);
    }

    @Override
    public void w0(String entry, Vector2 vector2) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            super.w0(entry, vector2);
            return;
        }
        if (R02.type != C.FLOAT2) {
            throw Q0(entry, SerializableShaderEntry.f81150d);
        }
        if (R02.f81225v2 == null) {
            R02.f81225v2 = new Vector2();
        }
        if (vector2 != null) {
            R02.f81225v2.x0(vector2);
        } else {
            R02.f81225v2.w0(0.0f, 0.0f);
        }
        O0(R02);
    }

    @Override
    public String x(String entry) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            return super.x(entry);
        }
        C c10 = R02.type;
        if (c10 != C.TEXTURE && c10 != C.CUBEMAP) {
            throw Q0(entry, SerializableShaderEntry.f81157k);
        }
        String str = R02.file;
        return str != null ? str : "";
    }

    @Override
    public ub.p y(String entry) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            return super.y(entry);
        }
        if (R02.type != C.TEXTURE) {
            throw Q0(entry, SerializableShaderEntry.f81152f);
        }
        String str = R02.file;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return C16165b.u(R02.file);
    }

    @Override
    public ec.i y0(ec.i variance, C4171b renderPass) {
        boolean z10 = !variance.a().name().equalsIgnoreCase(this.blendingMode.name());
        if (variance.f() != h1(this.refractionType)) {
            z10 = true;
        }
        if (variance.i() != this.doubleSided) {
            z10 = true;
        }
        if (variance.g() == this.drawInFront) {
            z10 = true;
        }
        if (!z10) {
            return variance;
        }
        MaterialBuilder.a valueOf = MaterialBuilder.a.valueOf(this.blendingMode.name());
        MaterialBuilder.c cVar = MaterialBuilder.c.BACK;
        boolean z11 = this.doubleSided;
        MaterialBuilder.k h12 = h1(this.refractionType);
        boolean z12 = this.drawInFront;
        return new ec.i(valueOf, 0.5f, cVar, z11, h12, !z12, !z12);
    }

    @Override
    public String z(String entry) {
        ShaderGraphAttribute R02 = R0(entry);
        if (R02 == null) {
            return super.z(entry);
        }
        if (R02.type == C.TEXTURE) {
            return R02.file;
        }
        throw Q0(entry, SerializableShaderEntry.f81152f);
    }
}
