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
import P8.o;
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
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.BaseGeneratedTexturesShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitLightMapBinder;
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

@o
public class LitLightMapBinder extends BaseGeneratedTexturesShaderBinder {
    public Texture albedo;
    private ub.n albedoAlphaMap;
    public Texture alpha;
    public Texture ao;
    private final Bb.e aoListener;
    public EnumC13053a blendingMode;

    @Keep
    public final ec.d blendingMode_OFCBRL;
    private boolean doubleSided;

    @Keep
    public final ec.d doubleSided_OFCBRL;
    private boolean drawInFront;

    @Keep
    public final ec.d drawInFront_OFCBRL;
    public Texture emissive;
    private final ub.n emissiveFallback;
    private final Bb.e emissiveListener;

    @eb.f
    public float emissiveNits;

    @Keep
    public final ec.d emissiveNits_OFCBRL;
    private boolean emitWritableAlert;

    @eb.f
    private float lastAI;
    private Texture lastAlbedo;
    private Texture lastAlpha;
    private float lightIntensity;
    public Texture lightMap;
    private final Bb.e lightMapListener;

    @eb.f
    private float localWindIntensity;

    @Keep
    public final ec.d localWindIntensity_OFCBRL;
    public Texture metallic;
    private final ub.n metallicFallback;
    private final Bb.e metallicListener;

    @eb.f
    public float minimalAlphaIntensity;
    private final List<O1> noiseRefList;
    public Texture normal;
    public Texture roughness;
    private final ub.n roughnessFallback;
    private final Bb.e roughnessListener;
    public UVs uv;

    @eb.f
    private float windVerticality;

    @Keep
    public final ec.d windVerticality_OFCBRL;
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
            LitLightMapBinder.this.d2();
        }
    };
    private final Bb.e albedoListener = new Bb.e() {
        @Override
        public final void b() {
            LitLightMapBinder.this.b2();
        }
    };
    private final Bb.e normalListener = new Bb.e() {
        @Override
        public final void b() {
            LitLightMapBinder.this.k2();
        }
    };

    @eb.f
    private float normalStrength = 1.5f;

    @o
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
        public Vector2 roughnessTilling = new Vector2(1.0f);

        @Order(idx = {5})
        public Vector2 roughnessOffset = new Vector2();

        @Order(idx = {6})
        public Vector2 metallicTilling = new Vector2(1.0f);

        @Order(idx = {7})
        public Vector2 metallicOffset = new Vector2();

        @Order(idx = {8})
        public Vector2 aoTilling = new Vector2(1.0f);

        @Order(idx = {9})
        public Vector2 aoOffset = new Vector2();

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

        public final ShaderBinder.b f80226a;

        public class C1378a implements Runnable {

            public final EnumC13053a f80228b;

            public C1378a(final EnumC13053a val$value) {
                this.f80228b = val$value;
            }

            @Override
            public void run() {
                LitLightMapBinder.this.N1(this.f80228b);
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f80226a = val$listener;
        }

        @Override
        public void a() {
            this.f80226a.a();
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new C1378a(value));
        }
    }

    public class b implements c.o0 {

        public final String f80230a;

        public final String f80231b;

        public final ShaderBinder.b f80232c;

        public class a implements D5.h {

            public class RunnableC1379a implements Runnable {

                public final Variable f80235b;

                public RunnableC1379a(final Variable val$variable) {
                    this.f80235b = val$variable;
                }

                @Override
                public void run() {
                    LitLightMapBinder.this.S1(Nc.b.G(this.f80235b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitLightMapBinder.this.emissiveNits + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1379a(variable));
                }
            }
        }

        public b(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80230a = val$objectUID;
            this.f80231b = val$componentUID;
            this.f80232c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Nits", b.a.SLFloat);
            String str = this.f80230a;
            if (str != null && this.f80231b != null) {
                bVar.f(str, this.f80232c.b(), "emissiveNits", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            return entries;
        }
    }

    public class c implements c.o0 {

        public class a implements D5.h {

            public class RunnableC1380a implements Runnable {

                public final Variable f80239b;

                public RunnableC1380a(final Variable val$variable) {
                    this.f80239b = val$variable;
                }

                @Override
                public void run() {
                    LitLightMapBinder.this.Y1(Math.max(0.0f, this.f80239b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitLightMapBinder.this.normalStrength + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1380a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80242b;

                public a(final Variable val$variable) {
                    this.f80242b = val$variable;
                }

                @Override
                public void run() {
                    LitLightMapBinder.this.n0(Math.max(-32768, Math.min(32767, this.f80242b.int_value)));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitLightMapBinder.this.K() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class C1381c implements D5.h {

            public class a implements Runnable {

                public final Variable f80245b;

                public a(final Variable val$variable) {
                    this.f80245b = val$variable;
                }

                @Override
                public void run() {
                    LitLightMapBinder.this.P1(this.f80245b.booolean_value.booleanValue());
                }
            }

            public C1381c() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitLightMapBinder.this.doubleSided + "");
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

                public final Variable f80248b;

                public a(final Variable val$variable) {
                    this.f80248b = val$variable;
                }

                @Override
                public void run() {
                    LitLightMapBinder.this.Q1(this.f80248b.booolean_value.booleanValue());
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitLightMapBinder.this.drawInFront + "");
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

                public final Variable f80251b;

                public a(final Variable val$variable) {
                    this.f80251b = val$variable;
                }

                @Override
                public void run() {
                    LitLightMapBinder.this.V1(Math.max(0.0f, this.f80251b.float_value));
                }
            }

            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitLightMapBinder.this.localWindIntensity + "");
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

                public final Variable f80254b;

                public a(final Variable val$variable) {
                    this.f80254b = val$variable;
                }

                @Override
                public void run() {
                    LitLightMapBinder.this.a2(Math.max(0.0f, Math.min(1.0f, this.f80254b.float_value)));
                }
            }

            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitLightMapBinder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
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
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            entries.add(new C5.b(aVar, "Normal Strength", aVar2));
            entries.add(new C5.b(new b(), "Material ID", b.a.SLInt));
            C1381c c1381c = new C1381c();
            b.a aVar3 = b.a.SLBoolean;
            entries.add(new C5.b(c1381c, "Double sided", aVar3));
            entries.add(new C5.b(new d(), "Draw in front", aVar3));
            entries.add(new C5.b(new e(), "Wind effect", aVar2));
            entries.add(new C5.b(new f(), "Verticality", b.a.SLFloat01));
            return entries;
        }
    }

    public class d implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80256a;

        public class a implements Runnable {

            public final Variable f80258b;

            public a(final Variable val$variable) {
                this.f80258b = val$variable;
            }

            @Override
            public void run() {
                d dVar = d.this;
                dVar.f80256a.f79838x = this.f80258b.float_value;
                LitLightMapBinder.this.n2();
                LitLightMapBinder.this.Z();
            }
        }

        public d(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80256a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80256a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80256a.f79838x + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80260a;

        public class a implements Runnable {

            public final Variable f80262b;

            public a(final Variable val$variable) {
                this.f80262b = val$variable;
            }

            @Override
            public void run() {
                e eVar = e.this;
                eVar.f80260a.f79839y = this.f80262b.float_value;
                LitLightMapBinder.this.n2();
                LitLightMapBinder.this.Z();
            }
        }

        public e(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80260a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80260a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80260a.f79839y + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80264a;

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80265b;

        public final C5.b f80266c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                f fVar = f.this;
                com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = fVar.f80264a;
                if (vector2 != null) {
                    vector2.x0(fVar.f80265b);
                    LitLightMapBinder.this.n2();
                    LitLightMapBinder.this.Z();
                }
                D5.f fVar2 = f.this.f80266c.f2081p[0].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
                D5.f fVar3 = f.this.f80266c.f2081p[1].f2076k;
                if (fVar3 != null) {
                    fVar3.a();
                }
            }
        }

        public f(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var, final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$reset, final C5.b val$rectPosVector) {
            this.f80264a = val$var;
            this.f80265b = val$reset;
            this.f80266c = val$rectPosVector;
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

            public final Variable f80270b;

            public a(final Variable val$variable) {
                this.f80270b = val$variable;
            }

            @Override
            public void run() {
                LitLightMapBinder.this.O1(new ColorINT(this.f80270b.color_value.intColor).e0());
            }
        }

        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", LitLightMapBinder.this.diffuse.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class h extends a.j {

        public final ShaderBinder.b f80272a;

        public class a implements Runnable {

            public final ub.g f80274b;

            public a(final ub.g val$fileTexture) {
                this.f80274b = val$fileTexture;
            }

            @Override
            public void run() {
                LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
                ub.g gVar = this.f80274b;
                litLightMapBinder.L1(gVar != null ? gVar.p0() : null);
                LitLightMapBinder.this.D0();
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                LitLightMapBinder.this.j2();
            }
        }

        public h(final ShaderBinder.b val$listener) {
            this.f80272a = val$listener;
        }

        @Override
        public void a() {
            this.f80272a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void g() {
            K8.a.I(new b());
        }

        @Override
        public String get() {
            Texture texture = LitLightMapBinder.this.albedo;
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
            return LitLightMapBinder.this.albedo;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder.t1("tilling", litLightMapBinder.uv.albedoTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitLightMapBinder litLightMapBinder2 = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder2.t1("offset", litLightMapBinder2.uv.albedoOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitLightMapBinder.this.u1(fieldName);
        }
    }

    public class i extends a.j {

        public final ShaderBinder.b f80277a;

        public class a implements Runnable {

            public final ub.g f80279b;

            public a(final ub.g val$fileTexture) {
                this.f80279b = val$fileTexture;
            }

            @Override
            public void run() {
                LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
                ub.g gVar = this.f80279b;
                litLightMapBinder.X1(gVar != null ? gVar.p0() : null);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                LitLightMapBinder.this.j2();
            }
        }

        public i(final ShaderBinder.b val$listener) {
            this.f80277a = val$listener;
        }

        @Override
        public void a() {
            this.f80277a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void g() {
            K8.a.I(new b());
        }

        @Override
        public String get() {
            Texture texture = LitLightMapBinder.this.normal;
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
            return LitLightMapBinder.this.normal;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder.t1("tilling", litLightMapBinder.uv.normalTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitLightMapBinder litLightMapBinder2 = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder2.t1("offset", litLightMapBinder2.uv.normalOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitLightMapBinder.this.u1(fieldName);
        }
    }

    public class j extends a.j {

        public final ShaderBinder.b f80282a;

        public class a implements Runnable {

            public final ub.g f80284b;

            public a(final ub.g val$fileTexture) {
                this.f80284b = val$fileTexture;
            }

            @Override
            public void run() {
                LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
                ub.g gVar = this.f80284b;
                litLightMapBinder.Z1(gVar != null ? gVar.p0() : null);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                LitLightMapBinder.this.j2();
            }
        }

        public j(final ShaderBinder.b val$listener) {
            this.f80282a = val$listener;
        }

        @Override
        public void a() {
            this.f80282a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public boolean e() {
            return true;
        }

        @Override
        public void f(float v10) {
            LitLightMapBinder.this.roughnessFallback.d0(0, 0, v10);
            LitLightMapBinder.this.roughnessFallback.apply();
            LitLightMapBinder.this.Z();
        }

        @Override
        public void g() {
            K8.a.I(new b());
        }

        @Override
        public String get() {
            Texture texture = LitLightMapBinder.this.roughness;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return ((ub.g) pVar).getFile();
                }
            }
            return "";
        }

        @Override
        public float getFloatValue() {
            return LitLightMapBinder.this.roughnessFallback.o(0, 0);
        }

        @Override
        public Texture getInstance() {
            return LitLightMapBinder.this.roughness;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder.t1("tilling", litLightMapBinder.uv.roughnessTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitLightMapBinder litLightMapBinder2 = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder2.t1("offset", litLightMapBinder2.uv.roughnessOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitLightMapBinder.this.u1(fieldName);
        }
    }

    public class k extends a.j {

        public final ShaderBinder.b f80287a;

        public class a implements Runnable {

            public final ub.g f80289b;

            public a(final ub.g val$fileTexture) {
                this.f80289b = val$fileTexture;
            }

            @Override
            public void run() {
                LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
                ub.g gVar = this.f80289b;
                litLightMapBinder.W1(gVar != null ? gVar.p0() : null);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                LitLightMapBinder.this.j2();
            }
        }

        public k(final ShaderBinder.b val$listener) {
            this.f80287a = val$listener;
        }

        @Override
        public void a() {
            this.f80287a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public boolean e() {
            return true;
        }

        @Override
        public void f(float v10) {
            LitLightMapBinder.this.metallicFallback.d0(0, 0, v10);
            LitLightMapBinder.this.metallicFallback.apply();
            LitLightMapBinder.this.Z();
        }

        @Override
        public void g() {
            K8.a.I(new b());
        }

        @Override
        public String get() {
            Texture texture = LitLightMapBinder.this.metallic;
            if (texture != null) {
                p pVar = texture.instance;
                if (pVar instanceof ub.g) {
                    return ((ub.g) pVar).getFile();
                }
            }
            return "";
        }

        @Override
        public float getFloatValue() {
            return LitLightMapBinder.this.metallicFallback.o(0, 0);
        }

        @Override
        public Texture getInstance() {
            return LitLightMapBinder.this.metallic;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder.t1("tilling", litLightMapBinder.uv.metallicTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitLightMapBinder litLightMapBinder2 = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder2.t1("offset", litLightMapBinder2.uv.metallicOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitLightMapBinder.this.u1(fieldName);
        }
    }

    public class l extends a.j {

        public final ShaderBinder.b f80292a;

        public class a implements Runnable {

            public final ub.g f80294b;

            public a(final ub.g val$fileTexture) {
                this.f80294b = val$fileTexture;
            }

            @Override
            public void run() {
                LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
                ub.g gVar = this.f80294b;
                litLightMapBinder.M1(gVar != null ? gVar.p0() : null);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                LitLightMapBinder.this.j2();
            }
        }

        public l(final ShaderBinder.b val$listener) {
            this.f80292a = val$listener;
        }

        @Override
        public void a() {
            this.f80292a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void g() {
            K8.a.I(new b());
        }

        @Override
        public String get() {
            Texture texture = LitLightMapBinder.this.ao;
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
            return LitLightMapBinder.this.ao;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder.t1("tilling", litLightMapBinder.uv.aoTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitLightMapBinder litLightMapBinder2 = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder2.t1("offset", litLightMapBinder2.uv.aoOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitLightMapBinder.this.u1(fieldName);
        }
    }

    public class m extends a.j {

        public final ShaderBinder.b f80297a;

        public class a implements Runnable {

            public final ub.g f80299b;

            public a(final ub.g val$fileTexture) {
                this.f80299b = val$fileTexture;
            }

            @Override
            public void run() {
                LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
                ub.g gVar = this.f80299b;
                litLightMapBinder.R1(gVar != null ? gVar.p0() : null);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                LitLightMapBinder.this.j2();
            }
        }

        public m(final ShaderBinder.b val$listener) {
            this.f80297a = val$listener;
        }

        @Override
        public void a() {
            this.f80297a.a();
        }

        @Override
        public void b(String file) {
            K8.a.I(new a(C16165b.u(file)));
        }

        @Override
        public void c(ColorINT color) {
            LitLightMapBinder.this.emissiveFallback.Y(0, 0, color);
            LitLightMapBinder.this.emissiveFallback.apply();
            LitLightMapBinder.this.Z();
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public void g() {
            K8.a.I(new b());
        }

        @Override
        public String get() {
            Texture texture = LitLightMapBinder.this.emissive;
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
            return LitLightMapBinder.this.emissive;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder.t1("tilling", litLightMapBinder.uv.emissiveTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            LitLightMapBinder litLightMapBinder2 = LitLightMapBinder.this;
            linkedList.add(litLightMapBinder2.t1("offset", litLightMapBinder2.uv.emissiveOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return linkedList;
        }

        @Override
        public ColorINT j() {
            return LitLightMapBinder.this.emissiveFallback.i(0, 0);
        }

        @Override
        public O1 k(String fieldName) {
            return LitLightMapBinder.this.u1(fieldName);
        }
    }

    public class n extends a.j {

        public final String f80302a;

        public final ShaderBinder.b f80303b;

        public class a implements Runnable {

            public final ub.g f80305b;

            public class C1382a implements Runnable {
                public C1382a() {
                }

                @Override
                public void run() {
                }
            }

            public a(final ub.g val$fileTexture) {
                this.f80305b = val$fileTexture;
            }

            @Override
            public void run() {
                LitLightMapBinder litLightMapBinder = LitLightMapBinder.this;
                ub.g gVar = this.f80305b;
                litLightMapBinder.U1(gVar != null ? gVar.p0() : null);
                N7.c.j0(new C1382a());
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80309b;

                public a(final Variable val$variable) {
                    this.f80309b = val$variable;
                }

                @Override
                public void run() {
                    LitLightMapBinder.this.T1(this.f80309b.float_value);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitLightMapBinder.this.lightIntensity + "");
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
                LitLightMapBinder.this.j2();
            }
        }

        public n(final String val$objectUID, final ShaderBinder.b val$listener) {
            this.f80302a = val$objectUID;
            this.f80303b = val$listener;
        }

        @Override
        public void a() {
            this.f80303b.a();
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
            Texture texture = LitLightMapBinder.this.lightMap;
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
            return LitLightMapBinder.this.lightMap;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(new C5.b(new b(), "Intensity", b.a.SLFloat01).f(this.f80302a, this.f80303b.b(), "lightIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return linkedList;
        }

        @Override
        public O1 k(String fieldName) {
            return LitLightMapBinder.this.u1(fieldName);
        }
    }

    public LitLightMapBinder() {
        Bb.e eVar = new Bb.e() {
            @Override
            public final void b() {
                LitLightMapBinder.this.m2();
            }
        };
        this.roughnessListener = eVar;
        ub.n nVar = new ub.n(1, 1, true, false);
        this.roughnessFallback = nVar;
        nVar.Y(0, 0, new ColorINT(0.6f, 0.0f, 0.0f));
        nVar.e(eVar);
        Bb.e eVar2 = new Bb.e() {
            @Override
            public final void b() {
                LitLightMapBinder.this.i2();
            }
        };
        this.metallicListener = eVar2;
        ub.n nVar2 = new ub.n(1, 1, true, false);
        this.metallicFallback = nVar2;
        nVar2.Y(0, 0, new ColorINT(0.05f, 0.0f, 0.0f));
        nVar2.e(eVar2);
        this.aoListener = new Bb.e() {
            @Override
            public final void b() {
                LitLightMapBinder.this.c2();
            }
        };
        this.lightMapListener = new Bb.e() {
            @Override
            public final void b() {
                LitLightMapBinder.this.h2();
            }
        };
        this.lightIntensity = 0.5f;
        Bb.e eVar3 = new Bb.e() {
            @Override
            public final void b() {
                LitLightMapBinder.this.e2();
            }
        };
        this.emissiveListener = eVar3;
        ub.n nVar3 = new ub.n(1, 1, true, false);
        this.emissiveFallback = nVar3;
        nVar3.Y(0, 0, new ColorINT(0, 0, 0));
        nVar3.e(eVar3);
        this.emissiveNits = 200.0f;
        this.emissiveNits_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitLightMapBinder.this.f2();
            }
        };
        this.minimalAlphaIntensity = 0.5f;
        this.uv = new UVs();
        this.blendingMode = EnumC13053a.MASKED;
        this.blendingMode_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitLightMapBinder.this.P();
            }
        };
        this.doubleSided = false;
        this.doubleSided_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitLightMapBinder.this.P();
            }
        };
        this.drawInFront = false;
        this.drawInFront_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitLightMapBinder.this.P();
            }
        };
        this.localWindIntensity = 0.0f;
        this.localWindIntensity_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitLightMapBinder.this.r1();
            }
        };
        this.windVerticality = 1.0f;
        this.windVerticality_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitLightMapBinder.this.s1();
            }
        };
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.noiseRefList = steppedArrayList;
        steppedArrayList.add(new O1("albedo"));
        steppedArrayList.add(new O1(JavaCore.NORMAL));
        steppedArrayList.add(new O1("roughness"));
        steppedArrayList.add(new O1("metallic"));
        steppedArrayList.add(new O1("ao"));
        steppedArrayList.add(new O1("emissive"));
        steppedArrayList.add(new O1("height"));
        this.albedoAlphaMap = null;
        this.lastAI = 0.0f;
        this.emitWritableAlert = false;
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

    public final void A1() {
        i(this.ao, C16165b.f130161g, "aoMap", D());
    }

    public final void B1() {
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
    }

    public final void C1() {
        z0(this.emissive, this.emissiveFallback, C16165b.f130163i, "emissive", D());
    }

    public final void D1() {
        D().w("emissiveNits", this.emissiveNits);
    }

    @Override
    public Texture E0() {
        return this.albedo;
    }

    public final void E1() {
        D().w("lightIntensity", Nc.b.I(this.lightIntensity));
    }

    public final void F1() {
        i(this.lightMap, C16165b.f130163i, "lightMap", D());
    }

    @Override
    public Texture G0() {
        return this.normal;
    }

    public final void G1() {
        z0(this.metallic, this.metallicFallback, C16165b.f130163i, "metallicMap", D());
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
        new G5.a("albedo", new h(listener)).C(steppedArrayList);
        new G5.a(JavaCore.NORMAL, new i(listener)).C(steppedArrayList);
        new G5.a("roughness", new j(listener)).C(steppedArrayList);
        new G5.a("metallic", new k(listener)).C(steppedArrayList);
        new G5.a("ao", new l(listener)).C(steppedArrayList);
        new G5.a("emissive", new m(listener)).C(steppedArrayList);
        new G5.a("Light map", new n(d10, listener)).C(steppedArrayList);
        steppedArrayList.add(F5.c.e("Emissive", new b(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Others", new c()));
        if (this.emitWritableAlert) {
            steppedArrayList.add(0, new C5.b("Please allow albedo and alpha textures modifications, in order to allow alpha texture to work", 12));
        }
        return steppedArrayList;
    }

    public final void H1() {
        H0();
        B0(F0(), C16165b.f130166l, "normalMap", D());
        l2();
    }

    public final void I1() {
        D().w("normalStrength", this.normalStrength);
    }

    public final void J1() {
        z0(this.roughness, this.roughnessFallback, C16165b.f130163i, "roughnessMap", D());
    }

    public final Texture K1(Material material, NoiseData noiseData, String fileName) {
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

    public void L1(Texture albedo) {
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
            b2();
            if (!K8.a.r()) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        LitLightMapBinder.this.y1();
                    }
                });
                return;
            }
            D0();
            H0();
            k2();
        }
    }

    public void M1(Texture ao) {
        Texture texture = this.ao;
        boolean z10 = texture != ao;
        if (texture != null && z10) {
            texture.instance.T(this.aoListener);
        }
        this.ao = ao;
        if (ao != null && z10) {
            ao.instance.e(this.aoListener);
        }
        if (z10) {
            Z();
            c2();
        }
    }

    public void N1(EnumC13053a blendingMode) {
        boolean z10 = this.blendingMode != blendingMode;
        this.blendingMode = blendingMode;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void O1(Color diffuse) {
        boolean z10 = this.diffuse.instance.intColor != diffuse.instance.intColor;
        this.diffuse = diffuse;
        if (z10) {
            Z();
            d2();
        }
    }

    public void P1(boolean doubleSided) {
        boolean z10 = this.doubleSided != doubleSided;
        this.doubleSided = doubleSided;
        if (z10) {
            Z();
            super.P();
        }
    }

    @Override
    public boolean Q() {
        return this.drawInFront;
    }

    public void Q1(boolean drawInFront) {
        boolean z10 = this.drawInFront != drawInFront;
        this.drawInFront = drawInFront;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void R1(Texture emissive) {
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
            e2();
        }
    }

    public void S1(float emissiveNits) {
        boolean z10 = this.emissiveNits != emissiveNits;
        this.emissiveNits = emissiveNits;
        if (z10) {
            Z();
            f2();
        }
    }

    public void T1(float lightIntensity) {
        boolean z10 = this.lightIntensity != lightIntensity;
        this.lightIntensity = lightIntensity;
        if (z10) {
            Z();
            g2();
        }
    }

    public void U1(Texture lightMap) {
        Texture texture = this.lightMap;
        boolean z10 = texture != lightMap;
        if (texture != null && z10) {
            texture.instance.T(this.lightMapListener);
        }
        this.lightMap = lightMap;
        if (lightMap != null && z10) {
            lightMap.instance.e(this.lightMapListener);
        }
        if (z10) {
            Z();
            h2();
        }
    }

    public void V1(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = localWindIntensity;
        if (z10) {
            Z();
            r1();
        }
    }

    public void W1(Texture metallic) {
        Texture texture = this.metallic;
        boolean z10 = texture != metallic;
        if (texture != null && z10) {
            texture.instance.T(this.metallicListener);
        }
        this.metallic = metallic;
        if (metallic != null && z10) {
            metallic.instance.e(this.metallicListener);
        }
        if (z10) {
            Z();
            i2();
        }
    }

    @Override
    public void X() {
        L1(null);
        X1(null);
        Z1(null);
        W1(null);
        M1(null);
        U1(null);
        R1(null);
    }

    public void X1(Texture normal) {
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
            k2();
        }
    }

    public void Y1(float normalStrength) {
        boolean z10 = this.normalStrength != normalStrength;
        this.normalStrength = normalStrength;
        if (z10) {
            Z();
            l2();
        }
    }

    public void Z1(Texture roughness) {
        Texture texture = this.roughness;
        boolean z10 = texture != roughness;
        if (texture != null && z10) {
            texture.instance.T(this.roughnessListener);
        }
        this.roughness = roughness;
        if (roughness != null && z10) {
            roughness.instance.e(this.roughnessListener);
        }
        if (z10) {
            Z();
            m2();
        }
    }

    @Override
    public boolean a0() {
        return (F0() == null && this.roughness == null) ? false : true;
    }

    public void a2(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            s1();
        }
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        ColorINT c10;
        ub.g u10;
        ub.g u11;
        String s10;
        ub.g u12;
        ub.g u13;
        ub.g u14;
        ub.g u15;
        ub.g u16;
        ub.g u17;
        ColorINT c11;
        SerializableShaderEntry d10 = SerializableShaderEntry.d("textureSourceOpen", "Boolean", dataList);
        if (d10 != null) {
            this.textureSourceOpen = SerializableShaderEntry.a(d10);
        }
        SerializableShaderEntry d11 = SerializableShaderEntry.d("doubleSided", "Boolean", dataList);
        if (d11 != null) {
            P1(SerializableShaderEntry.a(d11));
        }
        SerializableShaderEntry d12 = SerializableShaderEntry.d("drawInFront", "Boolean", dataList);
        if (d12 != null) {
            Q1(SerializableShaderEntry.a(d12));
        }
        SerializableShaderEntry d13 = SerializableShaderEntry.d("alphaCutout", SerializableShaderEntry.f81148b, dataList);
        if (d13 != null) {
            this.alphaCutout = SerializableShaderEntry.g(d13);
        }
        SerializableShaderEntry d14 = SerializableShaderEntry.d("emissiveNits", SerializableShaderEntry.f81148b, dataList);
        if (d14 != null) {
            S1(SerializableShaderEntry.g(d14));
        }
        SerializableShaderEntry d15 = SerializableShaderEntry.d("emissiveColor", SerializableShaderEntry.f81153g, dataList);
        if (d15 != null && (c11 = SerializableShaderEntry.c(d15)) != null) {
            this.emissiveFallback.Y(0, 0, c11);
            this.emissiveFallback.apply();
        }
        SerializableShaderEntry d16 = SerializableShaderEntry.d("minimalAlphaIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d16 != null) {
            this.minimalAlphaIntensity = SerializableShaderEntry.g(d16);
        }
        SerializableShaderEntry d17 = SerializableShaderEntry.d("lightIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d17 != null) {
            this.lightIntensity = SerializableShaderEntry.g(d17);
        }
        SerializableShaderEntry d18 = SerializableShaderEntry.d("roughnessFallback", SerializableShaderEntry.f81148b, dataList);
        if (d18 != null) {
            this.roughnessFallback.d0(0, 0, SerializableShaderEntry.g(d18));
            this.roughnessFallback.apply();
        }
        SerializableShaderEntry d19 = SerializableShaderEntry.d("metallicFallback", SerializableShaderEntry.f81148b, dataList);
        if (d19 != null) {
            this.metallicFallback.d0(0, 0, SerializableShaderEntry.g(d19));
            this.metallicFallback.apply();
        }
        SerializableShaderEntry d20 = SerializableShaderEntry.d("diffuse", SerializableShaderEntry.f81153g, dataList);
        if (d20 != null) {
            ColorINT c12 = SerializableShaderEntry.c(d20);
            if (c12 != null) {
                O1(c12.e0());
            }
        } else {
            SerializableShaderEntry d21 = SerializableShaderEntry.d("color", SerializableShaderEntry.f81153g, dataList);
            if (d21 != null && (c10 = SerializableShaderEntry.c(d21)) != null) {
                O1(c10.e0());
            }
        }
        SerializableShaderEntry d22 = SerializableShaderEntry.d("albedo", SerializableShaderEntry.f81152f, dataList);
        if (d22 != null) {
            ub.g u18 = SerializableShaderEntry.u(d22);
            if (u18 != null) {
                L1(u18.p0());
            }
        } else {
            SerializableShaderEntry d23 = SerializableShaderEntry.d(ResourceLocatorTool.TYPE_TEXTURE, SerializableShaderEntry.f81152f, dataList);
            if (d23 != null && (u10 = SerializableShaderEntry.u(d23)) != null) {
                L1(u10.p0());
            }
        }
        SerializableShaderEntry d24 = SerializableShaderEntry.d("normalMap", SerializableShaderEntry.f81152f, dataList);
        if (d24 != null && (u17 = SerializableShaderEntry.u(d24)) != null) {
            X1(u17.p0());
        }
        SerializableShaderEntry d25 = SerializableShaderEntry.d("normalStrength", SerializableShaderEntry.f81148b, dataList);
        if (d25 != null) {
            this.normalStrength = SerializableShaderEntry.g(d25);
            l2();
        }
        SerializableShaderEntry d26 = SerializableShaderEntry.d("lightMap", SerializableShaderEntry.f81152f, dataList);
        if (d26 != null && (u16 = SerializableShaderEntry.u(d26)) != null) {
            U1(u16.p0());
        }
        SerializableShaderEntry d27 = SerializableShaderEntry.d("roughnessMap", SerializableShaderEntry.f81152f, dataList);
        if (d27 != null && (u15 = SerializableShaderEntry.u(d27)) != null) {
            Z1(u15.p0());
        }
        SerializableShaderEntry d28 = SerializableShaderEntry.d("aoMap", SerializableShaderEntry.f81152f, dataList);
        if (d28 != null) {
            ub.g u19 = SerializableShaderEntry.u(d28);
            if (u19 != null) {
                M1(u19.p0());
            }
        } else {
            SerializableShaderEntry d29 = SerializableShaderEntry.d("ao", SerializableShaderEntry.f81152f, dataList);
            if (d29 != null && (u11 = SerializableShaderEntry.u(d29)) != null) {
                M1(u11.p0());
            }
        }
        SerializableShaderEntry d30 = SerializableShaderEntry.d("metallicMap", SerializableShaderEntry.f81152f, dataList);
        if (d30 != null && (u14 = SerializableShaderEntry.u(d30)) != null) {
            W1(u14.p0());
        }
        SerializableShaderEntry d31 = SerializableShaderEntry.d("alphaMap", SerializableShaderEntry.f81152f, dataList);
        if (d31 != null && (u13 = SerializableShaderEntry.u(d31)) != null) {
            this.alpha = u13.p0();
        }
        SerializableShaderEntry d32 = SerializableShaderEntry.d("emissive", SerializableShaderEntry.f81152f, dataList);
        if (d32 != null && (u12 = SerializableShaderEntry.u(d32)) != null) {
            R1(u12.p0());
        }
        SerializableShaderEntry d33 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d33 != null) {
            N1(EnumC13053a.valueOf(SerializableShaderEntry.s(d33)));
        }
        SerializableShaderEntry d34 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d34 != null) {
            V1(SerializableShaderEntry.g(d34));
        }
        SerializableShaderEntry d35 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d35 != null) {
            a2(SerializableShaderEntry.g(d35));
        }
        SerializableShaderEntry d36 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d36 != null) {
            n0(SerializableShaderEntry.h(d36));
        }
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            SerializableShaderEntry d37 = SerializableShaderEntry.d(o12.f28153d + "ND", SerializableShaderEntry.f81157k, dataList);
            if (d37 != null && (s10 = SerializableShaderEntry.s(d37)) != null) {
                NoiseData fromJson = NoiseData.fromJson(s10);
                o12.f28151b = fromJson;
                if (fromJson != null) {
                    o12.f28150a = true;
                }
            }
        }
        j2();
        this.uv.c(dataList);
    }

    public final void b2() {
        if (D() == null) {
            return;
        }
        super.T(this.albedo, true, "albedo");
        if (K8.a.r()) {
            i(this.albedo, C16165b.f130161g, "albedo", D());
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.z1();
                }
            });
        }
    }

    @Override
    public void c0(List<SerializableShaderEntry> dataList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SerializableShaderEntry e10 = SerializableShaderEntry.e("textureSourceOpen", "Boolean", dataList);
        steppedArrayList.add(e10);
        SerializableShaderEntry.q(e10, this.textureSourceOpen);
        SerializableShaderEntry e11 = SerializableShaderEntry.e("doubleSided", "Boolean", dataList);
        steppedArrayList.add(e11);
        SerializableShaderEntry.q(e11, this.doubleSided);
        SerializableShaderEntry e12 = SerializableShaderEntry.e("drawInFront", "Boolean", dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.q(e12, this.drawInFront);
        SerializableShaderEntry e13 = SerializableShaderEntry.e("alphaCutout", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.i(e13, this.alphaCutout);
        SerializableShaderEntry e14 = SerializableShaderEntry.e("minimalAlphaIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.i(e14, this.minimalAlphaIntensity);
        SerializableShaderEntry e15 = SerializableShaderEntry.e("lightIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.i(e15, this.lightIntensity);
        SerializableShaderEntry e16 = SerializableShaderEntry.e("roughnessFallback", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e16);
        SerializableShaderEntry.i(e16, this.roughnessFallback.o(0, 0));
        SerializableShaderEntry e17 = SerializableShaderEntry.e("metallicFallback", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e17);
        SerializableShaderEntry.i(e17, this.metallicFallback.o(0, 0));
        SerializableShaderEntry e18 = SerializableShaderEntry.e("diffuse", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e18);
        SerializableShaderEntry.l(e18, this.diffuse.instance);
        SerializableShaderEntry e19 = SerializableShaderEntry.e("emissiveColor", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e19);
        SerializableShaderEntry.l(e19, this.emissiveFallback.i(0, 0));
        SerializableShaderEntry e20 = SerializableShaderEntry.e("albedo", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e20);
        SerializableShaderEntry.k(e20, this.albedo);
        SerializableShaderEntry e21 = SerializableShaderEntry.e("normalMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e21);
        SerializableShaderEntry.k(e21, this.normal);
        SerializableShaderEntry e22 = SerializableShaderEntry.e("normalStrength", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e22);
        SerializableShaderEntry.i(e22, this.normalStrength);
        SerializableShaderEntry e23 = SerializableShaderEntry.e("lightMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e23);
        SerializableShaderEntry.k(e23, this.lightMap);
        SerializableShaderEntry e24 = SerializableShaderEntry.e("roughnessMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e24);
        SerializableShaderEntry.k(e24, this.roughness);
        SerializableShaderEntry e25 = SerializableShaderEntry.e("aoMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e25);
        SerializableShaderEntry.k(e25, this.ao);
        SerializableShaderEntry e26 = SerializableShaderEntry.e("emissiveNits", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e26);
        SerializableShaderEntry.i(e26, this.emissiveNits);
        SerializableShaderEntry e27 = SerializableShaderEntry.e("metallicMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e27);
        SerializableShaderEntry.k(e27, this.metallic);
        SerializableShaderEntry e28 = SerializableShaderEntry.e("emissive", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e28);
        SerializableShaderEntry.k(e28, this.emissive);
        SerializableShaderEntry e29 = SerializableShaderEntry.e("alphaMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e29);
        SerializableShaderEntry.k(e29, this.alpha);
        SerializableShaderEntry e30 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e30);
        SerializableShaderEntry.o(e30, this.blendingMode.toString());
        SerializableShaderEntry e31 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e31);
        SerializableShaderEntry.i(e31, this.localWindIntensity);
        SerializableShaderEntry e32 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e32);
        SerializableShaderEntry.i(e32, this.windVerticality);
        SerializableShaderEntry e33 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e33);
        SerializableShaderEntry.j(e33, K());
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            SerializableShaderEntry e34 = SerializableShaderEntry.e(o12.f28153d + "ND", SerializableShaderEntry.f81157k, dataList);
            steppedArrayList.add(e34);
            NoiseData noiseData = o12.f28151b;
            if (noiseData == null || !o12.f28150a) {
                SerializableShaderEntry.o(e34, null);
            } else {
                SerializableShaderEntry.o(e34, noiseData.toJson());
            }
        }
        this.uv.d(dataList, steppedArrayList);
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    public final void c2() {
        if (D() == null) {
            return;
        }
        super.T(this.ao, false, "ao");
        if (K8.a.r()) {
            i(this.ao, C16165b.f130161g, "aoMap", D());
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.A1();
                }
            });
        }
    }

    @Override
    public boolean d() {
        if (this.alphaCutout < 1.0f && this.diffuse.getFloatAlpha() > 0.0f) {
            return super.d();
        }
        return false;
    }

    public final void d2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.B1();
                }
            });
        }
    }

    public final void e2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            z0(this.emissive, this.emissiveFallback, C16165b.f130163i, "emissive", D());
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.C1();
                }
            });
        }
    }

    public final void f2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("emissiveNits", this.emissiveNits);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.D1();
                }
            });
        }
    }

    public final void g2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("lightIntensity", Nc.b.I(this.lightIntensity));
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.E1();
                }
            });
        }
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        d2();
        b2();
        k2();
        m2();
        i2();
        c2();
        h2();
        g2();
        e2();
        f2();
        n2();
        r1();
        s1();
    }

    public final void h2() {
        if (D() == null) {
            return;
        }
        super.T(this.lightMap, false, "lightMap");
        if (K8.a.r()) {
            i(this.lightMap, C16165b.f130163i, "lightMap", D());
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.F1();
                }
            });
        }
    }

    @Override
    public void i0(String entry, float value) {
        if (entry.equalsIgnoreCase("roughness")) {
            this.roughnessFallback.d0(0, 0, value);
            this.roughnessFallback.apply();
            Z();
        } else if (entry.equalsIgnoreCase("metallic")) {
            this.metallicFallback.d0(0, 0, value);
            this.metallicFallback.apply();
            Z();
        } else if (entry.equalsIgnoreCase("windeffect")) {
            V1(value);
        } else if (entry.equalsIgnoreCase("windVerticality")) {
            a2(value);
        } else {
            super.i0(entry, value);
        }
    }

    public final void i2() {
        if (D() == null) {
            return;
        }
        super.T(this.metallic, false, "metallic");
        if (K8.a.r()) {
            z0(this.metallic, this.metallicFallback, C16165b.f130163i, "metallicMap", D());
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.G1();
                }
            });
        }
    }

    public final void j2() {
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
        r1();
        s1();
    }

    public final void k2() {
        if (D() == null) {
            return;
        }
        super.T(this.normal, false, "normal map");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.H1();
                }
            });
            return;
        }
        H0();
        B0(F0(), C16165b.f130166l, "normalMap", D());
        l2();
    }

    @Override
    public ShaderBinder l() {
        LitLightMapBinder litLightMapBinder = new LitLightMapBinder();
        litLightMapBinder.albedo = this.albedo;
        litLightMapBinder.diffuse = this.diffuse.copy();
        litLightMapBinder.normal = this.normal;
        litLightMapBinder.normalStrength = this.normalStrength;
        litLightMapBinder.roughness = this.roughness;
        litLightMapBinder.metallic = this.metallic;
        litLightMapBinder.ao = this.ao;
        litLightMapBinder.alpha = this.alpha;
        litLightMapBinder.emissive = this.emissive;
        litLightMapBinder.emissiveNits = this.emissiveNits;
        litLightMapBinder.minimalAlphaIntensity = this.minimalAlphaIntensity;
        litLightMapBinder.alphaCutout = this.alphaCutout;
        litLightMapBinder.uv = this.uv.a();
        litLightMapBinder.doubleSided = this.doubleSided;
        litLightMapBinder.windVerticality = this.windVerticality;
        litLightMapBinder.n0(K());
        litLightMapBinder.blendingMode = this.blendingMode;
        litLightMapBinder.drawInFront = this.drawInFront;
        litLightMapBinder.localWindIntensity = this.localWindIntensity;
        return litLightMapBinder;
    }

    public final void l2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("normalStrength", this.normalStrength);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.I1();
                }
            });
        }
    }

    public final void m2() {
        if (D() == null) {
            return;
        }
        super.T(this.roughness, false, "roughness");
        if (K8.a.r()) {
            z0(this.roughness, this.roughnessFallback, C16165b.f130163i, "roughnessMap", D());
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitLightMapBinder.this.J1();
                }
            });
        }
    }

    public final void n2() {
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
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector25 = this.uv.roughnessTilling.instance;
        D14.y("roughnessTilling", vector25.f79838x, vector25.f79839y);
        FilamentMaterial D15 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector26 = this.uv.roughnessOffset.instance;
        D15.y("roughnessOffset", vector26.f79838x, vector26.f79839y);
        FilamentMaterial D16 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector27 = this.uv.metallicTilling.instance;
        D16.y("metallicTilling", vector27.f79838x, vector27.f79839y);
        FilamentMaterial D17 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector28 = this.uv.metallicOffset.instance;
        D17.y("metallicOffset", vector28.f79838x, vector28.f79839y);
        FilamentMaterial D18 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector29 = this.uv.aoTilling.instance;
        D18.y("aoTilling", vector29.f79838x, vector29.f79839y);
        FilamentMaterial D19 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector210 = this.uv.aoOffset.instance;
        D19.y("aoOffset", vector210.f79838x, vector210.f79839y);
        FilamentMaterial D20 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector211 = this.uv.heightTilling.instance;
        D20.y("heightTilling", vector211.f79838x, vector211.f79839y);
        FilamentMaterial D21 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector212 = this.uv.heightOffset.instance;
        D21.y("heightOffset", vector212.f79838x, vector212.f79839y);
        FilamentMaterial D22 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector213 = this.uv.emissiveTilling.instance;
        D22.y("emissiveTilling", vector213.f79838x, vector213.f79839y);
        FilamentMaterial D23 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector214 = this.uv.emissiveOffset.instance;
        D23.y("emissiveOffset", vector214.f79838x, vector214.f79839y);
    }

    @Override
    public p r(String entry) {
        if (entry == null) {
            return null;
        }
        return (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) ? C16165b.f130166l : (entry.equalsIgnoreCase("roughness") || entry.equalsIgnoreCase("roughnessMap")) ? this.roughnessFallback : (entry.equalsIgnoreCase("ao") || entry.equalsIgnoreCase("aoMap")) ? C16165b.f130161g : (entry.equalsIgnoreCase("height") || entry.equalsIgnoreCase("heightMap")) ? C16165b.f130163i : entry.equalsIgnoreCase("emissive") ? this.emissiveFallback : super.r(entry);
    }

    @Override
    public void r0(String entry, p texture) {
        if (entry.equalsIgnoreCase("albedo") || entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            if (texture != null) {
                L1(texture.p0());
                return;
            } else {
                L1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase(JavaCore.NORMAL)) {
            if (texture != null) {
                X1(texture.p0());
                return;
            } else {
                X1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("roughness")) {
            if (texture != null) {
                Z1(texture.p0());
                return;
            } else {
                Z1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("metallic")) {
            if (texture != null) {
                W1(texture.p0());
                return;
            } else {
                W1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("ao")) {
            if (texture != null) {
                M1(texture.p0());
                return;
            } else {
                M1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("lightMap")) {
            if (texture != null) {
                U1(texture.p0());
                return;
            } else {
                U1(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("emissive")) {
            super.r0(entry, texture);
        } else if (texture != null) {
            R1(texture.p0());
        } else {
            R1(null);
        }
    }

    public final void r1() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    @Override
    public void s0(String entry, String file) {
        if (entry.equalsIgnoreCase("albedo") || entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            Texture texture = this.albedo;
            if (texture != null) {
                p pVar = texture.instance;
                if ((pVar instanceof ub.g) && ((ub.g) pVar).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                L1(null);
                return;
            }
            ub.g u10 = C16165b.u(file);
            if (u10 != null) {
                L1(u10.p0());
                return;
            } else {
                L1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase(JavaCore.NORMAL)) {
            Texture texture2 = this.normal;
            if (texture2 != null) {
                p pVar2 = texture2.instance;
                if ((pVar2 instanceof ub.g) && ((ub.g) pVar2).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                X1(null);
                return;
            }
            ub.g u11 = C16165b.u(file);
            if (u11 != null) {
                X1(u11.p0());
                return;
            } else {
                X1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("roughness")) {
            Texture texture3 = this.roughness;
            if (texture3 != null) {
                p pVar3 = texture3.instance;
                if ((pVar3 instanceof ub.g) && ((ub.g) pVar3).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                Z1(null);
                return;
            }
            ub.g u12 = C16165b.u(file);
            if (u12 != null) {
                Z1(u12.p0());
                return;
            } else {
                Z1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("metallic")) {
            Texture texture4 = this.metallic;
            if (texture4 != null) {
                p pVar4 = texture4.instance;
                if ((pVar4 instanceof ub.g) && ((ub.g) pVar4).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                W1(null);
                return;
            }
            ub.g u13 = C16165b.u(file);
            if (u13 != null) {
                W1(u13.p0());
                return;
            } else {
                W1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("ao")) {
            Texture texture5 = this.ao;
            if (texture5 != null) {
                p pVar5 = texture5.instance;
                if ((pVar5 instanceof ub.g) && ((ub.g) pVar5).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                M1(null);
                return;
            }
            ub.g u14 = C16165b.u(file);
            if (u14 != null) {
                M1(u14.p0());
                return;
            } else {
                M1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("lightMap")) {
            Texture texture6 = this.ao;
            if (texture6 != null) {
                p pVar6 = texture6.instance;
                if ((pVar6 instanceof ub.g) && ((ub.g) pVar6).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                U1(null);
                return;
            }
            ub.g u15 = C16165b.u(file);
            if (u15 != null) {
                U1(u15.p0());
                return;
            } else {
                U1(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("emissive")) {
            super.s0(entry, file);
            return;
        }
        Texture texture7 = this.emissive;
        if (texture7 != null) {
            p pVar7 = texture7.instance;
            if ((pVar7 instanceof ub.g) && ((ub.g) pVar7).getFile().equals(file)) {
                return;
            }
        }
        if (file == null || file.isEmpty()) {
            R1(null);
            return;
        }
        ub.g u16 = C16165b.u(file);
        if (u16 != null) {
            R1(u16.p0());
        } else {
            R1(null);
        }
    }

    public final void s1() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.w(this.windVerticality);
        }
    }

    public final C5.b t1(String tittle, com.itsmagic.engine.Engines.Engine.Vector.Vector2 var, com.itsmagic.engine.Engines.Engine.Vector.Vector2 reset) {
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

    @Override
    public float u(String entry) {
        return entry.equalsIgnoreCase("windeffect") ? this.localWindIntensity : entry.equalsIgnoreCase("windVerticality") ? this.windVerticality : super.u(entry);
    }

    public O1 u1(String fieldName) {
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            if (o12.f28153d.equals(fieldName)) {
                return o12;
            }
        }
        return null;
    }

    public final EnumC13053a v1() {
        p pVar;
        p pVar2;
        EnumC13053a enumC13053a = this.blendingMode;
        EnumC13053a enumC13053a2 = EnumC13053a.MASKED;
        if (enumC13053a != enumC13053a2) {
            return enumC13053a;
        }
        Texture texture = this.albedo;
        boolean z10 = texture != null && (pVar2 = texture.instance) != null && pVar2.J() && this.albedo.instance.C();
        Texture texture2 = this.alpha;
        if (texture2 != null && (pVar = texture2.instance) != null && pVar.J()) {
            z10 = true;
        }
        return this.diffuse.getFloatAlpha() >= 1.0f ? z10 : true ? enumC13053a2 : EnumC13053a.OPAQUE;
    }

    @Override
    public void w0(String entry, com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2) {
        try {
            this.uv.e(entry, vector2);
            n2();
            Z();
        } catch (Exception unused) {
            super.w0(entry, vector2);
        }
    }

    public float w1() {
        return this.localWindIntensity;
    }

    public float x1() {
        return this.windVerticality;
    }

    @Override
    public ec.i y0(ec.i variance, C4171b renderPass) {
        EnumC13053a v12 = v1();
        boolean z10 = variance.a().ordinal() != v12.ordinal();
        if (variance.i() != this.doubleSided) {
            z10 = true;
        }
        if (variance.g() == this.drawInFront) {
            z10 = true;
        }
        if (!z10) {
            return variance;
        }
        MaterialBuilder.a valueOf = MaterialBuilder.a.valueOf(v12.name());
        MaterialBuilder.c cVar = MaterialBuilder.c.BACK;
        boolean z11 = this.doubleSided;
        boolean z12 = this.drawInFront;
        return new ec.i(valueOf, 0.5f, cVar, z11, null, !z12, !z12);
    }

    public final void y1() {
        D0();
        H0();
        k2();
    }

    public final void z1() {
        i(this.albedo, C16165b.f130161g, "albedo", D());
    }
}
