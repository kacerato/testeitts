package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Unlit;

import C5.b;
import F5.c;
import Ic.C2636o;
import JAVARuntime.Color;
import JAVARuntime.Runnable;
import JAVARuntime.Texture;
import P8.o;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.Keep;
import cc.C4171b;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Unlit.UnlitSimpleBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.EnumC13053a;
import ec.i;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import ub.j;
import ub.p;
import yb.C16165b;

@o
public class UnlitSimpleBinder extends ShaderBinder {
    public Texture albedo;
    private int albedoSpriteIndex = 0;
    private final Bb.e albedoListener = new Bb.e() {
        @Override
        public final void b() {
            UnlitSimpleBinder.this.X0();
        }
    };

    @eb.f
    public Color diffuse = new Color(224, 224, 224);

    @Keep
    public final ec.d diffuse_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            UnlitSimpleBinder.this.Y0();
        }
    };
    public EnumC13053a blendingMode = EnumC13053a.OPAQUE;

    @Keep
    public final ec.d blendingMode_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            UnlitSimpleBinder.this.P();
        }
    };
    private boolean doubleSided = false;

    @Keep
    public final ec.d doubleSided_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            UnlitSimpleBinder.this.P();
        }
    };
    private boolean drawInFront = false;

    @Keep
    public final ec.d drawInFront_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            UnlitSimpleBinder.this.P();
        }
    };

    @eb.f
    private float localWindIntensity = 0.0f;

    @Keep
    public final ec.d localWindIntensity_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            UnlitSimpleBinder.this.I0();
        }
    };

    @eb.f
    private float windVerticality = 1.0f;

    @Keep
    public final ec.d windVerticality_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            UnlitSimpleBinder.this.J0();
        }
    };

    public class a extends c.n0<EnumC13053a> {

        public final ShaderBinder.b f81080a;

        public class C1484a implements Runnable {

            public final EnumC13053a f81082b;

            public C1484a(final EnumC13053a val$value) {
                this.f81082b = val$value;
            }

            @Override
            public void run() {
                UnlitSimpleBinder.this.R0(this.f81082b);
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f81080a = val$listener;
        }

        @Override
        public void a() {
            this.f81080a.a();
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new C1484a(value));
        }
    }

    public class b implements D5.h {

        public class a implements Runnable {

            public final Variable f81085b;

            public a(final Variable val$variable) {
                this.f81085b = val$variable;
            }

            @Override
            public void run() {
                UnlitSimpleBinder.this.S0(new ColorINT(this.f81085b.color_value.intColor).e0());
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UnlitSimpleBinder.this.diffuse.instance);
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

            public final Variable f81088b;

            public a(final Variable val$variable) {
                this.f81088b = val$variable;
            }

            @Override
            public void run() {
                ub.g u10 = C16165b.u(this.f81088b.str_value);
                UnlitSimpleBinder.this.P0(u10 != null ? u10.p0() : null);
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            String str;
            Texture texture = UnlitSimpleBinder.this.albedo;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    str = ((ub.g) pVar).getFile();
                    return new Variable("temp", str);
                }
            }
            str = "";
            return new Variable("temp", str);
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new a(variable));
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f81091b;

            public a(final Variable val$variable) {
                this.f81091b = val$variable;
            }

            @Override
            public void run() {
                UnlitSimpleBinder.this.Q0(this.f81091b.int_value);
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UnlitSimpleBinder.this.albedoSpriteIndex + "");
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

            public final Variable f81094b;

            public a(final Variable val$variable) {
                this.f81094b = val$variable;
            }

            @Override
            public void run() {
                UnlitSimpleBinder.this.T0(this.f81094b.booolean_value.booleanValue());
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", UnlitSimpleBinder.this.doubleSided + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public class a implements Runnable {

            public final Variable f81097b;

            public a(final Variable val$variable) {
                this.f81097b = val$variable;
            }

            @Override
            public void run() {
                UnlitSimpleBinder.this.U0(this.f81097b.booolean_value.booleanValue());
            }
        }

        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", UnlitSimpleBinder.this.drawInFront + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class g implements c.o0 {

        public class a implements D5.h {

            public class RunnableC1485a implements Runnable {

                public final Variable f81101b;

                public RunnableC1485a(final Variable val$variable) {
                    this.f81101b = val$variable;
                }

                @Override
                public void run() {
                    UnlitSimpleBinder.this.V0(Math.max(0.0f, this.f81101b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UnlitSimpleBinder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1485a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f81104b;

                public a(final Variable val$variable) {
                    this.f81104b = val$variable;
                }

                @Override
                public void run() {
                    UnlitSimpleBinder.this.W0(Math.max(0.0f, Math.min(1.0f, this.f81104b.float_value)));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UnlitSimpleBinder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
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
            entries.add(new C5.b(new a(), "Intensity", b.a.SLFloat));
            entries.add(new C5.b(new b(), "Verticality", b.a.SLFloat01));
            return entries;
        }
    }

    public class h implements c.o0 {

        public class a implements D5.h {

            public class RunnableC1486a implements Runnable {

                public final Variable f81108b;

                public RunnableC1486a(final Variable val$variable) {
                    this.f81108b = val$variable;
                }

                @Override
                public void run() {
                    UnlitSimpleBinder.this.n0(Math.max(-32768, Math.min(32767, this.f81108b.int_value)));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UnlitSimpleBinder.this.K() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1486a(variable));
                }
            }
        }

        public h() {
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

    public void I0() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    public void J0() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.w(this.windVerticality);
        }
    }

    private EnumC13053a L0() {
        p pVar;
        EnumC13053a enumC13053a = this.blendingMode;
        EnumC13053a enumC13053a2 = EnumC13053a.MASKED;
        if (enumC13053a != enumC13053a2) {
            return enumC13053a;
        }
        Texture texture = this.albedo;
        return this.diffuse.getFloatAlpha() >= 1.0f ? texture != null && (pVar = texture.instance) != null && pVar.J() && this.albedo.instance.C() : true ? enumC13053a2 : EnumC13053a.OPAQUE;
    }

    private Texture O0(Material material, NoiseData noiseData, String fileName) {
        File z10 = Tc.b.z(material.f78885e);
        j jVar = new j(noiseData);
        jVar.U0();
        Bitmap createBitmap = Bitmap.createBitmap(jVar.getWidth(), jVar.getHeight(), Bitmap.Config.ARGB_8888);
        int width = jVar.getWidth();
        int height = jVar.getHeight();
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                createBitmap.setPixel(i10, i11, jVar.i(i10, i11).intColor);
            }
        }
        TextureConfig textureConfig = noiseData.textureConfig;
        File file = new File(z10, fileName + ".png");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                createBitmap.compress(Bitmap.CompressFormat.PNG, textureConfig.s(), fileOutputStream);
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        File file2 = new File(z10, fileName + ".texture");
        if (file2.exists()) {
            file2.delete();
        }
        File file3 = new File(z10, fileName + ".png.config");
        if (file3.exists()) {
            file3.delete();
        }
        C2636o.e(textureConfig.K0(), file3);
        Vc.e.f();
        ub.g u10 = C16165b.u(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
        if (u10 == null) {
            return null;
        }
        u10.E0();
        return u10.p0();
    }

    public void X0() {
        if (D() == null) {
            return;
        }
        j(this.albedo, C16165b.f130161g, "albedo", D(), this.albedoSpriteIndex);
    }

    public void Y0() {
        if (D() == null) {
            return;
        }
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
    }

    @Override
    public Vector2 A(String entry) {
        return null;
    }

    @Override
    public List<C5.b> H(Context context, ShaderBinder.b listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String c10 = listener != null ? listener.c() : null;
        String d10 = listener != null ? listener.d() : null;
        steppedArrayList.add(F5.c.i("blend", EnumC13053a.class, this.blendingMode, new a(listener)));
        C5.b bVar = new C5.b(new b(), Lang.l(Lang.T.COLOR), b.a.Color);
        if (d10 != null && c10 != null) {
            bVar.f(d10, listener.b(), "diffuse", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar);
        steppedArrayList.add(new C5.b(new c(), "Albedo", b.a.Texture, context));
        Texture texture = this.albedo;
        if (texture != null && ub.g.x0(texture.instance)) {
            steppedArrayList.add(new C5.b(new d(), "Sprite index", b.a.SLInt));
        }
        e eVar = new e();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(eVar, "Double sided", aVar));
        steppedArrayList.add(new C5.b(new f(), "Draw in front", aVar));
        steppedArrayList.add(F5.c.e("Wind effect", new g()));
        steppedArrayList.add(F5.c.e("Others", new h()));
        return steppedArrayList;
    }

    public int K0() {
        return this.albedoSpriteIndex;
    }

    public float M0() {
        return this.localWindIntensity;
    }

    public float N0() {
        return this.windVerticality;
    }

    public void P0(Texture albedo) {
        Texture texture = this.albedo;
        boolean z10 = texture != albedo;
        if (texture != null && z10) {
            texture.instance.T(this.albedoListener);
        }
        this.albedo = albedo;
        if (albedo != null && z10) {
            albedo.instance.e(this.albedoListener);
        }
        if (z10) {
            Z();
            X0();
        }
    }

    @Override
    public boolean Q() {
        return this.drawInFront;
    }

    public void Q0(int albedoSpriteIndex) {
        boolean z10 = this.albedoSpriteIndex != albedoSpriteIndex;
        this.albedoSpriteIndex = albedoSpriteIndex;
        if (z10) {
            Z();
            X0();
        }
    }

    public void R0(EnumC13053a blendingMode) {
        boolean z10 = this.blendingMode != blendingMode;
        this.blendingMode = blendingMode;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void S0(Color diffuse) {
        boolean z10 = this.diffuse.instance.intColor != diffuse.instance.intColor;
        this.diffuse = diffuse;
        if (z10) {
            Z();
            Y0();
        }
    }

    public void T0(boolean doubleSided) {
        boolean z10 = this.doubleSided != doubleSided;
        this.doubleSided = doubleSided;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void U0(boolean drawInFront) {
        boolean z10 = this.drawInFront != drawInFront;
        this.drawInFront = drawInFront;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void V0(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = localWindIntensity;
        if (z10) {
            Z();
            I0();
        }
    }

    public void W0(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            J0();
        }
    }

    @Override
    public void X() {
        P0(null);
    }

    @Override
    public boolean a0() {
        return false;
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        ColorINT c10;
        ub.g u10;
        SerializableShaderEntry d10 = SerializableShaderEntry.d("doubleSided", "Boolean", dataList);
        if (d10 != null) {
            T0(SerializableShaderEntry.a(d10));
        }
        SerializableShaderEntry d11 = SerializableShaderEntry.d("diffuse", SerializableShaderEntry.f81153g, dataList);
        if (d11 != null) {
            ColorINT c11 = SerializableShaderEntry.c(d11);
            if (c11 != null) {
                S0(c11.e0());
            }
        } else {
            SerializableShaderEntry d12 = SerializableShaderEntry.d("color", SerializableShaderEntry.f81153g, dataList);
            if (d12 != null && (c10 = SerializableShaderEntry.c(d12)) != null) {
                S0(c10.e0());
            }
        }
        SerializableShaderEntry d13 = SerializableShaderEntry.d("albedo", SerializableShaderEntry.f81152f, dataList);
        if (d13 != null) {
            ub.g u11 = SerializableShaderEntry.u(d13);
            if (u11 != null) {
                P0(u11.p0());
            }
        } else {
            SerializableShaderEntry d14 = SerializableShaderEntry.d(ResourceLocatorTool.TYPE_TEXTURE, SerializableShaderEntry.f81152f, dataList);
            if (d14 != null && (u10 = SerializableShaderEntry.u(d14)) != null) {
                P0(u10.p0());
            }
        }
        SerializableShaderEntry d15 = SerializableShaderEntry.d("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d15 != null) {
            Q0(SerializableShaderEntry.h(d15));
        }
        SerializableShaderEntry d16 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d16 != null) {
            R0(EnumC13053a.valueOf(SerializableShaderEntry.s(d16)));
        }
        SerializableShaderEntry d17 = SerializableShaderEntry.d("drawInFront", "Boolean", dataList);
        if (d17 != null) {
            U0(SerializableShaderEntry.a(d17));
        }
        SerializableShaderEntry d18 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d18 != null) {
            V0(SerializableShaderEntry.g(d18));
        }
        SerializableShaderEntry d19 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d19 != null) {
            W0(SerializableShaderEntry.g(d19));
        }
        SerializableShaderEntry d20 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d20 != null) {
            n0(SerializableShaderEntry.h(d20));
        }
    }

    @Override
    public void c0(List<SerializableShaderEntry> dataList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SerializableShaderEntry e10 = SerializableShaderEntry.e("doubleSided", "Boolean", dataList);
        steppedArrayList.add(e10);
        SerializableShaderEntry.q(e10, this.doubleSided);
        SerializableShaderEntry e11 = SerializableShaderEntry.e("albedo", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e11);
        SerializableShaderEntry.k(e11, this.albedo);
        SerializableShaderEntry e12 = SerializableShaderEntry.e("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.j(e12, this.albedoSpriteIndex);
        SerializableShaderEntry e13 = SerializableShaderEntry.e("diffuse", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.l(e13, this.diffuse.instance);
        SerializableShaderEntry e14 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.o(e14, this.blendingMode.toString());
        SerializableShaderEntry e15 = SerializableShaderEntry.e("drawInFront", "Boolean", dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.q(e15, this.drawInFront);
        SerializableShaderEntry e16 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e16);
        SerializableShaderEntry.i(e16, this.localWindIntensity);
        SerializableShaderEntry e17 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e17);
        SerializableShaderEntry.i(e17, this.windVerticality);
        SerializableShaderEntry e18 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e18);
        SerializableShaderEntry.j(e18, K());
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
        Y0();
        X0();
        I0();
        J0();
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
        boolean[] zArr = {false, true};
        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
            for (int i10 = 0; i10 < 2; i10++) {
                boolean z10 = zArr[i10];
                for (int i11 = 0; i11 < 2; i11++) {
                    boolean z11 = zArr[i11];
                    steppedArrayList.add(new i(MaterialBuilder.a.valueOf(enumC13053a.name()), 0.5f, MaterialBuilder.c.BACK, z10, null, !z11, !z11));
                }
            }
        }
        return steppedArrayList;
    }

    @Override
    public void k0(nc.h globalShaderEntity) {
        super.k0(globalShaderEntity);
        I0();
        J0();
    }

    @Override
    public ShaderBinder l() {
        UnlitSimpleBinder unlitSimpleBinder = new UnlitSimpleBinder();
        unlitSimpleBinder.diffuse = this.diffuse.copy();
        unlitSimpleBinder.albedo = this.albedo;
        unlitSimpleBinder.albedoSpriteIndex = this.albedoSpriteIndex;
        unlitSimpleBinder.doubleSided = this.doubleSided;
        unlitSimpleBinder.blendingMode = this.blendingMode;
        unlitSimpleBinder.drawInFront = this.drawInFront;
        unlitSimpleBinder.localWindIntensity = this.localWindIntensity;
        unlitSimpleBinder.windVerticality = this.windVerticality;
        unlitSimpleBinder.n0(K());
        return unlitSimpleBinder;
    }

    @Override
    public void r0(String entry, p texture) {
        if (!entry.equalsIgnoreCase("albedo") && !entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            super.r0(entry, texture);
        } else if (texture != null) {
            P0(texture.p0());
        } else {
            P0(null);
        }
    }

    @Override
    public void s0(String entry, String file) {
        if (!entry.equalsIgnoreCase("albedo") && !entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            super.s0(entry, file);
            return;
        }
        Texture texture = this.albedo;
        if (texture != null) {
            p pVar = texture.instance;
            if ((pVar instanceof ub.g) && ((ub.g) pVar).getFile().equals(file)) {
                return;
            }
        }
        if (file == null || file.isEmpty()) {
            P0(null);
            return;
        }
        ub.g u10 = C16165b.u(file);
        if (u10 != null) {
            P0(u10.p0());
        } else {
            P0(null);
        }
    }

    @Override
    public float u(String entry) {
        return entry.equalsIgnoreCase("windeffect") ? this.localWindIntensity : entry.equalsIgnoreCase("windVerticality") ? this.windVerticality : super.u(entry);
    }

    @Override
    public void w0(String entry, Vector2 vector2) {
    }

    @Override
    public i y0(i variance, C4171b renderPass) {
        EnumC13053a L02 = L0();
        boolean z10 = variance.a().ordinal() != L02.ordinal();
        if (variance.i() != this.doubleSided) {
            z10 = true;
        }
        if (variance.g() == this.drawInFront) {
            z10 = true;
        }
        if (!z10) {
            return variance;
        }
        MaterialBuilder.a valueOf = MaterialBuilder.a.valueOf(L02.name());
        MaterialBuilder.c cVar = MaterialBuilder.c.BACK;
        boolean z11 = this.doubleSided;
        boolean z12 = this.drawInFront;
        return new i(valueOf, 0.5f, cVar, z11, null, !z12, !z12);
    }
}
