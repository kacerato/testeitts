package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Matcap;

import C5.b;
import F5.c;
import G5.a;
import JAVARuntime.Color;
import JAVARuntime.Runnable;
import JAVARuntime.Texture;
import JAVARuntime.Vector2;
import android.content.Context;
import android.widget.LinearLayout;
import androidx.annotation.Keep;
import cc.C4171b;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Matcap.MatcapLitBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.EnumC13053a;
import java.lang.reflect.Field;
import java.util.List;
import org.eclipse.jdt.core.JavaCore;
import ub.p;
import yb.C16165b;

public class MatcapLitBinder extends MatcapBinder {
    private String activePreset;
    public EnumC13053a blendingMode;

    @Keep
    public final ec.d blendingMode_OFCBRL;
    private boolean doubleSided;

    @Keep
    public final ec.d doubleSided_OFCBRL;
    private boolean drawInFront;

    @Keep
    public final ec.d drawInFront_OFCBRL;

    @eb.f
    private float localWindIntensity;

    @Keep
    public final ec.d localWindIntensity_OFCBRL;

    @eb.f
    public Texture matcap;

    @eb.f
    public Texture metallic;
    private final ub.n metallicFallback;
    private final Bb.e metallicListener;

    @eb.f
    public Texture normalMap;

    @eb.f
    public Texture roughness;
    private final ub.n roughnessFallback;
    private final Bb.e roughnessListener;
    private String selectedPreset;

    @eb.f
    public UVs uv;

    @eb.f
    private float windVerticality;

    @Keep
    public final ec.d windVerticality_OFCBRL;

    @eb.f
    public Color diffuse = new Color(255, 255, 255);

    @Keep
    public final ec.d diffuse_OFCBRL = new ec.d() {
        @Override
        public final void a() {
            MatcapLitBinder.this.i1();
        }
    };
    private final Bb.e matcapListener = new Bb.e() {
        @Override
        public final void b() {
            MatcapLitBinder.this.j1();
        }
    };
    private final Bb.e normalListener = new Bb.e() {
        @Override
        public final void b() {
            MatcapLitBinder.this.l1();
        }
    };

    @P8.o
    public static class UVs {
        public Vector2 normalTilling = new Vector2(1.0f);
        public Vector2 normalOffset = new Vector2();
        public Vector2 roughnessTilling = new Vector2(1.0f);
        public Vector2 roughnessOffset = new Vector2();
        public Vector2 metallicTilling = new Vector2(1.0f);
        public Vector2 metallicOffset = new Vector2();

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

        public final ShaderBinder.b f80939a;

        public class C1473a implements Runnable {

            public final EnumC13053a f80941b;

            public C1473a(final EnumC13053a val$value) {
                this.f80941b = val$value;
            }

            @Override
            public void run() {
                MatcapLitBinder.this.Z0(this.f80941b);
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f80939a = val$listener;
        }

        @Override
        public void a() {
            ShaderBinder.b bVar = this.f80939a;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new C1473a(value));
        }
    }

    public class b implements c.o0 {

        public final String f80943a;

        public final String f80944b;

        public final ShaderBinder.b f80945c;

        public class a implements D5.h {

            public class C1474a implements Runnable {

                public final Variable f80948b;

                public C1474a(final Variable val$variable) {
                    this.f80948b = val$variable;
                }

                @Override
                public void run() {
                    MatcapLitBinder.this.d1(Math.max(0.0f, this.f80948b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", MatcapLitBinder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1474a(variable));
                }
            }
        }

        public class C1475b implements D5.h {

            public class a implements Runnable {

                public final Variable f80951b;

                public a(final Variable val$variable) {
                    this.f80951b = val$variable;
                }

                @Override
                public void run() {
                    MatcapLitBinder.this.h1(Math.max(0.0f, Math.min(1.0f, this.f80951b.float_value)));
                }
            }

            public C1475b() {
            }

            @Override
            public Variable get() {
                return new Variable("", MatcapLitBinder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public b(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80943a = val$objectUID;
            this.f80944b = val$componentUID;
            this.f80945c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            ShaderBinder.b bVar;
            ShaderBinder.b bVar2;
            C5.b bVar3 = new C5.b(new a(), "Intensity", b.a.SLFloat);
            String str = this.f80943a;
            if (str != null && this.f80944b != null && (bVar2 = this.f80945c) != null) {
                bVar3.f(str, bVar2.b(), "localWindIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar3);
            C5.b bVar4 = new C5.b(new C1475b(), "Verticality", b.a.SLFloat01);
            String str2 = this.f80943a;
            if (str2 != null && this.f80944b != null && (bVar = this.f80945c) != null) {
                bVar4.f(str2, bVar.b(), "windVerticality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar4);
            return entries;
        }
    }

    public class c implements c.o0 {

        public class a implements D5.h {

            public class C1476a implements Runnable {

                public final Variable f80955b;

                public C1476a(final Variable val$variable) {
                    this.f80955b = val$variable;
                }

                @Override
                public void run() {
                    MatcapLitBinder.this.n0(Math.max(-32768, Math.min(32767, this.f80955b.int_value)));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", MatcapLitBinder.this.K() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1476a(variable));
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

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80957a;

        public class a implements Runnable {

            public final Variable f80959b;

            public a(final Variable val$variable) {
                this.f80959b = val$variable;
            }

            @Override
            public void run() {
                d dVar = d.this;
                dVar.f80957a.f79838x = this.f80959b.float_value;
                MatcapLitBinder.this.o1();
                MatcapLitBinder.this.Z();
            }
        }

        public d(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80957a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80957a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80957a.f79838x + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80961a;

        public class a implements Runnable {

            public final Variable f80963b;

            public a(final Variable val$variable) {
                this.f80963b = val$variable;
            }

            @Override
            public void run() {
                e eVar = e.this;
                eVar.f80961a.f79839y = this.f80963b.float_value;
                MatcapLitBinder.this.o1();
                MatcapLitBinder.this.Z();
            }
        }

        public e(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80961a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80961a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80961a.f79839y + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80965a;

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80966b;

        public final C5.b f80967c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                f fVar = f.this;
                com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = fVar.f80965a;
                if (vector2 != null) {
                    vector2.x0(fVar.f80966b);
                    MatcapLitBinder.this.o1();
                    MatcapLitBinder.this.Z();
                }
                D5.f fVar2 = f.this.f80967c.f2081p[0].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
                D5.f fVar3 = f.this.f80967c.f2081p[1].f2076k;
                if (fVar3 != null) {
                    fVar3.a();
                }
            }
        }

        public f(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var, final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$reset, final C5.b val$rectPosVector) {
            this.f80965a = val$var;
            this.f80966b = val$reset;
            this.f80967c = val$rectPosVector;
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

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            MatcapLitBinder.this.m1();
        }
    }

    public class h implements D5.h {

        public class a implements Runnable {

            public final Variable f80972b;

            public a(final Variable val$variable) {
                this.f80972b = val$variable;
            }

            @Override
            public void run() {
                MatcapLitBinder.this.a1(new ColorINT(this.f80972b.color_value.intColor).e0());
            }
        }

        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", MatcapLitBinder.this.diffuse.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class i implements D5.h {

        public class a implements Runnable {

            public final Variable f80975b;

            public a(final Variable val$variable) {
                this.f80975b = val$variable;
            }

            @Override
            public void run() {
                Variable variable = this.f80975b;
                String str = variable != null ? variable.str_value : null;
                if (str != null && str.startsWith("@@MG@@")) {
                    MatcapLitBinder.this.B0(str.substring(6));
                    return;
                }
                if (str == null || str.isEmpty()) {
                    MatcapLitBinder.this.B0(null);
                    MatcapLitBinder.this.A0(null);
                } else {
                    ub.g u10 = C16165b.u(str);
                    MatcapLitBinder.this.B0(null);
                    MatcapLitBinder.this.A0(u10 != null ? u10.p0() : null);
                }
            }
        }

        public i() {
        }

        @Override
        public Variable get() {
            if (MatcapLitBinder.this.selectedPreset != null && !MatcapLitBinder.this.selectedPreset.isEmpty()) {
                return new Variable("temp", "@@MG@@" + MatcapLitBinder.this.selectedPreset);
            }
            Texture texture = MatcapLitBinder.this.matcap;
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

    public class j implements D5.h {

        public class a implements Runnable {

            public final Variable f80978b;

            public a(final Variable val$variable) {
                this.f80978b = val$variable;
            }

            @Override
            public void run() {
                Variable variable = this.f80978b;
                ub.g u10 = C16165b.u(variable != null ? variable.str_value : null);
                MatcapLitBinder.this.f1(u10 != null ? u10.p0() : null);
            }
        }

        public j() {
        }

        @Override
        public Variable get() {
            Texture texture = MatcapLitBinder.this.normalMap;
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

    public class k extends a.j {

        public final ShaderBinder.b f80980a;

        public class a implements Runnable {

            public final ub.g f80982b;

            public a(final ub.g val$fileTexture) {
                this.f80982b = val$fileTexture;
            }

            @Override
            public void run() {
                MatcapLitBinder matcapLitBinder = MatcapLitBinder.this;
                ub.g gVar = this.f80982b;
                matcapLitBinder.g1(gVar != null ? gVar.p0() : null);
            }
        }

        public k(final ShaderBinder.b val$listener) {
            this.f80980a = val$listener;
        }

        @Override
        public void a() {
            ShaderBinder.b bVar = this.f80980a;
            if (bVar != null) {
                bVar.a();
            }
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
            MatcapLitBinder.this.roughnessFallback.d0(0, 0, v10);
            MatcapLitBinder.this.roughnessFallback.apply();
            MatcapLitBinder.this.Z();
        }

        @Override
        public String get() {
            Texture texture = MatcapLitBinder.this.roughness;
            if (texture == null) {
                return "";
            }
            p pVar = texture.instance;
            return pVar instanceof ub.g ? ((ub.g) pVar).getFile() : "";
        }

        @Override
        public float getFloatValue() {
            return MatcapLitBinder.this.roughnessFallback.o(0, 0);
        }

        @Override
        public Texture getInstance() {
            return MatcapLitBinder.this.roughness;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            MatcapLitBinder matcapLitBinder = MatcapLitBinder.this;
            steppedArrayList.add(matcapLitBinder.V0("tilling", matcapLitBinder.uv.roughnessTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            MatcapLitBinder matcapLitBinder2 = MatcapLitBinder.this;
            steppedArrayList.add(matcapLitBinder2.V0("offset", matcapLitBinder2.uv.roughnessOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return steppedArrayList;
        }
    }

    public class l extends a.j {

        public final ShaderBinder.b f80984a;

        public class a implements Runnable {

            public final ub.g f80986b;

            public a(final ub.g val$fileTexture) {
                this.f80986b = val$fileTexture;
            }

            @Override
            public void run() {
                MatcapLitBinder matcapLitBinder = MatcapLitBinder.this;
                ub.g gVar = this.f80986b;
                matcapLitBinder.e1(gVar != null ? gVar.p0() : null);
            }
        }

        public l(final ShaderBinder.b val$listener) {
            this.f80984a = val$listener;
        }

        @Override
        public void a() {
            ShaderBinder.b bVar = this.f80984a;
            if (bVar != null) {
                bVar.a();
            }
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
            MatcapLitBinder.this.metallicFallback.d0(0, 0, v10);
            MatcapLitBinder.this.metallicFallback.apply();
            MatcapLitBinder.this.Z();
        }

        @Override
        public String get() {
            Texture texture = MatcapLitBinder.this.metallic;
            if (texture == null) {
                return "";
            }
            p pVar = texture.instance;
            return pVar instanceof ub.g ? ((ub.g) pVar).getFile() : "";
        }

        @Override
        public float getFloatValue() {
            return MatcapLitBinder.this.metallicFallback.o(0, 0);
        }

        @Override
        public Texture getInstance() {
            return MatcapLitBinder.this.metallic;
        }

        @Override
        public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            MatcapLitBinder matcapLitBinder = MatcapLitBinder.this;
            steppedArrayList.add(matcapLitBinder.V0("tilling", matcapLitBinder.uv.metallicTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            MatcapLitBinder matcapLitBinder2 = MatcapLitBinder.this;
            steppedArrayList.add(matcapLitBinder2.V0("offset", matcapLitBinder2.uv.metallicOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return steppedArrayList;
        }
    }

    public class m implements c.o0 {
        public m() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            MatcapLitBinder matcapLitBinder = MatcapLitBinder.this;
            entries.add(matcapLitBinder.V0("tilling", matcapLitBinder.uv.normalTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
            MatcapLitBinder matcapLitBinder2 = MatcapLitBinder.this;
            entries.add(matcapLitBinder2.V0("offset", matcapLitBinder2.uv.normalOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
            return entries;
        }
    }

    public class n implements D5.h {

        public class a implements Runnable {

            public final Variable f80990b;

            public a(final Variable val$variable) {
                this.f80990b = val$variable;
            }

            @Override
            public void run() {
                MatcapLitBinder.this.b1(this.f80990b.booolean_value.booleanValue());
            }
        }

        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", MatcapLitBinder.this.doubleSided + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class o implements D5.h {

        public class a implements Runnable {

            public final Variable f80993b;

            public a(final Variable val$variable) {
                this.f80993b = val$variable;
            }

            @Override
            public void run() {
                MatcapLitBinder.this.c1(this.f80993b.booolean_value.booleanValue());
            }
        }

        public o() {
        }

        @Override
        public Variable get() {
            return new Variable("", MatcapLitBinder.this.drawInFront + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public MatcapLitBinder() {
        Bb.e eVar = new Bb.e() {
            @Override
            public final void b() {
                MatcapLitBinder.this.n1();
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
                MatcapLitBinder.this.k1();
            }
        };
        this.metallicListener = eVar2;
        ub.n nVar2 = new ub.n(1, 1, true, false);
        this.metallicFallback = nVar2;
        nVar2.Y(0, 0, new ColorINT(0.05f, 0.0f, 0.0f));
        nVar2.e(eVar2);
        this.uv = new UVs();
        this.blendingMode = EnumC13053a.OPAQUE;
        this.blendingMode_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                MatcapLitBinder.this.P();
            }
        };
        this.doubleSided = false;
        this.doubleSided_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                MatcapLitBinder.this.P();
            }
        };
        this.drawInFront = false;
        this.drawInFront_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                MatcapLitBinder.this.P();
            }
        };
        this.localWindIntensity = 0.0f;
        this.localWindIntensity_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                MatcapLitBinder.this.T0();
            }
        };
        this.windVerticality = 1.0f;
        this.windVerticality_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                MatcapLitBinder.this.U0();
            }
        };
        this.selectedPreset = "763C39_431510_210504_55241C-256px.jpg";
        this.activePreset = null;
    }

    public void T0() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    public void U0() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.w(this.windVerticality);
        }
    }

    public C5.b V0(String tittle, com.itsmagic.engine.Engines.Engine.Vector.Vector2 var, com.itsmagic.engine.Engines.Engine.Vector.Vector2 reset) {
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

    private EnumC13053a W0() {
        p pVar;
        EnumC13053a enumC13053a = this.blendingMode;
        EnumC13053a enumC13053a2 = EnumC13053a.MASKED;
        if (enumC13053a != enumC13053a2) {
            return enumC13053a;
        }
        Texture texture = this.matcap;
        return this.diffuse.getFloatAlpha() >= 1.0f ? texture != null && (pVar = texture.instance) != null && pVar.J() && this.matcap.instance.C() : true ? enumC13053a2 : EnumC13053a.OPAQUE;
    }

    public void i1() {
        if (D() == null) {
            return;
        }
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
    }

    public void k1() {
        if (D() == null) {
            return;
        }
        super.T(this.metallic, false, "metallic");
        i(this.metallic, this.metallicFallback, "metallicMap", D());
    }

    public void l1() {
        if (D() == null) {
            return;
        }
        i(this.normalMap, C16165b.f130166l, "normalMap", D());
    }

    public void m1() {
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

    public void n1() {
        if (D() == null) {
            return;
        }
        super.T(this.roughness, false, "roughness");
        i(this.roughness, this.roughnessFallback, "roughnessMap", D());
    }

    public void o1() {
        if (D() == null) {
            return;
        }
        FilamentMaterial D10 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = this.uv.normalTilling.instance;
        D10.y("normalTilling", vector2.f79838x, vector2.f79839y);
        FilamentMaterial D11 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector22 = this.uv.normalOffset.instance;
        D11.y("normalOffset", vector22.f79838x, vector22.f79839y);
        FilamentMaterial D12 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector23 = this.uv.roughnessTilling.instance;
        D12.y("roughnessTilling", vector23.f79838x, vector23.f79839y);
        FilamentMaterial D13 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector24 = this.uv.roughnessOffset.instance;
        D13.y("roughnessOffset", vector24.f79838x, vector24.f79839y);
        FilamentMaterial D14 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector25 = this.uv.metallicTilling.instance;
        D14.y("metallicTilling", vector25.f79838x, vector25.f79839y);
        FilamentMaterial D15 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector26 = this.uv.metallicOffset.instance;
        D15.y("metallicOffset", vector26.f79838x, vector26.f79839y);
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
            j1();
        }
    }

    @Override
    public void B0(String selectedPreset) {
        this.selectedPreset = selectedPreset;
        Z();
        K8.a.I(new g());
    }

    @Override
    public List<C5.b> H(Context context, ShaderBinder.b listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String c10 = listener != null ? listener.c() : null;
        String d10 = listener != null ? listener.d() : null;
        steppedArrayList.add(F5.c.i("blend", EnumC13053a.class, this.blendingMode, new a(listener)));
        C5.b bVar = new C5.b(new h(), Lang.l(Lang.T.COLOR), b.a.Color);
        if (d10 != null && c10 != null && listener != null) {
            bVar.f(d10, listener.b(), "diffuse", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar);
        steppedArrayList.add(new C5.b(new i(), "Matcap", b.a.Matcap, context));
        steppedArrayList.add(new C5.b(new j(), "Normal map", b.a.Texture, context));
        new G5.a("roughness", new k(listener)).C(steppedArrayList);
        new G5.a("metallic", new l(listener)).C(steppedArrayList);
        steppedArrayList.add(F5.c.e("UV", new m()));
        n nVar = new n();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(nVar, "Double sided", aVar));
        steppedArrayList.add(new C5.b(new o(), "Draw in front", aVar));
        steppedArrayList.add(F5.c.e("Wind effect", new b(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Others", new c()));
        return steppedArrayList;
    }

    @Override
    public boolean Q() {
        return this.drawInFront;
    }

    @Override
    public void X() {
        A0(null);
        f1(null);
        g1(null);
        e1(null);
    }

    public float X0() {
        return this.localWindIntensity;
    }

    public float Y0() {
        return this.windVerticality;
    }

    public void Z0(EnumC13053a blendingMode) {
        boolean z10 = this.blendingMode != blendingMode;
        this.blendingMode = blendingMode;
        if (z10) {
            Z();
            P();
        }
    }

    public void a1(Color diffuse) {
        boolean z10 = this.diffuse != diffuse;
        this.diffuse = diffuse;
        if (z10) {
            Z();
            i1();
        }
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        ColorINT c10;
        ub.g u10;
        ub.g u11;
        ub.g u12;
        ub.g u13;
        SerializableShaderEntry d10 = SerializableShaderEntry.d("diffuse", SerializableShaderEntry.f81153g, dataList);
        if (d10 != null) {
            ColorINT c11 = SerializableShaderEntry.c(d10);
            if (c11 != null) {
                a1(c11.e0());
            }
        } else {
            SerializableShaderEntry d11 = SerializableShaderEntry.d("color", SerializableShaderEntry.f81153g, dataList);
            if (d11 != null && (c10 = SerializableShaderEntry.c(d11)) != null) {
                a1(c10.e0());
            }
        }
        SerializableShaderEntry d12 = SerializableShaderEntry.d("matcap", SerializableShaderEntry.f81152f, dataList);
        if (d12 != null) {
            ub.g u14 = SerializableShaderEntry.u(d12);
            if (u14 != null) {
                A0(u14.p0());
            }
        } else {
            SerializableShaderEntry d13 = SerializableShaderEntry.d("environment", SerializableShaderEntry.f81152f, dataList);
            if (d13 != null && (u10 = SerializableShaderEntry.u(d13)) != null) {
                A0(u10.p0());
            }
        }
        SerializableShaderEntry d14 = SerializableShaderEntry.d("normalMap", SerializableShaderEntry.f81152f, dataList);
        if (d14 != null) {
            ub.g u15 = SerializableShaderEntry.u(d14);
            if (u15 != null) {
                f1(u15.p0());
            }
        } else {
            SerializableShaderEntry d15 = SerializableShaderEntry.d(JavaCore.NORMAL, SerializableShaderEntry.f81152f, dataList);
            if (d15 != null && (u11 = SerializableShaderEntry.u(d15)) != null) {
                f1(u11.p0());
            }
        }
        SerializableShaderEntry d16 = SerializableShaderEntry.d("roughnessFallback", SerializableShaderEntry.f81148b, dataList);
        if (d16 != null) {
            this.roughnessFallback.d0(0, 0, SerializableShaderEntry.g(d16));
            this.roughnessFallback.apply();
        }
        SerializableShaderEntry d17 = SerializableShaderEntry.d("metallicFallback", SerializableShaderEntry.f81148b, dataList);
        if (d17 != null) {
            this.metallicFallback.d0(0, 0, SerializableShaderEntry.g(d17));
            this.metallicFallback.apply();
        }
        SerializableShaderEntry d18 = SerializableShaderEntry.d("roughnessMap", SerializableShaderEntry.f81152f, dataList);
        if (d18 != null && (u13 = SerializableShaderEntry.u(d18)) != null) {
            g1(u13.p0());
        }
        SerializableShaderEntry d19 = SerializableShaderEntry.d("metallicMap", SerializableShaderEntry.f81152f, dataList);
        if (d19 != null && (u12 = SerializableShaderEntry.u(d19)) != null) {
            e1(u12.p0());
        }
        SerializableShaderEntry d20 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d20 != null) {
            Z0(EnumC13053a.valueOf(SerializableShaderEntry.s(d20)));
        }
        SerializableShaderEntry d21 = SerializableShaderEntry.d("doubleSided", "Boolean", dataList);
        if (d21 != null) {
            b1(SerializableShaderEntry.a(d21));
        }
        SerializableShaderEntry d22 = SerializableShaderEntry.d("drawInFront", "Boolean", dataList);
        if (d22 != null) {
            c1(SerializableShaderEntry.a(d22));
        }
        SerializableShaderEntry d23 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d23 != null) {
            d1(SerializableShaderEntry.g(d23));
        }
        SerializableShaderEntry d24 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d24 != null) {
            h1(SerializableShaderEntry.g(d24));
        }
        SerializableShaderEntry d25 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d25 != null) {
            n0(SerializableShaderEntry.h(d25));
        }
        this.uv.c(dataList);
    }

    public void b1(boolean doubleSided) {
        boolean z10 = this.doubleSided != doubleSided;
        this.doubleSided = doubleSided;
        if (z10) {
            Z();
            P();
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
        SerializableShaderEntry e12 = SerializableShaderEntry.e("normalMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.k(e12, this.normalMap);
        SerializableShaderEntry e13 = SerializableShaderEntry.e("roughnessFallback", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.i(e13, this.roughnessFallback.o(0, 0));
        SerializableShaderEntry e14 = SerializableShaderEntry.e("metallicFallback", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.i(e14, this.metallicFallback.o(0, 0));
        SerializableShaderEntry e15 = SerializableShaderEntry.e("roughnessMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.k(e15, this.roughness);
        SerializableShaderEntry e16 = SerializableShaderEntry.e("metallicMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e16);
        SerializableShaderEntry.k(e16, this.metallic);
        SerializableShaderEntry e17 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e17);
        SerializableShaderEntry.o(e17, this.blendingMode.toString());
        SerializableShaderEntry e18 = SerializableShaderEntry.e("doubleSided", "Boolean", dataList);
        steppedArrayList.add(e18);
        SerializableShaderEntry.q(e18, this.doubleSided);
        SerializableShaderEntry e19 = SerializableShaderEntry.e("drawInFront", "Boolean", dataList);
        steppedArrayList.add(e19);
        SerializableShaderEntry.q(e19, this.drawInFront);
        SerializableShaderEntry e20 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e20);
        SerializableShaderEntry.i(e20, this.localWindIntensity);
        SerializableShaderEntry e21 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e21);
        SerializableShaderEntry.i(e21, this.windVerticality);
        SerializableShaderEntry e22 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e22);
        SerializableShaderEntry.j(e22, K());
        this.uv.d(dataList, steppedArrayList);
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    public void c1(boolean drawInFront) {
        boolean z10 = this.drawInFront != drawInFront;
        this.drawInFront = drawInFront;
        if (z10) {
            Z();
            P();
        }
    }

    @Override
    public boolean d() {
        if (this.diffuse.getFloatAlpha() <= 0.0f) {
            return false;
        }
        return super.d();
    }

    public void d1(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = localWindIntensity;
        if (z10) {
            Z();
            T0();
        }
    }

    public void e1(Texture metallic) {
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
            k1();
        }
    }

    public void f1(Texture normalMap) {
        Texture texture = this.normalMap;
        boolean z10 = texture != normalMap;
        if (texture != null && z10) {
            texture.instance.T(this.normalListener);
        }
        this.normalMap = normalMap;
        if (normalMap != null && z10) {
            normalMap.instance.e(this.normalListener);
        }
        if (z10) {
            Z();
            l1();
            P();
        }
    }

    public void g1(Texture roughness) {
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
            n1();
        }
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        i1();
        j1();
        l1();
        n1();
        k1();
        T0();
        U0();
        o1();
        m1();
    }

    public void h1(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            U0();
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
            d1(value);
        } else if (entry.equalsIgnoreCase("windVerticality")) {
            h1(value);
        } else {
            super.i0(entry, value);
        }
    }

    public final void j1() {
        if (D() == null) {
            return;
        }
        i(this.matcap, C16165b.f130161g, "matcap", D());
    }

    @Override
    public List<ec.i> k(C4171b renderPass) {
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
                        ec.i iVar = new ec.i(MaterialBuilder.a.valueOf(enumC13053a.name()), 0.5f, MaterialBuilder.c.BACK, z10, null, !z11, !z11);
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
        T0();
        U0();
    }

    @Override
    public ShaderBinder l() {
        MatcapLitBinder matcapLitBinder = new MatcapLitBinder();
        matcapLitBinder.diffuse = this.diffuse.copy();
        matcapLitBinder.matcap = this.matcap;
        matcapLitBinder.normalMap = this.normalMap;
        matcapLitBinder.roughness = this.roughness;
        matcapLitBinder.metallic = this.metallic;
        matcapLitBinder.roughnessFallback.d0(0, 0, this.roughnessFallback.o(0, 0));
        matcapLitBinder.roughnessFallback.apply();
        matcapLitBinder.metallicFallback.d0(0, 0, this.metallicFallback.o(0, 0));
        matcapLitBinder.metallicFallback.apply();
        matcapLitBinder.uv = this.uv.a();
        matcapLitBinder.blendingMode = this.blendingMode;
        matcapLitBinder.doubleSided = this.doubleSided;
        matcapLitBinder.drawInFront = this.drawInFront;
        matcapLitBinder.localWindIntensity = this.localWindIntensity;
        matcapLitBinder.windVerticality = this.windVerticality;
        matcapLitBinder.n0(K());
        return matcapLitBinder;
    }

    @Override
    public void r0(String entry, p texture) {
        if (entry.equalsIgnoreCase("matcap") || entry.equalsIgnoreCase("environment")) {
            if (texture != null) {
                A0(texture.p0());
                return;
            } else {
                A0(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) {
            if (texture != null) {
                f1(texture.p0());
                return;
            } else {
                f1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("roughness") || entry.equalsIgnoreCase("roughnessMap")) {
            if (texture != null) {
                g1(texture.p0());
                return;
            } else {
                g1(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("metallic") && !entry.equalsIgnoreCase("metallicMap")) {
            super.r0(entry, texture);
        } else if (texture != null) {
            e1(texture.p0());
        } else {
            e1(null);
        }
    }

    @Override
    public void s0(String entry, String file) {
        if (entry.equalsIgnoreCase("matcap") || entry.equalsIgnoreCase("environment")) {
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
                return;
            } else {
                A0(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) {
            Texture texture2 = this.normalMap;
            if (texture2 != null) {
                p pVar2 = texture2.instance;
                if ((pVar2 instanceof ub.g) && ((ub.g) pVar2).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                f1(null);
                return;
            }
            ub.g u11 = C16165b.u(file);
            if (u11 != null) {
                f1(u11.p0());
                return;
            } else {
                f1(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("roughness") || entry.equalsIgnoreCase("roughnessMap")) {
            Texture texture3 = this.roughness;
            if (texture3 != null) {
                p pVar3 = texture3.instance;
                if ((pVar3 instanceof ub.g) && ((ub.g) pVar3).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                g1(null);
                return;
            }
            ub.g u12 = C16165b.u(file);
            if (u12 != null) {
                g1(u12.p0());
                return;
            } else {
                g1(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("metallic") && !entry.equalsIgnoreCase("metallicMap")) {
            super.s0(entry, file);
            return;
        }
        Texture texture4 = this.metallic;
        if (texture4 != null) {
            p pVar4 = texture4.instance;
            if ((pVar4 instanceof ub.g) && ((ub.g) pVar4).getFile().equals(file)) {
                return;
            }
        }
        if (file == null || file.isEmpty()) {
            e1(null);
            return;
        }
        ub.g u13 = C16165b.u(file);
        if (u13 != null) {
            e1(u13.p0());
        } else {
            e1(null);
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
            o1();
            Z();
        } catch (Exception unused) {
            super.w0(entry, vector2);
        }
    }

    @Override
    public ec.i y0(ec.i variance, C4171b renderPass) {
        boolean isRenderable = Texture.isRenderable(this.normalMap);
        renderPass.m("hasNormal", isRenderable);
        EnumC13053a W02 = W0();
        boolean z10 = variance.a().ordinal() != W02.ordinal();
        if (variance.i() != this.doubleSided) {
            z10 = true;
        }
        if (variance.g() == this.drawInFront) {
            z10 = true;
        }
        if (variance.b("hasNormal") != isRenderable) {
            z10 = true;
        }
        if (!z10) {
            return variance;
        }
        MaterialBuilder.a valueOf = MaterialBuilder.a.valueOf(W02.name());
        MaterialBuilder.c cVar = MaterialBuilder.c.BACK;
        boolean z11 = this.doubleSided;
        boolean z12 = this.drawInFront;
        ec.i iVar = new ec.i(valueOf, 0.5f, cVar, z11, null, !z12, !z12);
        iVar.j("hasNormal", isRenderable);
        return iVar;
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
