package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.PS1;

import C5.b;
import F5.c;
import JAVARuntime.Color;
import JAVARuntime.Runnable;
import JAVARuntime.Texture;
import JAVARuntime.Vector2;
import android.content.Context;
import androidx.annotation.Keep;
import cc.C4171b;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.PS1.PS1Binder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.EnumC13053a;
import java.lang.reflect.Field;
import java.util.List;
import ub.p;
import yb.C16165b;

@P8.o
public class PS1Binder extends ShaderBinder {
    public Texture albedo;

    @eb.f
    public Color diffuse = new Color(224, 224, 224);

    @Keep
    public final ec.d diffuse_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            PS1Binder.this.g1();
        }
    };
    private int albedoSpriteIndex = 0;
    private final Bb.e albedoListener = new Bb.e() {
        @Override
        public final void b() {
            PS1Binder.this.d1();
        }
    };

    @eb.f
    public int textureSize = 256;

    @Keep
    public final ec.d textureSize_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            PS1Binder.this.e1();
        }
    };

    @eb.f
    public o colorDepth = o.BIT16;

    @Keep
    public final ec.d colorDepth_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            PS1Binder.this.f1();
        }
    };

    @eb.f
    public UVs uv = new UVs();
    public EnumC13053a blendingMode = EnumC13053a.OPAQUE;

    @Keep
    public final ec.d blendingMode_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            PS1Binder.this.P();
        }
    };
    private boolean doubleSided = false;

    @Keep
    public final ec.d doubleSided_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            PS1Binder.this.P();
        }
    };
    private boolean drawInFront = false;

    @Keep
    public final ec.d drawInFront_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            PS1Binder.this.P();
        }
    };

    @eb.f
    private float localWindIntensity = 0.0f;

    @Keep
    public final ec.d localWindIntensity_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            PS1Binder.this.M0();
        }
    };

    @eb.f
    private float windVerticality = 1.0f;

    @Keep
    public final ec.d windVerticality_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            PS1Binder.this.N0();
        }
    };

    @P8.o
    public static class UVs {
        public Vector2 albedoTilling = new Vector2(1.0f);
        public Vector2 albedoOffset = new Vector2();

        public UVs a() {
            UVs uVs = new UVs();
            for (Field field : UVs.class.getDeclaredFields()) {
                try {
                    Object obj = field.get(this);
                    if (obj instanceof Vector2) {
                        field.set(uVs, ((Vector2) obj).copy());
                    } else {
                        field.set(uVs, obj);
                    }
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
            return uVs;
        }

        public com.itsmagic.engine.Engines.Engine.Vector.Vector2 b(String entry) {
            for (Field field : UVs.class.getDeclaredFields()) {
                if (field.getName().equalsIgnoreCase(entry)) {
                    try {
                        return ((Vector2) field.get(this)).instance;
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            throw new EntryNotFoundException("Entry not found: " + entry);
        }

        public void c(List<SerializableShaderEntry> dataList) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector2 v10;
            for (Field field : UVs.class.getDeclaredFields()) {
                SerializableShaderEntry d10 = SerializableShaderEntry.d(field.getName(), SerializableShaderEntry.f81150d, dataList);
                if (d10 != null && (v10 = SerializableShaderEntry.v(d10)) != null) {
                    try {
                        field.set(this, v10.K0());
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }

        public void d(List<SerializableShaderEntry> dataList, List<SerializableShaderEntry> usedEntries) {
            for (Field field : UVs.class.getDeclaredFields()) {
                SerializableShaderEntry e10 = SerializableShaderEntry.e(field.getName(), SerializableShaderEntry.f81150d, dataList);
                try {
                    Vector2 vector2 = (Vector2) field.get(this);
                    if (vector2 != null) {
                        SerializableShaderEntry.m(e10, vector2.instance);
                        usedEntries.add(e10);
                    }
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            }
        }

        public void e(String entry, com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2) {
            for (Field field : UVs.class.getDeclaredFields()) {
                if (field.getName().equalsIgnoreCase(entry)) {
                    try {
                        field.set(this, vector2.K0());
                        return;
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            throw new EntryNotFoundException("Entry not found: " + entry);
        }
    }

    public class a extends c.n0<EnumC13053a> {

        public final ShaderBinder.b f81026a;

        public class C1480a implements Runnable {

            public final EnumC13053a f81028b;

            public C1480a(final EnumC13053a val$value) {
                this.f81028b = val$value;
            }

            @Override
            public void run() {
                PS1Binder.this.V0(this.f81028b);
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f81026a = val$listener;
        }

        @Override
        public void a() {
            this.f81026a.a();
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new C1480a(value));
        }
    }

    public class b implements c.o0 {

        public final String f81030a;

        public final String f81031b;

        public final ShaderBinder.b f81032c;

        public class a implements D5.h {

            public class C1481a implements Runnable {

                public final Variable f81035b;

                public C1481a(final Variable val$variable) {
                    this.f81035b = val$variable;
                }

                @Override
                public void run() {
                    PS1Binder.this.a1(Math.max(0.0f, this.f81035b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", PS1Binder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1481a(variable));
                }
            }
        }

        public class C1482b implements D5.h {

            public class a implements Runnable {

                public final Variable f81038b;

                public a(final Variable val$variable) {
                    this.f81038b = val$variable;
                }

                @Override
                public void run() {
                    PS1Binder.this.c1(Math.max(0.0f, Math.min(1.0f, this.f81038b.float_value)));
                }
            }

            public C1482b() {
            }

            @Override
            public Variable get() {
                return new Variable("", PS1Binder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public b(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f81030a = val$objectUID;
            this.f81031b = val$componentUID;
            this.f81032c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            ShaderBinder.b bVar;
            entries.add(new C5.b(new a(), "Intensity", b.a.SLFloat));
            C5.b bVar2 = new C5.b(new C1482b(), "Verticality", b.a.SLFloat01);
            String str = this.f81030a;
            if (str != null && this.f81031b != null && (bVar = this.f81032c) != null) {
                bVar2.f(str, bVar.b(), "windVerticality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar2);
            return entries;
        }
    }

    public class c implements c.o0 {

        public class a implements D5.h {

            public class C1483a implements Runnable {

                public final Variable f81042b;

                public C1483a(final Variable val$variable) {
                    this.f81042b = val$variable;
                }

                @Override
                public void run() {
                    PS1Binder.this.n0(Math.max(-32768, Math.min(32767, this.f81042b.int_value)));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", PS1Binder.this.K() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1483a(variable));
                }
            }
        }

        public c() {
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

    public class d implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f81044a;

        public class a implements Runnable {

            public final Variable f81046b;

            public a(final Variable val$variable) {
                this.f81046b = val$variable;
            }

            @Override
            public void run() {
                d dVar = d.this;
                dVar.f81044a.f79838x = this.f81046b.float_value;
                PS1Binder.this.h1();
                PS1Binder.this.Z();
            }
        }

        public d(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f81044a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f81044a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f81044a.f79838x + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f81048a;

        public class a implements Runnable {

            public final Variable f81050b;

            public a(final Variable val$variable) {
                this.f81050b = val$variable;
            }

            @Override
            public void run() {
                e eVar = e.this;
                eVar.f81048a.f79839y = this.f81050b.float_value;
                PS1Binder.this.h1();
                PS1Binder.this.Z();
            }
        }

        public e(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f81048a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f81048a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f81048a.f79839y + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f81052a;

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f81053b;

        public final C5.b f81054c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                f fVar = f.this;
                com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = fVar.f81052a;
                if (vector2 != null) {
                    vector2.x0(fVar.f81053b);
                    PS1Binder.this.h1();
                    PS1Binder.this.Z();
                }
                D5.f fVar2 = f.this.f81054c.f2081p[0].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
                D5.f fVar3 = f.this.f81054c.f2081p[1].f2076k;
                if (fVar3 != null) {
                    fVar3.a();
                }
            }
        }

        public f(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var, final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$reset, final C5.b val$rectPosVector) {
            this.f81052a = val$var;
            this.f81053b = val$reset;
            this.f81054c = val$rectPosVector;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new a());
        }
    }

    public class g implements D5.h {

        public class a implements Runnable {

            public final Variable f81058b;

            public a(final Variable val$variable) {
                this.f81058b = val$variable;
            }

            @Override
            public void run() {
                PS1Binder.this.X0(new ColorINT(this.f81058b.color_value.intColor).e0());
            }
        }

        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", PS1Binder.this.diffuse.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class h implements D5.h {

        public class a implements Runnable {

            public final Variable f81061b;

            public a(final Variable val$variable) {
                this.f81061b = val$variable;
            }

            @Override
            public void run() {
                ub.g u10 = C16165b.u(this.f81061b.str_value);
                PS1Binder.this.T0(u10 != null ? u10.p0() : null);
            }
        }

        public h() {
        }

        @Override
        public Variable get() {
            String str;
            Texture texture = PS1Binder.this.albedo;
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

    public class i implements D5.h {

        public class a implements Runnable {

            public final Variable f81064b;

            public a(final Variable val$variable) {
                this.f81064b = val$variable;
            }

            @Override
            public void run() {
                PS1Binder.this.U0(this.f81064b.int_value);
            }
        }

        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", PS1Binder.this.albedoSpriteIndex + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class j implements D5.h {

        public class a implements Runnable {

            public final Variable f81067b;

            public a(final Variable val$variable) {
                this.f81067b = val$variable;
            }

            @Override
            public void run() {
                PS1Binder.this.b1(this.f81067b.int_value);
            }
        }

        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", PS1Binder.this.textureSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class k extends c.n0<o> {

        public final ShaderBinder.b f81069a;

        public class a implements Runnable {

            public final o f81071b;

            public a(final o val$value) {
                this.f81071b = val$value;
            }

            @Override
            public void run() {
                PS1Binder.this.W0(this.f81071b);
            }
        }

        public k(final ShaderBinder.b val$listener) {
            this.f81069a = val$listener;
        }

        @Override
        public void a() {
            this.f81069a.a();
        }

        @Override
        public void set(o value) {
            K8.a.I(new a(value));
        }
    }

    public class l implements c.o0 {
        public l() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            PS1Binder pS1Binder = PS1Binder.this;
            entries.add(pS1Binder.O0("tilling", pS1Binder.uv.albedoTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            PS1Binder pS1Binder2 = PS1Binder.this;
            entries.add(pS1Binder2.O0("offset", pS1Binder2.uv.albedoOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return entries;
        }
    }

    public class m implements D5.h {

        public class a implements Runnable {

            public final Variable f81075b;

            public a(final Variable val$variable) {
                this.f81075b = val$variable;
            }

            @Override
            public void run() {
                PS1Binder.this.Y0(this.f81075b.booolean_value.booleanValue());
            }
        }

        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", PS1Binder.this.doubleSided + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class n implements D5.h {

        public class a implements Runnable {

            public final Variable f81078b;

            public a(final Variable val$variable) {
                this.f81078b = val$variable;
            }

            @Override
            public void run() {
                PS1Binder.this.Z0(this.f81078b.booolean_value.booleanValue());
            }
        }

        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", PS1Binder.this.drawInFront + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public enum o {
        BIT16,
        BIT8,
        BIT4
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

    public C5.b O0(String tittle, com.itsmagic.engine.Engines.Engine.Vector.Vector2 var, com.itsmagic.engine.Engines.Engine.Vector.Vector2 reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 3 : 2]);
        C5.b[] bVarArr = bVar.f2081p;
        d dVar = new d(var);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(dVar, "X", aVar);
        bVar.f2081p[1] = new C5.b(new e(var), "Y", aVar);
        if (reset != null) {
            bVar.f2081p[2] = new C5.b(new f(var, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    private EnumC13053a Q0() {
        p pVar;
        EnumC13053a enumC13053a = this.blendingMode;
        EnumC13053a enumC13053a2 = EnumC13053a.MASKED;
        if (enumC13053a != enumC13053a2) {
            return enumC13053a;
        }
        Texture texture = this.albedo;
        return this.diffuse.getFloatAlpha() >= 1.0f ? texture != null && (pVar = texture.instance) != null && pVar.J() && this.albedo.instance.C() : true ? enumC13053a2 : EnumC13053a.OPAQUE;
    }

    public void d1() {
        if (D() == null) {
            return;
        }
        j(this.albedo, C16165b.f130161g, "albedo", D(), this.albedoSpriteIndex);
        e1();
    }

    public void g1() {
        if (D() == null) {
            return;
        }
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
    }

    public void h1() {
        if (D() == null) {
            return;
        }
        FilamentMaterial D10 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = this.uv.albedoTilling.instance;
        D10.y("albedoTilling", vector2.f79838x, vector2.f79839y);
        FilamentMaterial D11 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector22 = this.uv.albedoOffset.instance;
        D11.y("albedoOffset", vector22.f79838x, vector22.f79839y);
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.Vector.Vector2 A(String entry) {
        try {
            com.itsmagic.engine.Engines.Engine.Vector.Vector2 b10 = this.uv.b(entry);
            if (b10 != null) {
                return b10;
            }
            return null;
        } catch (Exception unused) {
            return super.A(entry);
        }
    }

    @Override
    public List<C5.b> H(Context context, ShaderBinder.b listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String c10 = listener != null ? listener.c() : null;
        String d10 = listener != null ? listener.d() : null;
        steppedArrayList.add(F5.c.i("blend", EnumC13053a.class, this.blendingMode, new a(listener)));
        C5.b bVar = new C5.b(new g(), Lang.l(Lang.T.COLOR), b.a.Color);
        if (d10 != null && c10 != null) {
            bVar.f(d10, listener.b(), "diffuse", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar);
        steppedArrayList.add(new C5.b(new h(), "Albedo", b.a.Texture, context));
        Texture texture = this.albedo;
        if (texture != null && ub.g.x0(texture.instance)) {
            steppedArrayList.add(new C5.b(new i(), "Sprite index", b.a.SLInt));
        }
        steppedArrayList.add(new C5.b(new j(), "Texture size", b.a.SLInt));
        steppedArrayList.add(F5.c.i("Color depth", o.class, this.colorDepth, new k(listener)));
        steppedArrayList.add(F5.c.e("UV", new l()));
        m mVar = new m();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(mVar, "Double sided", aVar));
        steppedArrayList.add(new C5.b(new n(), "Draw in front", aVar));
        steppedArrayList.add(F5.c.e("Wind effect", new b(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Others", new c()));
        return steppedArrayList;
    }

    public int P0() {
        return this.albedoSpriteIndex;
    }

    @Override
    public boolean Q() {
        return this.drawInFront;
    }

    public float R0() {
        return this.localWindIntensity;
    }

    public float S0() {
        return this.windVerticality;
    }

    public void T0(Texture albedo) {
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
            d1();
            P();
        }
    }

    public void U0(int albedoSpriteIndex) {
        boolean z10 = this.albedoSpriteIndex != albedoSpriteIndex;
        this.albedoSpriteIndex = albedoSpriteIndex;
        if (z10) {
            Z();
            d1();
        }
    }

    public void V0(EnumC13053a blendingMode) {
        boolean z10 = this.blendingMode != blendingMode;
        this.blendingMode = blendingMode;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void W0(o colorDepth) {
        boolean z10 = this.colorDepth != colorDepth;
        this.colorDepth = colorDepth;
        if (z10) {
            Z();
            f1();
        }
    }

    @Override
    public void X() {
        T0(null);
    }

    public void X0(Color diffuse) {
        boolean z10 = this.diffuse.instance.intColor != diffuse.instance.intColor;
        this.diffuse = diffuse;
        if (z10) {
            Z();
            g1();
        }
    }

    public void Y0(boolean doubleSided) {
        boolean z10 = this.doubleSided != doubleSided;
        this.doubleSided = doubleSided;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void Z0(boolean drawInFront) {
        boolean z10 = this.drawInFront != drawInFront;
        this.drawInFront = drawInFront;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void a1(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = localWindIntensity;
        if (z10) {
            Z();
            M0();
        }
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        ColorINT c10;
        ub.g u10;
        String s10;
        SerializableShaderEntry d10 = SerializableShaderEntry.d("textureSize", SerializableShaderEntry.f81148b, dataList);
        if (d10 != null) {
            this.textureSize = (int) SerializableShaderEntry.g(d10);
        }
        SerializableShaderEntry d11 = SerializableShaderEntry.d("colorDepth", SerializableShaderEntry.f81157k, dataList);
        if (d11 != null && (s10 = SerializableShaderEntry.s(d11)) != null) {
            this.colorDepth = o.valueOf(s10);
        }
        SerializableShaderEntry d12 = SerializableShaderEntry.d("diffuse", SerializableShaderEntry.f81153g, dataList);
        if (d12 != null) {
            ColorINT c11 = SerializableShaderEntry.c(d12);
            if (c11 != null) {
                this.diffuse = c11.e0();
            }
        } else {
            SerializableShaderEntry d13 = SerializableShaderEntry.d("color", SerializableShaderEntry.f81153g, dataList);
            if (d13 != null && (c10 = SerializableShaderEntry.c(d13)) != null) {
                this.diffuse = c10.e0();
            }
        }
        SerializableShaderEntry d14 = SerializableShaderEntry.d("albedo", SerializableShaderEntry.f81152f, dataList);
        if (d14 != null) {
            ub.g u11 = SerializableShaderEntry.u(d14);
            if (u11 != null) {
                T0(u11.p0());
            }
        } else {
            SerializableShaderEntry d15 = SerializableShaderEntry.d(ResourceLocatorTool.TYPE_TEXTURE, SerializableShaderEntry.f81152f, dataList);
            if (d15 != null && (u10 = SerializableShaderEntry.u(d15)) != null) {
                T0(u10.p0());
            }
        }
        SerializableShaderEntry d16 = SerializableShaderEntry.d("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d16 != null) {
            U0(SerializableShaderEntry.h(d16));
        }
        SerializableShaderEntry d17 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d17 != null) {
            this.blendingMode = EnumC13053a.valueOf(SerializableShaderEntry.s(d17));
        }
        SerializableShaderEntry d18 = SerializableShaderEntry.d("doubleSided", "Boolean", dataList);
        if (d18 != null) {
            this.doubleSided = SerializableShaderEntry.a(d18);
        }
        SerializableShaderEntry d19 = SerializableShaderEntry.d("drawInFront", "Boolean", dataList);
        if (d19 != null) {
            this.drawInFront = SerializableShaderEntry.a(d19);
        }
        SerializableShaderEntry d20 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d20 != null) {
            a1(SerializableShaderEntry.g(d20));
        }
        SerializableShaderEntry d21 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d21 != null) {
            c1(SerializableShaderEntry.g(d21));
        }
        SerializableShaderEntry d22 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d22 != null) {
            n0(SerializableShaderEntry.h(d22));
        }
        this.uv.c(dataList);
    }

    public void b1(int textureSize) {
        int N10 = Nc.b.N(1, textureSize);
        boolean z10 = this.textureSize != N10;
        this.textureSize = N10;
        if (z10) {
            Z();
            e1();
        }
    }

    @Override
    public void c0(List<SerializableShaderEntry> dataList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SerializableShaderEntry e10 = SerializableShaderEntry.e("textureSize", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e10);
        SerializableShaderEntry.j(e10, this.textureSize);
        SerializableShaderEntry e11 = SerializableShaderEntry.e("colorDepth", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e11);
        SerializableShaderEntry.o(e11, this.colorDepth.name());
        SerializableShaderEntry e12 = SerializableShaderEntry.e("diffuse", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.l(e12, this.diffuse.instance);
        SerializableShaderEntry e13 = SerializableShaderEntry.e("albedo", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.k(e13, this.albedo);
        SerializableShaderEntry e14 = SerializableShaderEntry.e("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.j(e14, this.albedoSpriteIndex);
        SerializableShaderEntry e15 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.o(e15, this.blendingMode.toString());
        SerializableShaderEntry e16 = SerializableShaderEntry.e("doubleSided", "Boolean", dataList);
        steppedArrayList.add(e16);
        SerializableShaderEntry.q(e16, this.doubleSided);
        SerializableShaderEntry e17 = SerializableShaderEntry.e("drawInFront", "Boolean", dataList);
        steppedArrayList.add(e17);
        SerializableShaderEntry.q(e17, this.drawInFront);
        SerializableShaderEntry e18 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e18);
        SerializableShaderEntry.i(e18, this.localWindIntensity);
        SerializableShaderEntry e19 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e19);
        SerializableShaderEntry.i(e19, this.windVerticality);
        SerializableShaderEntry e20 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e20);
        SerializableShaderEntry.j(e20, K());
        this.uv.d(dataList, steppedArrayList);
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    public void c1(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            N0();
        }
    }

    @Override
    public boolean d() {
        if (this.diffuse.getFloatAlpha() <= 0.0f) {
            return false;
        }
        return super.d();
    }

    public final void e1() {
        int i10;
        int i11;
        if (D() == null) {
            return;
        }
        if (Texture.isRenderable(this.albedo)) {
            i10 = Nc.b.N(1, this.albedo.getWidth());
            i11 = Nc.b.N(1, this.albedo.getHeight());
        } else {
            i10 = 1;
            i11 = 1;
        }
        int F10 = Nc.b.F(1, this.textureSize, i10);
        int F11 = Nc.b.F(1, this.textureSize, i11);
        D().y("albedoSize", i10, i11);
        D().y("fakeSize", F10, F11);
    }

    public final void f1() {
        if (D() == null) {
            return;
        }
        D().H("depthMode", this.colorDepth.ordinal());
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        g1();
        d1();
        f1();
        M0();
        N0();
        h1();
    }

    @Override
    public void i0(String entry, float value) {
        if (entry.equalsIgnoreCase("windeffect")) {
            a1(value);
        } else if (entry.equalsIgnoreCase("windVerticality")) {
            c1(value);
        } else {
            super.i0(entry, value);
        }
    }

    @Override
    public List<ec.i> k(C4171b renderPass) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        boolean[] zArr = {false, true};
        for (EnumC13053a enumC13053a : EnumC13053a.values()) {
            for (int i10 = 0; i10 < 2; i10++) {
                boolean z10 = zArr[i10];
                for (int i11 = 0; i11 < 2; i11++) {
                    boolean z11 = zArr[i11];
                    steppedArrayList.add(new ec.i(MaterialBuilder.a.valueOf(enumC13053a.name()), 0.5f, MaterialBuilder.c.BACK, z10, null, !z11, !z11));
                }
            }
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
        PS1Binder pS1Binder = new PS1Binder();
        pS1Binder.albedo = this.albedo;
        pS1Binder.albedoSpriteIndex = this.albedoSpriteIndex;
        pS1Binder.diffuse = this.diffuse.copy();
        pS1Binder.textureSize = this.textureSize;
        pS1Binder.colorDepth = this.colorDepth;
        pS1Binder.uv = this.uv.a();
        pS1Binder.blendingMode = this.blendingMode;
        pS1Binder.doubleSided = this.doubleSided;
        pS1Binder.drawInFront = this.drawInFront;
        pS1Binder.localWindIntensity = this.localWindIntensity;
        pS1Binder.windVerticality = this.windVerticality;
        pS1Binder.n0(K());
        return pS1Binder;
    }

    @Override
    public void r0(String entry, p texture) {
        if (!entry.equalsIgnoreCase("albedo") && !entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            super.r0(entry, texture);
        } else if (texture != null) {
            T0(texture.p0());
        } else {
            T0(null);
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
            T0(null);
            return;
        }
        ub.g u10 = C16165b.u(file);
        if (u10 != null) {
            T0(u10.p0());
        } else {
            T0(null);
        }
    }

    @Override
    public float u(String entry) {
        return entry.equalsIgnoreCase("windeffect") ? this.localWindIntensity : entry.equalsIgnoreCase("windVerticality") ? this.windVerticality : super.u(entry);
    }

    @Override
    public void w0(String entry, com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2) {
        try {
            this.uv.e(entry, vector2);
            h1();
            Z();
        } catch (Exception unused) {
            super.w0(entry, vector2);
        }
    }

    @Override
    public ec.i y0(ec.i variance, C4171b renderPass) {
        EnumC13053a Q02 = Q0();
        boolean z10 = variance.a().ordinal() != Q02.ordinal();
        if (variance.i() != this.doubleSided) {
            z10 = true;
        }
        if (variance.g() == this.drawInFront) {
            z10 = true;
        }
        if (!z10) {
            return variance;
        }
        MaterialBuilder.a valueOf = MaterialBuilder.a.valueOf(Q02.name());
        MaterialBuilder.c cVar = MaterialBuilder.c.BACK;
        boolean z11 = this.doubleSided;
        boolean z12 = this.drawInFront;
        return new ec.i(valueOf, 0.5f, cVar, z11, null, !z12, !z12);
    }
}
