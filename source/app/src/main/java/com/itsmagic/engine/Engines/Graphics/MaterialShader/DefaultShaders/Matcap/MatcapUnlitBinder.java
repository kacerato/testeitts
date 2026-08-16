package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Matcap;

import C5.b;
import F5.c;
import JAVARuntime.Color;
import JAVARuntime.Runnable;
import JAVARuntime.Texture;
import android.content.Context;
import androidx.annotation.Keep;
import cc.C4171b;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Matcap.MatcapUnlitBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.EnumC13053a;
import ec.i;
import java.util.List;
import ub.p;
import yb.C16165b;

public class MatcapUnlitBinder extends MatcapBinder {

    @eb.f
    public Texture matcap;

    @eb.f
    public Color diffuse = new Color(255, 255, 255);

    @Keep
    public final ec.d diffuse_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            MatcapUnlitBinder.this.X0();
        }
    };
    private final Bb.e matcapListener = new Bb.e() {
        @Override
        public final void b() {
            MatcapUnlitBinder.this.Y0();
        }
    };
    public EnumC13053a blendingMode = EnumC13053a.OPAQUE;

    @Keep
    public final ec.d blendingMode_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            MatcapUnlitBinder.this.P();
        }
    };
    private boolean doubleSided = false;

    @Keep
    public final ec.d doubleSided_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            MatcapUnlitBinder.this.P();
        }
    };
    private boolean drawInFront = false;

    @Keep
    public final ec.d drawInFront_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            MatcapUnlitBinder.this.P();
        }
    };

    @eb.f
    private float localWindIntensity = 0.0f;

    @Keep
    public final ec.d localWindIntensity_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            MatcapUnlitBinder.this.M0();
        }
    };

    @eb.f
    private float windVerticality = 1.0f;

    @Keep
    public final ec.d windVerticality_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            MatcapUnlitBinder.this.N0();
        }
    };
    private String selectedPreset = "763C39_431510_210504_55241C-256px.jpg";
    private String activePreset = null;

    public class a extends c.n0<EnumC13053a> {

        public final ShaderBinder.b f80995a;

        public class C1477a implements Runnable {

            public final EnumC13053a f80997b;

            public C1477a(final EnumC13053a val$value) {
                this.f80997b = val$value;
            }

            @Override
            public void run() {
                MatcapUnlitBinder.this.R0(this.f80997b);
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f80995a = val$listener;
        }

        @Override
        public void a() {
            ShaderBinder.b bVar = this.f80995a;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new C1477a(value));
        }
    }

    public class b implements D5.h {

        public class a implements Runnable {

            public final Variable f81000b;

            public a(final Variable val$variable) {
                this.f81000b = val$variable;
            }

            @Override
            public void run() {
                MatcapUnlitBinder.this.S0(new ColorINT(this.f81000b.color_value.intColor).e0());
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", MatcapUnlitBinder.this.diffuse.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements D5.h {

        public class a implements Runnable {

            public final Variable f81003b;

            public a(final Variable val$variable) {
                this.f81003b = val$variable;
            }

            @Override
            public void run() {
                Variable variable = this.f81003b;
                String str = variable != null ? variable.str_value : null;
                if (str != null && str.startsWith("@@MG@@")) {
                    MatcapUnlitBinder.this.B0(str.substring(6));
                    return;
                }
                if (str == null || str.isEmpty()) {
                    MatcapUnlitBinder.this.B0(null);
                    MatcapUnlitBinder.this.A0(null);
                } else {
                    ub.g u10 = C16165b.u(str);
                    MatcapUnlitBinder.this.B0(null);
                    MatcapUnlitBinder.this.A0(u10 != null ? u10.p0() : null);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            if (MatcapUnlitBinder.this.selectedPreset != null && !MatcapUnlitBinder.this.selectedPreset.isEmpty()) {
                return new Variable("temp", "@@MG@@" + MatcapUnlitBinder.this.selectedPreset);
            }
            Texture texture = MatcapUnlitBinder.this.matcap;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return new Variable("temp", ((ub.g) pVar).getFile());
                }
            }
            return new Variable("temp", "");
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new a(variable));
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f81006b;

            public a(final Variable val$variable) {
                this.f81006b = val$variable;
            }

            @Override
            public void run() {
                MatcapUnlitBinder.this.T0(this.f81006b.booolean_value.booleanValue());
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", MatcapUnlitBinder.this.doubleSided + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public class a implements Runnable {

            public final Variable f81009b;

            public a(final Variable val$variable) {
                this.f81009b = val$variable;
            }

            @Override
            public void run() {
                MatcapUnlitBinder.this.U0(this.f81009b.booolean_value.booleanValue());
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", MatcapUnlitBinder.this.drawInFront + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements c.o0 {

        public final String f81011a;

        public final String f81012b;

        public final ShaderBinder.b f81013c;

        public class a implements D5.h {

            public class C1478a implements Runnable {

                public final Variable f81016b;

                public C1478a(final Variable val$variable) {
                    this.f81016b = val$variable;
                }

                @Override
                public void run() {
                    MatcapUnlitBinder.this.V0(Math.max(0.0f, this.f81016b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", MatcapUnlitBinder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1478a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f81019b;

                public a(final Variable val$variable) {
                    this.f81019b = val$variable;
                }

                @Override
                public void run() {
                    MatcapUnlitBinder.this.W0(Math.max(0.0f, Math.min(1.0f, this.f81019b.float_value)));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", MatcapUnlitBinder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public f(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f81011a = val$objectUID;
            this.f81012b = val$componentUID;
            this.f81013c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            ShaderBinder.b bVar;
            C5.b bVar2 = new C5.b(new a(), "Intensity", b.a.SLFloat);
            C5.b bVar3 = new C5.b(new b(), "Verticality", b.a.SLFloat01);
            String str = this.f81011a;
            if (str != null && this.f81012b != null && (bVar = this.f81013c) != null) {
                Component b10 = bVar.b();
                com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
                bVar2.f(str, b10, "localWindIntensity", cVar);
                bVar3.f(this.f81011a, this.f81013c.b(), "windVerticality", cVar);
            }
            entries.add(bVar2);
            entries.add(bVar3);
            return entries;
        }
    }

    public class g implements c.o0 {

        public class a implements D5.h {

            public class C1479a implements Runnable {

                public final Variable f81023b;

                public C1479a(final Variable val$variable) {
                    this.f81023b = val$variable;
                }

                @Override
                public void run() {
                    MatcapUnlitBinder.this.n0(Math.max(-32768, Math.min(32767, this.f81023b.int_value)));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", MatcapUnlitBinder.this.K() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1479a(variable));
                }
            }
        }

        public g() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Material ID", b.a.SLInt));
            return entries;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override
        public void run() {
            MatcapUnlitBinder.this.Z0();
        }
    }

    public void M0() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    public void N0() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.w(this.windVerticality);
        }
    }

    private EnumC13053a O0() {
        p pVar;
        EnumC13053a enumC13053a = this.blendingMode;
        EnumC13053a enumC13053a2 = EnumC13053a.MASKED;
        if (enumC13053a != enumC13053a2) {
            return enumC13053a;
        }
        Texture texture = this.matcap;
        return this.diffuse.getFloatAlpha() >= 1.0f ? texture != null && (pVar = texture.instance) != null && pVar.J() && this.matcap.instance.C() : true ? enumC13053a2 : EnumC13053a.OPAQUE;
    }

    public void X0() {
        if (D() == null) {
            return;
        }
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
    }

    public void Y0() {
        if (D() == null) {
            return;
        }
        i(this.matcap, C16165b.f130161g, "matcap", D());
    }

    public void Z0() {
        String str = this.selectedPreset;
        if (str == null) {
            this.activePreset = null;
            return;
        }
        String str2 = this.activePreset;
        if (str2 == null || !str2.equals(str)) {
            String str3 = this.selectedPreset;
            this.activePreset = str3;
            A0(H3.f.E1(str3));
        }
    }

    @Override
    public void A0(Texture matcap) {
        Texture texture = this.matcap;
        boolean z10 = texture != matcap;
        if (texture != null && z10) {
            texture.instance.T(this.matcapListener);
        }
        this.matcap = matcap;
        if (matcap != null && z10) {
            matcap.instance.e(this.matcapListener);
        }
        if (z10) {
            Z();
            Y0();
        }
    }

    @Override
    public void B0(String selectedPreset) {
        this.selectedPreset = selectedPreset;
        Z();
        K8.a.I(new h());
    }

    @Override
    public List<C5.b> H(Context context, ShaderBinder.b listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String c10 = listener != null ? listener.c() : null;
        String d10 = listener != null ? listener.d() : null;
        steppedArrayList.add(F5.c.i("blend", EnumC13053a.class, this.blendingMode, new a(listener)));
        C5.b bVar = new C5.b(new b(), Lang.l(Lang.T.COLOR), b.a.Color);
        if (d10 != null && c10 != null && listener != null) {
            bVar.f(d10, listener.b(), "diffuse", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar);
        steppedArrayList.add(new C5.b(new c(), "Matcap", b.a.Matcap, context));
        d dVar = new d();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(dVar, "Double sided", aVar));
        steppedArrayList.add(new C5.b(new e(), "Draw in front", aVar));
        steppedArrayList.add(F5.c.e("Wind effect", new f(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Others", new g()));
        return steppedArrayList;
    }

    public float P0() {
        return this.localWindIntensity;
    }

    @Override
    public boolean Q() {
        return this.drawInFront;
    }

    public float Q0() {
        return this.windVerticality;
    }

    public void R0(EnumC13053a blendingMode) {
        boolean z10 = this.blendingMode != blendingMode;
        this.blendingMode = blendingMode;
        if (z10) {
            Z();
            P();
        }
    }

    public void S0(Color diffuse) {
        boolean z10 = this.diffuse != diffuse;
        this.diffuse = diffuse;
        if (z10) {
            Z();
            X0();
        }
    }

    public void T0(boolean doubleSided) {
        boolean z10 = this.doubleSided != doubleSided;
        this.doubleSided = doubleSided;
        if (z10) {
            Z();
            P();
        }
    }

    public void U0(boolean drawInFront) {
        boolean z10 = this.drawInFront != drawInFront;
        this.drawInFront = drawInFront;
        if (z10) {
            Z();
            P();
        }
    }

    public void V0(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = localWindIntensity;
        if (z10) {
            Z();
            M0();
        }
    }

    public void W0(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            N0();
        }
    }

    @Override
    public void X() {
        A0(null);
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        ColorINT c10;
        ub.g u10;
        SerializableShaderEntry d10 = SerializableShaderEntry.d("diffuse", SerializableShaderEntry.f81153g, dataList);
        if (d10 != null) {
            ColorINT c11 = SerializableShaderEntry.c(d10);
            if (c11 != null) {
                S0(c11.e0());
            }
        } else {
            SerializableShaderEntry d11 = SerializableShaderEntry.d("color", SerializableShaderEntry.f81153g, dataList);
            if (d11 != null && (c10 = SerializableShaderEntry.c(d11)) != null) {
                S0(c10.e0());
            }
        }
        SerializableShaderEntry d12 = SerializableShaderEntry.d("matcap", SerializableShaderEntry.f81152f, dataList);
        if (d12 != null) {
            ub.g u11 = SerializableShaderEntry.u(d12);
            if (u11 != null) {
                A0(u11.p0());
            }
        } else {
            SerializableShaderEntry d13 = SerializableShaderEntry.d("environment", SerializableShaderEntry.f81152f, dataList);
            if (d13 != null && (u10 = SerializableShaderEntry.u(d13)) != null) {
                A0(u10.p0());
            }
        }
        SerializableShaderEntry d14 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d14 != null) {
            R0(EnumC13053a.valueOf(SerializableShaderEntry.s(d14)));
        }
        SerializableShaderEntry d15 = SerializableShaderEntry.d("doubleSided", "Boolean", dataList);
        if (d15 != null) {
            T0(SerializableShaderEntry.a(d15));
        }
        SerializableShaderEntry d16 = SerializableShaderEntry.d("drawInFront", "Boolean", dataList);
        if (d16 != null) {
            U0(SerializableShaderEntry.a(d16));
        }
        SerializableShaderEntry d17 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d17 != null) {
            V0(SerializableShaderEntry.g(d17));
        }
        SerializableShaderEntry d18 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d18 != null) {
            W0(SerializableShaderEntry.g(d18));
        }
        SerializableShaderEntry d19 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d19 != null) {
            n0(SerializableShaderEntry.h(d19));
        }
    }

    @Override
    public void c0(List<SerializableShaderEntry> dataList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SerializableShaderEntry e10 = SerializableShaderEntry.e("diffuse", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e10);
        SerializableShaderEntry.l(e10, this.diffuse.instance);
        SerializableShaderEntry e11 = SerializableShaderEntry.e("matcap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e11);
        SerializableShaderEntry.k(e11, this.matcap);
        SerializableShaderEntry e12 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.o(e12, this.blendingMode.toString());
        SerializableShaderEntry e13 = SerializableShaderEntry.e("doubleSided", "Boolean", dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.q(e13, this.doubleSided);
        SerializableShaderEntry e14 = SerializableShaderEntry.e("drawInFront", "Boolean", dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.q(e14, this.drawInFront);
        SerializableShaderEntry e15 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.i(e15, this.localWindIntensity);
        SerializableShaderEntry e16 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e16);
        SerializableShaderEntry.i(e16, this.windVerticality);
        SerializableShaderEntry e17 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e17);
        SerializableShaderEntry.j(e17, K());
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    @Override
    public boolean d() {
        if (this.diffuse.getFloatAlpha() <= 0.0f) {
            return false;
        }
        return super.d();
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        X0();
        Y0();
        M0();
        N0();
        Z0();
    }

    @Override
    public void i0(String entry, float value) {
        if (entry.equalsIgnoreCase("windeffect")) {
            V0(value);
        } else if (entry.equalsIgnoreCase("windVerticality")) {
            W0(value);
        } else {
            super.i0(entry, value);
        }
    }

    @Override
    public List<i> k(C4171b renderPass) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        int i10 = 2;
        boolean[] zArr = {false, true};
        EnumC13053a[] values = EnumC13053a.values();
        int length = values.length;
        int i11 = 0;
        while (i11 < length) {
            EnumC13053a enumC13053a = values[i11];
            int i12 = 0;
            while (i12 < i10) {
                boolean z10 = zArr[i12];
                int i13 = 0;
                while (i13 < i10) {
                    boolean z11 = zArr[i13];
                    int i14 = 0;
                    while (i14 < i10) {
                        boolean z12 = zArr[i14];
                        i iVar = new i(MaterialBuilder.a.valueOf(enumC13053a.name()), 0.5f, MaterialBuilder.c.BACK, z10, null, !z11, !z11);
                        iVar.j("hasNormal", z12);
                        steppedArrayList.add(iVar);
                        i14++;
                        i13 = i13;
                        i10 = 2;
                    }
                    i13++;
                    i10 = 2;
                }
                i12++;
                i10 = 2;
            }
            i11++;
            i10 = 2;
        }
        return steppedArrayList;
    }

    @Override
    public void k0(nc.h globalShaderEntity) {
        super.k0(globalShaderEntity);
        M0();
        N0();
    }

    @Override
    public ShaderBinder l() {
        MatcapUnlitBinder matcapUnlitBinder = new MatcapUnlitBinder();
        matcapUnlitBinder.diffuse = this.diffuse.copy();
        matcapUnlitBinder.matcap = this.matcap;
        matcapUnlitBinder.blendingMode = this.blendingMode;
        matcapUnlitBinder.doubleSided = this.doubleSided;
        matcapUnlitBinder.drawInFront = this.drawInFront;
        matcapUnlitBinder.localWindIntensity = this.localWindIntensity;
        matcapUnlitBinder.windVerticality = this.windVerticality;
        matcapUnlitBinder.n0(K());
        return matcapUnlitBinder;
    }

    @Override
    public void r0(String entry, p texture) {
        if (!entry.equalsIgnoreCase("matcap") && !entry.equalsIgnoreCase("environment")) {
            super.r0(entry, texture);
        } else if (texture != null) {
            A0(texture.p0());
        } else {
            A0(null);
        }
    }

    @Override
    public void s0(String entry, String file) {
        if (!entry.equalsIgnoreCase("matcap") && !entry.equalsIgnoreCase("environment")) {
            super.s0(entry, file);
            return;
        }
        Texture texture = this.matcap;
        if (texture != null) {
            p pVar = texture.instance;
            if ((pVar instanceof ub.g) && ((ub.g) pVar).getFile().equals(file)) {
                return;
            }
        }
        if (file == null || file.isEmpty()) {
            A0(null);
            return;
        }
        ub.g u10 = C16165b.u(file);
        if (u10 != null) {
            A0(u10.p0());
        } else {
            A0(null);
        }
    }

    @Override
    public float u(String entry) {
        return entry.equalsIgnoreCase("windeffect") ? this.localWindIntensity : entry.equalsIgnoreCase("windVerticality") ? this.windVerticality : super.u(entry);
    }

    @Override
    public i y0(i variance, C4171b renderPass) {
        EnumC13053a O02 = O0();
        boolean z10 = variance.a().ordinal() != O02.ordinal();
        if (variance.i() != this.doubleSided) {
            z10 = true;
        }
        if (variance.g() == this.drawInFront) {
            z10 = true;
        }
        if (!z10) {
            return variance;
        }
        MaterialBuilder.a valueOf = MaterialBuilder.a.valueOf(O02.name());
        MaterialBuilder.c cVar = MaterialBuilder.c.BACK;
        boolean z11 = this.doubleSided;
        boolean z12 = this.drawInFront;
        return new i(valueOf, 0.5f, cVar, z11, null, !z12, !z12);
    }

    @Override
    public void z0(String matcapName, p texture) {
        B0(matcapName);
        if (texture != null) {
            A0(texture.p0());
        } else {
            A0(null);
        }
    }
}
