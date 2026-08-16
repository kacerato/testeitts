package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit;

import C5.b;
import F5.c;
import G5.a;
import Ic.C2636o;
import JAVARuntime.Color;
import JAVARuntime.Order;
import JAVARuntime.Runnable;
import JAVARuntime.Texture;
import JAVARuntime.Vector2;
import Xb.C3240q;
import Xb.O1;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.LinearLayout;
import androidx.annotation.Keep;
import cc.C4171b;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.DecalProjector;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.BaseGeneratedTexturesShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitORMBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.EnumC13053a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jdt.core.JavaCore;
import ub.p;
import yb.C16165b;

@P8.o
public class LitORMBinder extends BaseGeneratedTexturesShaderBinder {
    public Texture albedo;
    public EnumC13053a blendingMode;

    @Keep
    public final ec.d blendingMode_OFCBRL;

    @Order(idx = {10})
    public boolean discardEdges;

    @Keep
    public final ec.d discardEdges_OFCBRL;
    private boolean doubleSided;

    @Keep
    public final ec.d doubleSided_OFCBRL;
    public Texture emissive;
    private final ub.n emissiveFallback;
    private final Bb.e emissiveListener;

    @eb.f
    public float emissiveNits;
    private int emissiveSpriteIndex;
    public Texture height;
    private boolean heightActiveInShader;

    @eb.f
    private float heightIntensity;
    private final Bb.e heightListener;

    @eb.f
    private float heightNormalStrength;

    @eb.f
    private float heightQuality;
    private int heightSpriteIndex;

    @eb.f
    private float localWindIntensity;

    @Keep
    public final ec.d localWindIntensity_OFCBRL;
    private final List<O1> noiseRefList;
    public Texture normal;
    public Texture opacity;
    public Texture orm;
    private final ub.n ormFallback;
    private final Bb.e ormListener;
    public UVs uv;
    public cc.e uvSource;

    @Keep
    public final ec.d uvSource_OFCBRL;

    @eb.f
    private float windVerticality;

    @Keep
    public final ec.d windVerticality_OFCBRL;

    @eb.f
    public float worldUVSize;

    @Keep
    public final ec.d worldUVSize_OFCBRL;
    private final List<Property> properties = new SteppedArrayList();
    private boolean textureSourceOpen = false;

    @eb.f
    public float alphaCutout = 0.5f;

    @eb.f
    public Color diffuse = new Color(224, 224, 224);

    @Keep
    public final ec.d diffuse_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            LitORMBinder.this.z2();
        }
    };
    private int albedoSpriteIndex = 0;
    private final Bb.e albedoListener = new Bb.e() {
        @Override
        public final void b() {
            LitORMBinder.this.y2();
        }
    };
    private int opacitySpriteIndex = 0;
    private final Bb.e opacityListener = new Bb.e() {
        @Override
        public final void b() {
            LitORMBinder.this.K2();
        }
    };
    private int normalSpriteIndex = 0;
    private final Bb.e normalListener = new Bb.e() {
        @Override
        public final void b() {
            LitORMBinder.this.H2();
        }
    };

    @eb.f
    private float normalStrength = 1.5f;
    private int ormSpriteIndex = 0;

    @P8.o
    public static class UVs {

        @Order(idx = {0})
        public Vector2 albedoTilling = new Vector2(1.0f);

        @Order(idx = {1})
        public Vector2 albedoOffset = new Vector2();

        @Order(idx = {2})
        public Vector2 normalTilling = new Vector2(1.0f);

        @Order(idx = {3})
        public Vector2 normalOffset = new Vector2();

        @Order(idx = {4})
        public Vector2 ormTilling = new Vector2(1.0f);

        @Order(idx = {5})
        public Vector2 ormOffset = new Vector2();

        @Order(idx = {12})
        public Vector2 heightTilling = new Vector2(1.0f);

        @Order(idx = {13})
        public Vector2 heightOffset = new Vector2();

        @Order(idx = {10})
        public Vector2 emissiveTilling = new Vector2(1.0f);

        @Order(idx = {11})
        public Vector2 emissiveOffset = new Vector2();

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
            throw new EntryNotFoundException("Entry of type Vector2 not found with name " + entry);
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
            throw new EntryNotFoundException("Entry of type Vector2 not found with name " + entry);
        }
    }

    public class a extends c.n0<EnumC13053a> {

        public final ShaderBinder.b f80312a;

        public class C1383a implements Runnable {

            public final EnumC13053a f80314b;

            public C1383a(final EnumC13053a val$value) {
                this.f80314b = val$value;
            }

            @Override
            public void run() {
                LitORMBinder.this.g2(this.f80314b);
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f80312a = val$listener;
        }

        @Override
        public void a() {
            this.f80312a.a();
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new C1383a(value));
        }
    }

    public class b implements c.o0 {

        public final String f80316a;

        public final String f80317b;

        public final ShaderBinder.b f80318c;

        public class a implements D5.h {

            public class RunnableC1384a implements Runnable {

                public final Variable f80321b;

                public RunnableC1384a(final Variable val$variable) {
                    this.f80321b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.l2(Nc.b.G(this.f80321b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.emissiveNits + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1384a(variable));
                }
            }
        }

        public b(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80316a = val$objectUID;
            this.f80317b = val$componentUID;
            this.f80318c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Nits", b.a.SLFloat);
            String str = this.f80316a;
            if (str != null && this.f80317b != null) {
                bVar.f(str, this.f80318c.b(), "emissiveNits", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            return entries;
        }
    }

    public class c implements c.o0 {

        public final String f80323a;

        public final String f80324b;

        public final ShaderBinder.b f80325c;

        public class a implements D5.h {

            public class RunnableC1385a implements Runnable {

                public final Variable f80328b;

                public RunnableC1385a(final Variable val$variable) {
                    this.f80328b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.q2(Nc.b.G(this.f80328b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1385a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80331b;

                public a(final Variable val$variable) {
                    this.f80331b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.w2(Math.max(0.0f, Math.min(1.0f, this.f80331b.float_value)));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public c(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80323a = val$objectUID;
            this.f80324b = val$componentUID;
            this.f80325c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Intensity", b.a.SLFloat);
            String str = this.f80323a;
            if (str != null && this.f80324b != null) {
                bVar.f(str, this.f80325c.b(), "localWindIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), "Verticality", b.a.SLFloat01);
            String str2 = this.f80323a;
            if (str2 != null && this.f80324b != null) {
                bVar2.f(str2, this.f80325c.b(), "windVerticality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar2);
            return entries;
        }
    }

    public class d implements c.o0 {

        public class a extends c.n0<cc.e> {

            public class C1386a implements Runnable {

                public final cc.e f80335b;

                public C1386a(final cc.e val$value) {
                    this.f80335b = val$value;
                }

                @Override
                public void run() {
                    LitORMBinder.this.v2(this.f80335b);
                }
            }

            public a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void set(cc.e value) {
                K8.a.I(new C1386a(value));
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80338b;

                public a(final Variable val$variable) {
                    this.f80338b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.s2(Math.max(0.0f, this.f80338b.float_value));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.normalStrength + "");
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

                public final Variable f80341b;

                public a(final Variable val$variable) {
                    this.f80341b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.n0(Math.max(-32768, Math.min(32767, this.f80341b.int_value)));
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.K() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class C1387d implements D5.h {

            public class a implements Runnable {

                public final Variable f80344b;

                public a(final Variable val$variable) {
                    this.f80344b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.x2(this.f80344b.float_value);
                }
            }

            public C1387d() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.worldUVSize + "");
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

                public final Variable f80347b;

                public a(final Variable val$variable) {
                    this.f80347b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.j2(this.f80347b.booolean_value.booleanValue());
                }
            }

            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.doubleSided + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public d() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i("UV Source", cc.e.class, LitORMBinder.this.uvSource, new a()));
            b bVar = new b();
            b.a aVar = b.a.SLFloat;
            entries.add(new C5.b(bVar, "Normal Strength", aVar));
            entries.add(new C5.b(new c(), "Material ID", b.a.SLInt));
            entries.add(new C5.b(new C1387d(), "World uv size", aVar));
            entries.add(new C5.b(new e(), "Double sided", b.a.SLBoolean));
            return entries;
        }
    }

    public class e implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80349a;

        public class a implements Runnable {

            public final Variable f80351b;

            public a(final Variable val$variable) {
                this.f80351b = val$variable;
            }

            @Override
            public void run() {
                e eVar = e.this;
                eVar.f80349a.f79838x = this.f80351b.float_value;
                LitORMBinder.this.L2();
                LitORMBinder.this.Z();
            }
        }

        public e(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80349a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80349a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80349a.f79838x + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80353a;

        public class a implements Runnable {

            public final Variable f80355b;

            public a(final Variable val$variable) {
                this.f80355b = val$variable;
            }

            @Override
            public void run() {
                f fVar = f.this;
                fVar.f80353a.f79839y = this.f80355b.float_value;
                LitORMBinder.this.L2();
                LitORMBinder.this.Z();
            }
        }

        public f(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80353a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80353a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80353a.f79839y + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class g implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80357a;

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80358b;

        public final C5.b f80359c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                g gVar = g.this;
                com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = gVar.f80357a;
                if (vector2 != null) {
                    vector2.x0(gVar.f80358b);
                    LitORMBinder.this.L2();
                    LitORMBinder.this.Z();
                }
                D5.f fVar = g.this.f80359c.f2081p[0].f2076k;
                if (fVar != null) {
                    fVar.a();
                }
                D5.f fVar2 = g.this.f80359c.f2081p[1].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
            }
        }

        public g(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var, final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$reset, final C5.b val$rectPosVector) {
            this.f80357a = val$var;
            this.f80358b = val$reset;
            this.f80359c = val$rectPosVector;
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

    public class h implements D5.h {

        public class a implements Runnable {

            public final Variable f80363b;

            public a(final Variable val$variable) {
                this.f80363b = val$variable;
            }

            @Override
            public void run() {
                LitORMBinder.this.h2(new ColorINT(this.f80363b.color_value.intColor).e0());
            }
        }

        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", LitORMBinder.this.diffuse.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class i extends a.j {

        public final ShaderBinder.b f80365a;

        public class a implements Runnable {

            public final ub.g f80367b;

            public class RunnableC1388a implements Runnable {
                public RunnableC1388a() {
                }

                @Override
                public void run() {
                }
            }

            public a(final ub.g val$fileTexture) {
                this.f80367b = val$fileTexture;
            }

            @Override
            public void run() {
                LitORMBinder litORMBinder = LitORMBinder.this;
                ub.g gVar = this.f80367b;
                litORMBinder.f2(gVar != null ? gVar.p0() : null);
                LitORMBinder.this.D0();
                N7.c.j0(new RunnableC1388a());
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80371b;

                public a(final Variable val$variable) {
                    this.f80371b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.albedoSpriteIndex = this.f80371b.int_value;
                    LitORMBinder.this.y2();
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.albedoSpriteIndex + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                LitORMBinder.this.G2();
            }
        }

        public i(final ShaderBinder.b val$listener) {
            this.f80365a = val$listener;
        }

        @Override
        public void a() {
            this.f80365a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void g() {
            K8.a.I(new c());
        }

        @Override
        public String get() {
            Texture texture = LitORMBinder.this.albedo;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return ((ub.g) pVar).getFile();
                }
            }
            return "";
        }

        @Override
        public Texture getInstance() {
            return LitORMBinder.this.albedo;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitORMBinder litORMBinder = LitORMBinder.this;
            linkedList.add(litORMBinder.L1("tilling", litORMBinder.uv.albedoTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitORMBinder litORMBinder2 = LitORMBinder.this;
            linkedList.add(litORMBinder2.L1("offset", litORMBinder2.uv.albedoOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitORMBinder.this.M1(fieldName);
        }
    }

    public class j extends a.j {

        public final ShaderBinder.b f80374a;

        public class a implements Runnable {

            public final ub.g f80376b;

            public class C1389a implements Runnable {
                public C1389a() {
                }

                @Override
                public void run() {
                }
            }

            public a(final ub.g val$fileTexture) {
                this.f80376b = val$fileTexture;
            }

            @Override
            public void run() {
                LitORMBinder litORMBinder = LitORMBinder.this;
                ub.g gVar = this.f80376b;
                litORMBinder.r2(gVar != null ? gVar.p0() : null);
                N7.c.j0(new C1389a());
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80380b;

                public a(final Variable val$variable) {
                    this.f80380b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.normalSpriteIndex = this.f80380b.int_value;
                    LitORMBinder.this.H2();
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.normalSpriteIndex + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                LitORMBinder.this.G2();
            }
        }

        public j(final ShaderBinder.b val$listener) {
            this.f80374a = val$listener;
        }

        @Override
        public void a() {
            this.f80374a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void g() {
            K8.a.I(new c());
        }

        @Override
        public String get() {
            Texture texture = LitORMBinder.this.normal;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return ((ub.g) pVar).getFile();
                }
            }
            return "";
        }

        @Override
        public Texture getInstance() {
            return LitORMBinder.this.normal;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitORMBinder litORMBinder = LitORMBinder.this;
            linkedList.add(litORMBinder.L1("tilling", litORMBinder.uv.normalTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitORMBinder litORMBinder2 = LitORMBinder.this;
            linkedList.add(litORMBinder2.L1("offset", litORMBinder2.uv.normalOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitORMBinder.this.M1(fieldName);
        }
    }

    public class k extends a.j {

        public final ShaderBinder.b f80383a;

        public class a implements Runnable {

            public final ub.g f80385b;

            public class C1390a implements Runnable {
                public C1390a() {
                }

                @Override
                public void run() {
                }
            }

            public a(final ub.g val$fileTexture) {
                this.f80385b = val$fileTexture;
            }

            @Override
            public void run() {
                LitORMBinder litORMBinder = LitORMBinder.this;
                ub.g gVar = this.f80385b;
                litORMBinder.t2(gVar != null ? gVar.p0() : null);
                N7.c.j0(new C1390a());
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80389b;

                public a(final Variable val$variable) {
                    this.f80389b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.ormSpriteIndex = this.f80389b.int_value;
                    LitORMBinder.this.J2();
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.ormSpriteIndex + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                LitORMBinder.this.G2();
            }
        }

        public k(final ShaderBinder.b val$listener) {
            this.f80383a = val$listener;
        }

        @Override
        public void a() {
            this.f80383a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public boolean e() {
            return false;
        }

        @Override
        public void g() {
            K8.a.I(new c());
        }

        @Override
        public String get() {
            Texture texture = LitORMBinder.this.orm;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return ((ub.g) pVar).getFile();
                }
            }
            return "";
        }

        @Override
        public Texture getInstance() {
            return LitORMBinder.this.orm;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitORMBinder litORMBinder = LitORMBinder.this;
            linkedList.add(litORMBinder.L1("tilling", litORMBinder.uv.ormTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitORMBinder litORMBinder2 = LitORMBinder.this;
            linkedList.add(litORMBinder2.L1("offset", litORMBinder2.uv.ormOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitORMBinder.this.M1(fieldName);
        }
    }

    public class l extends a.j {

        public final ShaderBinder.b f80392a;

        public class a implements Runnable {

            public final ub.g f80394b;

            public class C1391a implements Runnable {
                public C1391a() {
                }

                @Override
                public void run() {
                }
            }

            public a(final ub.g val$fileTexture) {
                this.f80394b = val$fileTexture;
            }

            @Override
            public void run() {
                LitORMBinder litORMBinder = LitORMBinder.this;
                ub.g gVar = this.f80394b;
                litORMBinder.m2(gVar != null ? gVar.p0() : null);
                N7.c.j0(new C1391a());
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80398b;

                public a(final Variable val$variable) {
                    this.f80398b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.heightSpriteIndex = this.f80398b.int_value;
                    LitORMBinder.this.C2();
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.heightSpriteIndex + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                LitORMBinder.this.G2();
            }
        }

        public l(final ShaderBinder.b val$listener) {
            this.f80392a = val$listener;
        }

        @Override
        public void a() {
            this.f80392a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void g() {
            K8.a.I(new c());
        }

        @Override
        public String get() {
            Texture texture = LitORMBinder.this.height;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return ((ub.g) pVar).getFile();
                }
            }
            return "";
        }

        @Override
        public Texture getInstance() {
            return LitORMBinder.this.height;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitORMBinder litORMBinder = LitORMBinder.this;
            linkedList.add(litORMBinder.L1("tilling", litORMBinder.uv.heightTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitORMBinder litORMBinder2 = LitORMBinder.this;
            linkedList.add(litORMBinder2.L1("offset", litORMBinder2.uv.heightOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitORMBinder.this.M1(fieldName);
        }
    }

    public class m extends a.j {

        public final ShaderBinder.b f80401a;

        public class a implements Runnable {

            public final ub.g f80403b;

            public class C1392a implements Runnable {
                public C1392a() {
                }

                @Override
                public void run() {
                }
            }

            public a(final ub.g val$fileTexture) {
                this.f80403b = val$fileTexture;
            }

            @Override
            public void run() {
                LitORMBinder litORMBinder = LitORMBinder.this;
                ub.g gVar = this.f80403b;
                litORMBinder.k2(gVar != null ? gVar.p0() : null);
                N7.c.j0(new C1392a());
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80407b;

                public a(final Variable val$variable) {
                    this.f80407b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.emissiveSpriteIndex = this.f80407b.int_value;
                    LitORMBinder.this.A2();
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.emissiveSpriteIndex + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                LitORMBinder.this.G2();
            }
        }

        public m(final ShaderBinder.b val$listener) {
            this.f80401a = val$listener;
        }

        @Override
        public void a() {
            this.f80401a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void c(ColorINT color) {
            LitORMBinder.this.emissiveFallback.Y(0, 0, color);
            LitORMBinder.this.emissiveFallback.apply();
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public void g() {
            K8.a.I(new c());
        }

        @Override
        public String get() {
            Texture texture = LitORMBinder.this.emissive;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return ((ub.g) pVar).getFile();
                }
            }
            return "";
        }

        @Override
        public Texture getInstance() {
            return LitORMBinder.this.emissive;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitORMBinder litORMBinder = LitORMBinder.this;
            linkedList.add(litORMBinder.L1("tilling", litORMBinder.uv.emissiveTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitORMBinder litORMBinder2 = LitORMBinder.this;
            linkedList.add(litORMBinder2.L1("offset", litORMBinder2.uv.emissiveOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
            return linkedList;
        }

        @Override
        public ColorINT j() {
            return LitORMBinder.this.emissiveFallback.i(0, 0);
        }

        @Override
        public O1 k(String fieldName) {
            return LitORMBinder.this.M1(fieldName);
        }
    }

    public class n extends a.j {

        public final ShaderBinder.b f80410a;

        public class a implements Runnable {

            public final ub.g f80412b;

            public a(final ub.g val$fileTexture) {
                this.f80412b = val$fileTexture;
            }

            @Override
            public void run() {
                LitORMBinder litORMBinder = LitORMBinder.this;
                ub.g gVar = this.f80412b;
                litORMBinder.u2(gVar != null ? gVar.p0() : null);
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80415b;

                public a(final Variable val$variable) {
                    this.f80415b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.opacitySpriteIndex = this.f80415b.int_value;
                    LitORMBinder.this.K2();
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.opacitySpriteIndex + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                LitORMBinder.this.G2();
            }
        }

        public n(final ShaderBinder.b val$listener) {
            this.f80410a = val$listener;
        }

        @Override
        public void a() {
            this.f80410a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void g() {
            K8.a.I(new c());
        }

        @Override
        public String get() {
            Texture texture = LitORMBinder.this.opacity;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return ((ub.g) pVar).getFile();
                }
            }
            return "";
        }

        @Override
        public Texture getInstance() {
            return LitORMBinder.this.opacity;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitORMBinder.this.M1(fieldName);
        }
    }

    public class o implements c.o0 {

        public final String f80418a;

        public final String f80419b;

        public final ShaderBinder.b f80420c;

        public class a implements D5.h {

            public class RunnableC1393a implements Runnable {

                public final Variable f80423b;

                public RunnableC1393a(final Variable val$variable) {
                    this.f80423b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.n2(Nc.b.G(this.f80423b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.heightIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1393a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80426b;

                public a(final Variable val$variable) {
                    this.f80426b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.o2(Nc.b.G(this.f80426b.float_value));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.heightNormalStrength + "");
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

                public final Variable f80429b;

                public a(final Variable val$variable) {
                    this.f80429b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.p2(Nc.b.G(this.f80429b.float_value));
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.heightQuality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class d implements D5.h {

            public class a implements Runnable {

                public final Variable f80432b;

                public a(final Variable val$variable) {
                    this.f80432b = val$variable;
                }

                @Override
                public void run() {
                    LitORMBinder.this.i2(this.f80432b.booolean_value.booleanValue());
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitORMBinder.this.discardEdges + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public o(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80418a = val$objectUID;
            this.f80419b = val$componentUID;
            this.f80420c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat01;
            C5.b bVar = new C5.b(aVar, "Intensity", aVar2);
            String str = this.f80418a;
            if (str != null && this.f80419b != null) {
                bVar.f(str, this.f80420c.b(), DecalProjector.f77444q0, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), "Normal Strength", aVar2);
            String str2 = this.f80418a;
            if (str2 != null && this.f80419b != null) {
                bVar2.f(str2, this.f80420c.b(), "heightNormalStrength", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar2);
            C5.b bVar3 = new C5.b(new c(), "Quality", aVar2);
            String str3 = this.f80418a;
            if (str3 != null && this.f80419b != null) {
                bVar3.f(str3, this.f80420c.b(), "heightQuality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar3);
            entries.add(new C5.b(new d(), "Discard edges", b.a.SLBoolean));
            return entries;
        }
    }

    public LitORMBinder() {
        Bb.e eVar = new Bb.e() {
            @Override
            public final void b() {
                LitORMBinder.this.J2();
            }
        };
        this.ormListener = eVar;
        ub.n nVar = new ub.n(1, 1, true, false);
        this.ormFallback = nVar;
        nVar.Y(0, 0, new ColorINT(1.0f, 0.3f, 0.05f));
        nVar.e(eVar);
        this.emissiveSpriteIndex = 0;
        Bb.e eVar2 = new Bb.e() {
            @Override
            public final void b() {
                LitORMBinder.this.A2();
            }
        };
        this.emissiveListener = eVar2;
        ub.n nVar2 = new ub.n(1, 1, true, false);
        this.emissiveFallback = nVar2;
        nVar2.Y(0, 0, new ColorINT(0, 0, 0));
        nVar2.apply();
        nVar2.e(eVar2);
        this.emissiveNits = 200.0f;
        this.heightSpriteIndex = 0;
        this.heightListener = new Bb.e() {
            @Override
            public final void b() {
                LitORMBinder.this.C2();
            }
        };
        this.heightIntensity = 0.1f;
        this.heightNormalStrength = 0.4f;
        this.heightQuality = 0.33333334f;
        this.discardEdges = true;
        this.discardEdges_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitORMBinder.this.P();
            }
        };
        this.uvSource = cc.e.Vertex;
        this.uvSource_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitORMBinder.this.P();
            }
        };
        this.worldUVSize = 1.0f;
        this.worldUVSize_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitORMBinder.this.M2();
            }
        };
        this.localWindIntensity = 0.0f;
        this.localWindIntensity_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitORMBinder.this.J1();
            }
        };
        this.windVerticality = 1.0f;
        this.windVerticality_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitORMBinder.this.K1();
            }
        };
        this.uv = new UVs();
        this.blendingMode = EnumC13053a.MASKED;
        this.blendingMode_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitORMBinder.this.P();
            }
        };
        this.doubleSided = false;
        this.doubleSided_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitORMBinder.this.P();
            }
        };
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.noiseRefList = steppedArrayList;
        steppedArrayList.add(new O1("albedo"));
        steppedArrayList.add(new O1("opacity"));
        steppedArrayList.add(new O1(JavaCore.NORMAL));
        steppedArrayList.add(new O1("roughness"));
        steppedArrayList.add(new O1("metallic"));
        steppedArrayList.add(new O1("ao"));
        steppedArrayList.add(new O1("emissive"));
        steppedArrayList.add(new O1("height"));
    }

    public void A2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            A0(this.emissive, this.emissiveFallback, C16165b.f130163i, "emissive", D(), this.emissiveSpriteIndex);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.T1();
                }
            });
        }
    }

    private void B2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("emissiveNits", this.emissiveNits);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.U1();
                }
            });
        }
    }

    public void G2() {
    }

    public void H2() {
        if (D() == null) {
            return;
        }
        super.T(this.normal, false, "normal map");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.Z1();
                }
            });
            return;
        }
        H0();
        C0(F0(), C16165b.f130166l, "normalMap", D(), this.normalSpriteIndex);
        I2();
    }

    private void I2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("normalStrength", this.normalStrength);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.a2();
                }
            });
        }
    }

    public void J1() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    public void K1() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.w(this.windVerticality);
        }
    }

    public C5.b L1(String tittle, com.itsmagic.engine.Engines.Engine.Vector.Vector2 var, com.itsmagic.engine.Engines.Engine.Vector.Vector2 reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 3 : 2]);
        C5.b[] bVarArr = bVar.f2081p;
        e eVar = new e(var);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(eVar, "X", aVar);
        bVar.f2081p[1] = new C5.b(new f(var), "Y", aVar);
        if (reset != null) {
            bVar.f2081p[2] = new C5.b(new g(var, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public void L2() {
        if (D() == null) {
            return;
        }
        FilamentMaterial D10 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = this.uv.albedoTilling.instance;
        D10.y("albedoTilling", vector2.f79838x, vector2.f79839y);
        FilamentMaterial D11 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector22 = this.uv.albedoOffset.instance;
        D11.y("albedoOffset", vector22.f79838x, vector22.f79839y);
        FilamentMaterial D12 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector23 = this.uv.normalTilling.instance;
        D12.y("normalTilling", vector23.f79838x, vector23.f79839y);
        FilamentMaterial D13 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector24 = this.uv.normalOffset.instance;
        D13.y("normalOffset", vector24.f79838x, vector24.f79839y);
        FilamentMaterial D14 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector25 = this.uv.ormTilling.instance;
        D14.y("ormTilling", vector25.f79838x, vector25.f79839y);
        FilamentMaterial D15 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector26 = this.uv.ormOffset.instance;
        D15.y("ormOffset", vector26.f79838x, vector26.f79839y);
        FilamentMaterial D16 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector27 = this.uv.heightTilling.instance;
        D16.y("heightTilling", vector27.f79838x, vector27.f79839y);
        FilamentMaterial D17 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector28 = this.uv.heightOffset.instance;
        D17.y("heightOffset", vector28.f79838x, vector28.f79839y);
        FilamentMaterial D18 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector29 = this.uv.emissiveTilling.instance;
        D18.y("emissiveTilling", vector29.f79838x, vector29.f79839y);
        FilamentMaterial D19 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector210 = this.uv.emissiveOffset.instance;
        D19.y("emissiveOffset", vector210.f79838x, vector210.f79839y);
    }

    private EnumC13053a N1() {
        p pVar;
        p pVar2;
        EnumC13053a enumC13053a = this.blendingMode;
        EnumC13053a enumC13053a2 = EnumC13053a.MASKED;
        if (enumC13053a != enumC13053a2) {
            return enumC13053a;
        }
        Texture texture = this.albedo;
        boolean z10 = texture != null && (pVar2 = texture.instance) != null && pVar2.J() && this.albedo.instance.C();
        Texture texture2 = this.opacity;
        if (texture2 != null && (pVar = texture2.instance) != null && pVar.J()) {
            z10 = true;
        }
        return this.diffuse.getFloatAlpha() >= 1.0f ? z10 : true ? enumC13053a2 : EnumC13053a.OPAQUE;
    }

    public void R1() {
        j(this.albedo, C16165b.f130161g, "albedo", D(), this.albedoSpriteIndex);
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == N1().ordinal()) {
            return;
        }
        P();
    }

    public void S1() {
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == N1().ordinal()) {
            return;
        }
        P();
    }

    private Texture e2(Material material, NoiseData noiseData, String fileName) {
        File z10 = Tc.b.z(material.f78885e);
        ub.j jVar = new ub.j(noiseData);
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
        K8.a.I(new C3240q(u10));
        return u10.p0();
    }

    public void y2() {
        if (D() == null) {
            return;
        }
        super.T(this.albedo, true, "albedo");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.R1();
                }
            });
            return;
        }
        j(this.albedo, C16165b.f130161g, "albedo", D(), this.albedoSpriteIndex);
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == N1().ordinal()) {
            return;
        }
        P();
    }

    public void z2() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.S1();
                }
            });
            return;
        }
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == N1().ordinal()) {
            return;
        }
        P();
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

    public final void C2() {
        if (D() == null) {
            return;
        }
        super.T(this.height, false, "height");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.V1();
                }
            });
        } else if (this.heightActiveInShader) {
            j(this.height, C16165b.f130163i, "heightMap", D(), this.heightSpriteIndex);
            E2();
        }
    }

    public final void D2() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.W1();
                }
            });
        } else if (this.heightActiveInShader) {
            D().w(DecalProjector.f77444q0, this.heightIntensity * 0.2f);
        }
    }

    @Override
    public Texture E0() {
        return this.albedo;
    }

    public final void E2() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.X1();
                }
            });
        } else if (this.heightActiveInShader) {
            D().w("heightNormalStrength", this.heightNormalStrength);
        }
    }

    public final void F2() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.Y1();
                }
            });
        } else if (this.heightActiveInShader) {
            D().w(DecalProjector.f77446v0, Nc.b.M(2.0f, Nc.b.w0(this.heightQuality * 24.0f)));
            D().w(DecalProjector.f77430D0, Nc.b.M(4.0f, Nc.b.w0(this.heightQuality * 96.0f)));
        }
    }

    @Override
    public Texture G0() {
        return this.normal;
    }

    @Override
    public List<C5.b> H(Context context, ShaderBinder.b listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String c10 = listener != null ? listener.c() : null;
        String d10 = listener != null ? listener.d() : null;
        steppedArrayList.add(F5.c.i("blend", EnumC13053a.class, this.blendingMode, new a(listener)));
        C5.b bVar = new C5.b(new h(), Lang.l(Lang.T.COLOR), b.a.Color);
        if (d10 != null && c10 != null) {
            bVar.f(d10, listener.b(), "diffuse", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar);
        new G5.a("albedo", new i(listener)).C(steppedArrayList);
        new G5.a(JavaCore.NORMAL, new j(listener)).C(steppedArrayList);
        new G5.a("orm", new k(listener)).C(steppedArrayList);
        new G5.a("height", new l(listener)).C(steppedArrayList);
        new G5.a("emissive", new m(listener)).C(steppedArrayList);
        new G5.a("opacity", new n(listener)).C(steppedArrayList);
        steppedArrayList.add(F5.c.e("Height", new o(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Emissive", new b(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Wind effect", new c(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Others", new d()));
        return steppedArrayList;
    }

    public final void J2() {
        if (D() == null) {
            return;
        }
        super.T(this.orm, false, "orm");
        if (K8.a.r()) {
            A0(this.orm, this.ormFallback, C16165b.f130163i, "ormMap", D(), this.ormSpriteIndex);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.b2();
                }
            });
        }
    }

    public final void K2() {
        if (D() == null) {
            return;
        }
        super.T(this.opacity, false, "opacity");
        if (K8.a.r()) {
            j(this.opacity, C16165b.f130161g, "opacity", D(), this.opacitySpriteIndex);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.c2();
                }
            });
        }
    }

    public O1 M1(String fieldName) {
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            if (o12.f28153d.equals(fieldName)) {
                return o12;
            }
        }
        return null;
    }

    public final void M2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("worldUVScale", this.worldUVSize);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitORMBinder.this.d2();
                }
            });
        }
    }

    public float O1() {
        return this.localWindIntensity;
    }

    public float P1() {
        return this.windVerticality;
    }

    public final void Q1() {
        D0();
        H0();
        H2();
    }

    public final void T1() {
        A0(this.emissive, this.emissiveFallback, C16165b.f130163i, "emissive", D(), this.emissiveSpriteIndex);
    }

    public final void U1() {
        D().w("emissiveNits", this.emissiveNits);
    }

    public final void V1() {
        if (this.heightActiveInShader) {
            j(this.height, C16165b.f130163i, "heightMap", D(), this.heightSpriteIndex);
            E2();
        }
    }

    public final void W1() {
        if (this.heightActiveInShader) {
            D().w(DecalProjector.f77444q0, this.heightIntensity);
        }
    }

    @Override
    public void X() {
        f2(null);
        u2(null);
        r2(null);
        t2(null);
        m2(null);
        k2(null);
    }

    public final void X1() {
        if (this.heightActiveInShader) {
            D().w("heightNormalStrength", this.heightNormalStrength);
        }
    }

    public final void Y1() {
        if (this.heightActiveInShader) {
            D().w(DecalProjector.f77446v0, Nc.b.M(2.0f, Nc.b.w0(this.heightQuality * 24.0f)));
            D().w(DecalProjector.f77430D0, Nc.b.M(4.0f, Nc.b.w0(this.heightQuality * 96.0f)));
        }
    }

    public final void Z1() {
        H0();
        C0(F0(), C16165b.f130166l, "normalMap", D(), this.normalSpriteIndex);
        I2();
    }

    @Override
    public boolean a0() {
        return (F0() == null && this.orm == null && this.height == null) ? false : true;
    }

    public final void a2() {
        D().w("normalStrength", this.normalStrength);
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        ColorINT c10;
        ub.g u10;
        String s10;
        ub.g u11;
        ub.g u12;
        ub.g u13;
        ub.g u14;
        ub.g u15;
        ColorINT c11;
        SerializableShaderEntry d10 = SerializableShaderEntry.d("textureSourceOpen", "Boolean", dataList);
        if (d10 != null) {
            this.textureSourceOpen = SerializableShaderEntry.a(d10);
        }
        SerializableShaderEntry d11 = SerializableShaderEntry.d("discardEdges", "Boolean", dataList);
        if (d11 != null) {
            this.discardEdges = SerializableShaderEntry.a(d11);
        }
        SerializableShaderEntry d12 = SerializableShaderEntry.d("doubleSided", "Boolean", dataList);
        if (d12 != null) {
            j2(SerializableShaderEntry.a(d12));
        }
        SerializableShaderEntry d13 = SerializableShaderEntry.d("alphaCutout", SerializableShaderEntry.f81148b, dataList);
        if (d13 != null) {
            this.alphaCutout = SerializableShaderEntry.g(d13);
        }
        SerializableShaderEntry d14 = SerializableShaderEntry.d("emissiveNits", SerializableShaderEntry.f81148b, dataList);
        if (d14 != null) {
            l2(SerializableShaderEntry.g(d14));
        }
        SerializableShaderEntry d15 = SerializableShaderEntry.d("emissiveColor", SerializableShaderEntry.f81153g, dataList);
        if (d15 != null && (c11 = SerializableShaderEntry.c(d15)) != null) {
            this.emissiveFallback.Y(0, 0, c11);
            this.emissiveFallback.apply();
        }
        SerializableShaderEntry d16 = SerializableShaderEntry.d("diffuse", SerializableShaderEntry.f81153g, dataList);
        if (d16 != null) {
            ColorINT c12 = SerializableShaderEntry.c(d16);
            if (c12 != null) {
                h2(c12.e0());
            }
        } else {
            SerializableShaderEntry d17 = SerializableShaderEntry.d("color", SerializableShaderEntry.f81153g, dataList);
            if (d17 != null && (c10 = SerializableShaderEntry.c(d17)) != null) {
                h2(c10.e0());
            }
        }
        SerializableShaderEntry d18 = SerializableShaderEntry.d("albedo", SerializableShaderEntry.f81152f, dataList);
        if (d18 != null) {
            ub.g u16 = SerializableShaderEntry.u(d18);
            if (u16 != null) {
                f2(u16.p0());
            }
        } else {
            SerializableShaderEntry d19 = SerializableShaderEntry.d(ResourceLocatorTool.TYPE_TEXTURE, SerializableShaderEntry.f81152f, dataList);
            if (d19 != null && (u10 = SerializableShaderEntry.u(d19)) != null) {
                f2(u10.p0());
            }
        }
        SerializableShaderEntry d20 = SerializableShaderEntry.d("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d20 != null) {
            this.albedoSpriteIndex = SerializableShaderEntry.h(d20);
            y2();
        }
        SerializableShaderEntry d21 = SerializableShaderEntry.d("opacity", SerializableShaderEntry.f81152f, dataList);
        if (d21 != null && (u15 = SerializableShaderEntry.u(d21)) != null) {
            u2(u15.p0());
        }
        SerializableShaderEntry d22 = SerializableShaderEntry.d("opacitySpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d22 != null) {
            this.opacitySpriteIndex = SerializableShaderEntry.h(d22);
            K2();
        }
        SerializableShaderEntry d23 = SerializableShaderEntry.d("normalMap", SerializableShaderEntry.f81152f, dataList);
        if (d23 != null && (u14 = SerializableShaderEntry.u(d23)) != null) {
            r2(u14.p0());
        }
        SerializableShaderEntry d24 = SerializableShaderEntry.d("normalSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d24 != null) {
            this.normalSpriteIndex = SerializableShaderEntry.h(d24);
            H2();
        }
        SerializableShaderEntry d25 = SerializableShaderEntry.d("normalStrength", SerializableShaderEntry.f81148b, dataList);
        if (d25 != null) {
            this.normalStrength = SerializableShaderEntry.g(d25);
            I2();
        }
        SerializableShaderEntry d26 = SerializableShaderEntry.d("ormMap", SerializableShaderEntry.f81152f, dataList);
        if (d26 != null && (u13 = SerializableShaderEntry.u(d26)) != null) {
            t2(u13.p0());
        }
        SerializableShaderEntry d27 = SerializableShaderEntry.d("ormSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d27 != null) {
            this.ormSpriteIndex = SerializableShaderEntry.h(d27);
            J2();
        }
        SerializableShaderEntry d28 = SerializableShaderEntry.d("heightMap", SerializableShaderEntry.f81152f, dataList);
        if (d28 != null && (u12 = SerializableShaderEntry.u(d28)) != null) {
            m2(u12.p0());
        }
        SerializableShaderEntry d29 = SerializableShaderEntry.d("heightSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d29 != null) {
            this.heightSpriteIndex = SerializableShaderEntry.h(d29);
            C2();
        }
        SerializableShaderEntry d30 = SerializableShaderEntry.d("emissive", SerializableShaderEntry.f81152f, dataList);
        if (d30 != null && (u11 = SerializableShaderEntry.u(d30)) != null) {
            k2(u11.p0());
        }
        SerializableShaderEntry d31 = SerializableShaderEntry.d("emissiveSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d31 != null) {
            this.emissiveSpriteIndex = SerializableShaderEntry.h(d31);
            A2();
        }
        SerializableShaderEntry d32 = SerializableShaderEntry.d(DecalProjector.f77444q0, SerializableShaderEntry.f81148b, dataList);
        if (d32 != null) {
            this.heightIntensity = SerializableShaderEntry.g(d32);
        }
        SerializableShaderEntry d33 = SerializableShaderEntry.d("heightNormalStrength", SerializableShaderEntry.f81148b, dataList);
        if (d33 != null) {
            this.heightNormalStrength = SerializableShaderEntry.g(d33);
            E2();
        }
        SerializableShaderEntry d34 = SerializableShaderEntry.d("uvSource", SerializableShaderEntry.f81157k, dataList);
        if (d34 != null) {
            v2(cc.e.valueOf(SerializableShaderEntry.s(d34)));
        }
        SerializableShaderEntry d35 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d35 != null) {
            g2(EnumC13053a.valueOf(SerializableShaderEntry.s(d35)));
        }
        SerializableShaderEntry d36 = SerializableShaderEntry.d("uvSize", SerializableShaderEntry.f81148b, dataList);
        if (d36 != null) {
            x2(SerializableShaderEntry.g(d36));
        }
        SerializableShaderEntry d37 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d37 != null) {
            q2(SerializableShaderEntry.g(d37));
        }
        SerializableShaderEntry d38 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d38 != null) {
            w2(SerializableShaderEntry.g(d38));
        }
        SerializableShaderEntry d39 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d39 != null) {
            n0(SerializableShaderEntry.h(d39));
        }
        SerializableShaderEntry d40 = SerializableShaderEntry.d("heightQuality", SerializableShaderEntry.f81148b, dataList);
        if (d40 != null) {
            this.heightQuality = SerializableShaderEntry.g(d40);
        }
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            SerializableShaderEntry d41 = SerializableShaderEntry.d(o12.f28153d + "ND", SerializableShaderEntry.f81157k, dataList);
            if (d41 != null && (s10 = SerializableShaderEntry.s(d41)) != null) {
                NoiseData fromJson = NoiseData.fromJson(s10);
                o12.f28151b = fromJson;
                if (fromJson != null) {
                    o12.f28150a = true;
                }
            }
        }
        G2();
        this.uv.c(dataList);
    }

    public final void b2() {
        A0(this.orm, this.ormFallback, C16165b.f130163i, "ormMap", D(), this.ormSpriteIndex);
    }

    @Override
    public void c0(List<SerializableShaderEntry> dataList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SerializableShaderEntry e10 = SerializableShaderEntry.e("textureSourceOpen", "Boolean", dataList);
        steppedArrayList.add(e10);
        SerializableShaderEntry.q(e10, this.textureSourceOpen);
        SerializableShaderEntry e11 = SerializableShaderEntry.e("discardEdges", "Boolean", dataList);
        steppedArrayList.add(e11);
        SerializableShaderEntry.q(e11, this.discardEdges);
        SerializableShaderEntry e12 = SerializableShaderEntry.e("doubleSided", "Boolean", dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.q(e12, this.doubleSided);
        SerializableShaderEntry e13 = SerializableShaderEntry.e("alphaCutout", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.i(e13, this.alphaCutout);
        SerializableShaderEntry e14 = SerializableShaderEntry.e("diffuse", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.l(e14, this.diffuse.instance);
        SerializableShaderEntry e15 = SerializableShaderEntry.e("emissiveColor", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.l(e15, this.emissiveFallback.i(0, 0));
        SerializableShaderEntry e16 = SerializableShaderEntry.e("albedo", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e16);
        SerializableShaderEntry.k(e16, this.albedo);
        SerializableShaderEntry e17 = SerializableShaderEntry.e("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e17);
        SerializableShaderEntry.j(e17, this.albedoSpriteIndex);
        SerializableShaderEntry e18 = SerializableShaderEntry.e("opacity", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e18);
        SerializableShaderEntry.k(e18, this.opacity);
        SerializableShaderEntry e19 = SerializableShaderEntry.e("opacitySpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e19);
        SerializableShaderEntry.j(e19, this.opacitySpriteIndex);
        SerializableShaderEntry e20 = SerializableShaderEntry.e("normalMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e20);
        SerializableShaderEntry.k(e20, this.normal);
        SerializableShaderEntry e21 = SerializableShaderEntry.e("normalSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e21);
        SerializableShaderEntry.j(e21, this.normalSpriteIndex);
        SerializableShaderEntry e22 = SerializableShaderEntry.e("normalStrength", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e22);
        SerializableShaderEntry.i(e22, this.normalStrength);
        SerializableShaderEntry e23 = SerializableShaderEntry.e("ormMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e23);
        SerializableShaderEntry.k(e23, this.orm);
        SerializableShaderEntry e24 = SerializableShaderEntry.e("ormSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e24);
        SerializableShaderEntry.j(e24, this.ormSpriteIndex);
        SerializableShaderEntry e25 = SerializableShaderEntry.e("emissiveNits", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e25);
        SerializableShaderEntry.i(e25, this.emissiveNits);
        SerializableShaderEntry e26 = SerializableShaderEntry.e("heightMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e26);
        SerializableShaderEntry.k(e26, this.height);
        SerializableShaderEntry e27 = SerializableShaderEntry.e("heightSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e27);
        SerializableShaderEntry.j(e27, this.heightSpriteIndex);
        SerializableShaderEntry e28 = SerializableShaderEntry.e("emissive", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e28);
        SerializableShaderEntry.k(e28, this.emissive);
        SerializableShaderEntry e29 = SerializableShaderEntry.e("emissiveSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e29);
        SerializableShaderEntry.j(e29, this.emissiveSpriteIndex);
        SerializableShaderEntry e30 = SerializableShaderEntry.e(DecalProjector.f77444q0, SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e30);
        SerializableShaderEntry.i(e30, this.heightIntensity);
        SerializableShaderEntry e31 = SerializableShaderEntry.e("heightNormalStrength", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e31);
        SerializableShaderEntry.i(e31, this.heightNormalStrength);
        SerializableShaderEntry e32 = SerializableShaderEntry.e("uvSource", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e32);
        SerializableShaderEntry.o(e32, this.uvSource.toString());
        SerializableShaderEntry e33 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e33);
        SerializableShaderEntry.o(e33, this.blendingMode.toString());
        SerializableShaderEntry e34 = SerializableShaderEntry.e("uvSize", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e34);
        SerializableShaderEntry.i(e34, this.worldUVSize);
        SerializableShaderEntry e35 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e35);
        SerializableShaderEntry.i(e35, this.localWindIntensity);
        SerializableShaderEntry e36 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e36);
        SerializableShaderEntry.i(e36, this.windVerticality);
        SerializableShaderEntry e37 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e37);
        SerializableShaderEntry.j(e37, K());
        SerializableShaderEntry e38 = SerializableShaderEntry.e("heightQuality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e38);
        SerializableShaderEntry.i(e38, this.heightQuality);
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            SerializableShaderEntry e39 = SerializableShaderEntry.e(o12.f28153d + "ND", SerializableShaderEntry.f81157k, dataList);
            steppedArrayList.add(e39);
            NoiseData noiseData = o12.f28151b;
            if (noiseData == null || !o12.f28150a) {
                SerializableShaderEntry.o(e39, null);
            } else {
                SerializableShaderEntry.o(e39, noiseData.toJson());
            }
        }
        this.uv.d(dataList, steppedArrayList);
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    public final void c2() {
        j(this.opacity, C16165b.f130161g, "opacity", D(), this.opacitySpriteIndex);
    }

    @Override
    public boolean d() {
        if (this.alphaCutout < 1.0f && this.diffuse.getFloatAlpha() > 0.0f) {
            return super.d();
        }
        return false;
    }

    public final void d2() {
        D().w("worldUVScale", this.worldUVSize);
    }

    public void f2(Texture albedo) {
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
            y2();
            if (!K8.a.r()) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        LitORMBinder.this.Q1();
                    }
                });
                return;
            }
            D0();
            H0();
            H2();
        }
    }

    public void g2(EnumC13053a blendingMode) {
        boolean z10 = this.blendingMode != blendingMode;
        this.blendingMode = blendingMode;
        if (z10) {
            Z();
            super.P();
        }
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        z2();
        y2();
        K2();
        H2();
        J2();
        A2();
        B2();
        C2();
        D2();
        F2();
        M2();
        J1();
        K1();
        L2();
    }

    public void h2(Color diffuse) {
        boolean z10 = this.diffuse.instance.intColor != diffuse.instance.intColor;
        this.diffuse = diffuse;
        if (z10) {
            Z();
            z2();
        }
    }

    @Override
    public void i0(String entry, float value) {
        if (entry.equalsIgnoreCase("windeffect")) {
            q2(value);
        } else if (entry.equalsIgnoreCase("windVerticality")) {
            w2(value);
        } else {
            super.i0(entry, value);
        }
    }

    public void i2(boolean discardEdges) {
        boolean z10 = this.discardEdges != discardEdges;
        this.discardEdges = discardEdges;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void j2(boolean doubleSided) {
        boolean z10 = this.doubleSided != doubleSided;
        this.doubleSided = doubleSided;
        if (z10) {
            Z();
            super.P();
        }
    }

    @Override
    public List<ec.i> k(C4171b c4171b) {
        boolean[] zArr;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        int i10 = 2;
        boolean z10 = false;
        int i11 = 1;
        boolean[] zArr2 = {false, true};
        EnumC13053a[] values = EnumC13053a.values();
        int length = values.length;
        int i12 = 0;
        while (i12 < length) {
            EnumC13053a enumC13053a = values[i12];
            int i13 = z10 ? 1 : 0;
            while (i13 < i10) {
                boolean z11 = zArr2[i13];
                int i14 = z10 ? 1 : 0;
                while (i14 < i10) {
                    boolean z12 = zArr2[i14];
                    int i15 = z10 ? 1 : 0;
                    while (i15 < i10) {
                        boolean z13 = zArr2[i15];
                        if (z12) {
                            boolean[] zArr3 = new boolean[i11];
                            zArr3[z10 ? 1 : 0] = z10;
                            zArr = zArr3;
                        } else {
                            zArr = zArr2;
                        }
                        int length2 = zArr.length;
                        int i16 = z10 ? 1 : 0;
                        while (i16 < length2) {
                            boolean z14 = zArr[i16];
                            boolean z15 = z13;
                            boolean z16 = z12;
                            ec.i iVar = new ec.i(MaterialBuilder.a.valueOf(enumC13053a.name()), 0.5f, MaterialBuilder.c.BACK, z11, null, true, true);
                            iVar.j("hasHeight", z15);
                            iVar.j("useWorldUV", z16);
                            iVar.j("discardEdges", z14);
                            steppedArrayList.add(iVar);
                            i16++;
                            z12 = z16;
                            i15 = i15;
                            length2 = length2;
                            i14 = i14;
                            z13 = z15;
                            zArr = zArr;
                        }
                        i15++;
                        i10 = 2;
                        z10 = false;
                        i11 = 1;
                    }
                    i14++;
                    i10 = 2;
                    z10 = false;
                    i11 = 1;
                }
                i13++;
                i10 = 2;
                z10 = false;
                i11 = 1;
            }
            i12++;
            i10 = 2;
            z10 = false;
            i11 = 1;
        }
        return steppedArrayList;
    }

    @Override
    public void k0(nc.h globalShaderEntity) {
        super.k0(globalShaderEntity);
        J1();
        K1();
    }

    public void k2(Texture emissive) {
        Texture texture = this.emissive;
        boolean z10 = texture != emissive;
        if (texture != null && z10) {
            texture.instance.T(this.emissiveListener);
        }
        this.emissive = emissive;
        if (emissive != null && z10) {
            emissive.instance.e(this.emissiveListener);
        }
        if (z10) {
            Z();
            A2();
        }
    }

    @Override
    public ShaderBinder l() {
        LitORMBinder litORMBinder = new LitORMBinder();
        litORMBinder.albedo = this.albedo;
        litORMBinder.albedoSpriteIndex = this.albedoSpriteIndex;
        litORMBinder.opacity = this.opacity;
        litORMBinder.opacitySpriteIndex = this.opacitySpriteIndex;
        litORMBinder.diffuse = this.diffuse.copy();
        litORMBinder.normal = this.normal;
        litORMBinder.normalSpriteIndex = this.normalSpriteIndex;
        litORMBinder.normalStrength = this.normalStrength;
        litORMBinder.orm = this.orm;
        litORMBinder.ormSpriteIndex = this.ormSpriteIndex;
        litORMBinder.emissive = this.emissive;
        litORMBinder.emissiveSpriteIndex = this.emissiveSpriteIndex;
        litORMBinder.emissiveNits = this.emissiveNits;
        litORMBinder.height = this.height;
        litORMBinder.heightSpriteIndex = this.heightSpriteIndex;
        litORMBinder.alphaCutout = this.alphaCutout;
        litORMBinder.heightIntensity = this.heightIntensity;
        litORMBinder.heightNormalStrength = this.heightNormalStrength;
        litORMBinder.heightQuality = this.heightQuality;
        litORMBinder.discardEdges = this.discardEdges;
        litORMBinder.uv = this.uv.a();
        litORMBinder.worldUVSize = this.worldUVSize;
        litORMBinder.localWindIntensity = this.localWindIntensity;
        litORMBinder.windVerticality = this.windVerticality;
        litORMBinder.n0(K());
        litORMBinder.doubleSided = this.doubleSided;
        litORMBinder.blendingMode = this.blendingMode;
        return litORMBinder;
    }

    public void l2(float emissiveNits) {
        boolean z10 = this.emissiveNits != emissiveNits;
        this.emissiveNits = emissiveNits;
        if (z10) {
            Z();
            B2();
        }
    }

    public void m2(Texture height) {
        Texture texture = this.height;
        boolean z10 = texture != height;
        if (texture != null && z10) {
            texture.instance.T(this.heightListener);
        }
        this.height = height;
        if (height != null && z10) {
            height.instance.e(this.heightListener);
        }
        if (z10) {
            Z();
            super.P();
            C2();
        }
    }

    public void n2(float heightIntensity) {
        float f10 = this.heightIntensity;
        boolean z10 = f10 != heightIntensity;
        boolean z11 = ((f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1)) > 0) != ((heightIntensity > 0.0f ? 1 : (heightIntensity == 0.0f ? 0 : -1)) > 0);
        this.heightIntensity = heightIntensity;
        if (z10) {
            if (z11) {
                P();
            }
            Z();
            D2();
        }
    }

    public void o2(float heightNormalStrength) {
        boolean z10 = this.heightNormalStrength != heightNormalStrength;
        this.heightNormalStrength = heightNormalStrength;
        if (z10) {
            Z();
            E2();
        }
    }

    public void p2(float heightQuality) {
        boolean z10 = this.heightQuality != this.heightIntensity;
        this.heightQuality = heightQuality;
        if (z10) {
            Z();
            F2();
        }
    }

    public void q2(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = localWindIntensity;
        if (z10) {
            Z();
            J1();
        }
    }

    @Override
    public p r(String entry) {
        if (entry == null) {
            return null;
        }
        return (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) ? C16165b.f130166l : entry.equalsIgnoreCase("opacity") ? C16165b.f130161g : (entry.equalsIgnoreCase("height") || entry.equalsIgnoreCase("heightMap")) ? C16165b.f130163i : entry.equalsIgnoreCase("emissive") ? this.emissiveFallback : super.r(entry);
    }

    @Override
    public void r0(String entry, p texture) {
        if (entry.equalsIgnoreCase("albedo") || entry.equalsIgnoreCase("albedoMap") || entry.equalsIgnoreCase("baseColorMap") || entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            if (texture != null) {
                f2(texture.p0());
                return;
            } else {
                f2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("opacity") || entry.equalsIgnoreCase("opacityMap") || entry.equalsIgnoreCase("alphaMap")) {
            if (texture != null) {
                u2(texture.p0());
                return;
            } else {
                u2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) {
            if (texture != null) {
                r2(texture.p0());
                return;
            } else {
                r2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("orm") || entry.equalsIgnoreCase("ormMap")) {
            if (texture != null) {
                t2(texture.p0());
                return;
            } else {
                t2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("height") || entry.equalsIgnoreCase("heightMap")) {
            if (texture != null) {
                m2(texture.p0());
                return;
            } else {
                m2(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("emissive") && !entry.equalsIgnoreCase("emissiveMap")) {
            super.r0(entry, texture);
        } else if (texture != null) {
            k2(texture.p0());
        } else {
            k2(null);
        }
    }

    public void r2(Texture normal) {
        Texture texture = this.normal;
        boolean z10 = texture != normal;
        if (texture != null && z10) {
            texture.instance.T(this.normalListener);
        }
        this.normal = normal;
        if (normal != null && z10) {
            normal.instance.e(this.normalListener);
        }
        if (z10) {
            Z();
            H2();
        }
    }

    @Override
    public void s0(String entry, String file) {
        if (entry.equalsIgnoreCase("albedo") || entry.equalsIgnoreCase("albedoMap") || entry.equalsIgnoreCase("baseColorMap") || entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            Texture texture = this.albedo;
            if (texture != null) {
                p pVar = texture.instance;
                if ((pVar instanceof ub.g) && ((ub.g) pVar).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                f2(null);
                return;
            }
            ub.g u10 = C16165b.u(file);
            if (u10 != null) {
                f2(u10.p0());
                return;
            } else {
                f2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("opacity") || entry.equalsIgnoreCase("opacityMap") || entry.equalsIgnoreCase("alphaMap")) {
            Texture texture2 = this.opacity;
            if (texture2 != null) {
                p pVar2 = texture2.instance;
                if ((pVar2 instanceof ub.g) && ((ub.g) pVar2).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                u2(null);
                return;
            }
            ub.g u11 = C16165b.u(file);
            if (u11 != null) {
                u2(u11.p0());
                return;
            } else {
                u2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) {
            Texture texture3 = this.normal;
            if (texture3 != null) {
                p pVar3 = texture3.instance;
                if ((pVar3 instanceof ub.g) && ((ub.g) pVar3).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                r2(null);
                return;
            }
            ub.g u12 = C16165b.u(file);
            if (u12 != null) {
                r2(u12.p0());
                return;
            } else {
                r2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("orm") || entry.equalsIgnoreCase("ormMap")) {
            Texture texture4 = this.orm;
            if (texture4 != null) {
                p pVar4 = texture4.instance;
                if ((pVar4 instanceof ub.g) && ((ub.g) pVar4).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                t2(null);
                return;
            }
            ub.g u13 = C16165b.u(file);
            if (u13 != null) {
                t2(u13.p0());
                return;
            } else {
                t2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("height") || entry.equalsIgnoreCase("heightMap")) {
            Texture texture5 = this.height;
            if (texture5 != null) {
                p pVar5 = texture5.instance;
                if ((pVar5 instanceof ub.g) && ((ub.g) pVar5).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                m2(null);
                return;
            }
            ub.g u14 = C16165b.u(file);
            if (u14 != null) {
                m2(u14.p0());
                return;
            } else {
                m2(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("emissive") && !entry.equalsIgnoreCase("emissiveMap")) {
            super.s0(entry, file);
            return;
        }
        Texture texture6 = this.emissive;
        if (texture6 != null) {
            p pVar6 = texture6.instance;
            if ((pVar6 instanceof ub.g) && ((ub.g) pVar6).getFile().equals(file)) {
                return;
            }
        }
        if (file == null || file.isEmpty()) {
            k2(null);
            return;
        }
        ub.g u15 = C16165b.u(file);
        if (u15 != null) {
            k2(u15.p0());
        } else {
            k2(null);
        }
    }

    public void s2(float normalStrength) {
        boolean z10 = this.normalStrength != normalStrength;
        this.normalStrength = normalStrength;
        if (z10) {
            Z();
            I2();
        }
    }

    public void t2(Texture roughness) {
        Texture texture = this.orm;
        boolean z10 = texture != roughness;
        if (texture != null && z10) {
            texture.instance.T(this.ormListener);
        }
        this.orm = roughness;
        if (roughness != null && z10) {
            roughness.instance.e(this.ormListener);
        }
        if (z10) {
            Z();
            J2();
        }
    }

    @Override
    public float u(String entry) {
        return entry.equalsIgnoreCase("windeffect") ? this.localWindIntensity : entry.equalsIgnoreCase("windVerticality") ? this.windVerticality : super.u(entry);
    }

    public void u2(Texture opacity) {
        Texture texture = this.opacity;
        boolean z10 = texture != opacity;
        if (texture != null && z10) {
            texture.instance.T(this.opacityListener);
        }
        this.opacity = opacity;
        if (opacity != null && z10) {
            opacity.instance.e(this.opacityListener);
        }
        if (z10) {
            Z();
            K2();
        }
    }

    public void v2(cc.e uvSource) {
        boolean z10 = this.uvSource != uvSource;
        this.uvSource = uvSource;
        if (z10) {
            Z();
            super.P();
        }
    }

    @Override
    public void w0(String entry, com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2) {
        try {
            this.uv.e(entry, vector2);
            L2();
            Z();
        } catch (Exception unused) {
            super.w0(entry, vector2);
        }
    }

    public void w2(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            K1();
        }
    }

    public void x2(float worldUVSize) {
        boolean z10 = this.worldUVSize != worldUVSize;
        this.worldUVSize = worldUVSize;
        if (z10) {
            Z();
            M2();
        }
    }

    @Override
    public ec.i y0(ec.i variance, C4171b renderPass) {
        ec.i iVar = variance;
        boolean z10 = this.height != null && this.heightIntensity > 0.0f;
        this.heightActiveInShader = z10;
        EnumC13053a N12 = N1();
        boolean z11 = this.discardEdges && this.uvSource == cc.e.Vertex;
        cc.e eVar = this.uvSource;
        cc.e eVar2 = cc.e.World;
        renderPass.m("useWorldUV", eVar == eVar2);
        renderPass.m("hasHeight", z10);
        renderPass.m("discardEdges", z11);
        boolean z12 = variance.a().ordinal() != N12.ordinal();
        if (variance.i() != this.doubleSided) {
            z12 = true;
        }
        if (iVar.b("hasHeight") != z10) {
            z12 = true;
        }
        if (iVar.b("useWorldUV") != (this.uvSource == eVar2)) {
            z12 = true;
        }
        if (iVar.b("discardEdges") != z11) {
            z12 = true;
        }
        if (z12) {
            iVar = new ec.i(MaterialBuilder.a.valueOf(N12.name()), 0.5f, MaterialBuilder.c.BACK, this.doubleSided, null, true, true);
            iVar.j("hasHeight", z10);
            iVar.j("useWorldUV", this.uvSource == eVar2);
            iVar.j("discardEdges", z11);
        }
        return iVar;
    }
}
