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
import JAVARuntime.Vector3;
import P8.o;
import Xb.C3240q;
import Xb.O1;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import cc.C4171b;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.i;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.BaseGeneratedTexturesShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitPBRRefractiveBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import ec.EnumC13053a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jdt.core.JavaCore;
import r4.C15147a;
import ub.n;
import ub.p;
import yb.C16165b;

@o
public class LitPBRRefractiveBinder extends BaseGeneratedTexturesShaderBinder {
    public Vector3 absorption;
    private String activePreset;
    public Texture albedo;
    public Texture ao;
    private final Bb.e aoListener;
    private int aoSpriteIndex;
    public EnumC13053a blendingMode;

    @Keep
    public final ec.d blendingMode_OFCBRL;

    @eb.f
    public float dispersion;
    private boolean doubleSided;

    @Keep
    public final ec.d doubleSided_OFCBRL;
    private boolean drawInFront;

    @Keep
    public final ec.d drawInFront_OFCBRL;
    public Texture emissive;
    private final n emissiveFallback;
    private final Bb.e emissiveListener;

    @eb.f
    public float emissiveNits;

    @Keep
    public final ec.d emissiveNits_OFCBRL;
    private int emissiveSpriteIndex;
    private boolean heightActiveInShader;

    @eb.f
    public float ior;

    @eb.f
    private float localWindIntensity;

    @Keep
    public final ec.d localWindIntensity_OFCBRL;
    public Texture metallic;
    private final n metallicFallback;
    private final Bb.e metallicListener;
    private int metallicSpriteIndex;

    @eb.f
    public float microThickness;
    private final List<O1> noiseRefList;
    public Texture normal;
    public Texture opacity;
    private MaterialBuilder.k refractionType;
    public Texture roughness;
    private final n roughnessFallback;
    private final Bb.e roughnessListener;
    private String selectedPreset;

    @eb.f
    public float transmission;
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
            LitPBRRefractiveBinder.this.W2();
        }
    };
    private int albedoSpriteIndex = 0;
    private final Bb.e albedoListener = new Bb.e() {
        @Override
        public final void b() {
            LitPBRRefractiveBinder.this.U2();
        }
    };
    private int opacitySpriteIndex = 0;
    private final Bb.e opacityListener = new Bb.e() {
        @Override
        public final void b() {
            LitPBRRefractiveBinder.this.g3();
        }
    };
    private int normalSpriteIndex = 0;
    private final Bb.e normalListener = new Bb.e() {
        @Override
        public final void b() {
            LitPBRRefractiveBinder.this.e3();
        }
    };

    @eb.f
    private float normalStrength = 1.5f;
    private int roughnessSpriteIndex = 0;

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

        public final ShaderBinder.b f80607a;

        public class C1421a implements Runnable {

            public final EnumC13053a f80609b;

            public C1421a(final EnumC13053a val$value) {
                this.f80609b = val$value;
            }

            @Override
            public void run() {
                LitPBRRefractiveBinder.this.y2(this.f80609b);
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f80607a = val$listener;
        }

        @Override
        public void a() {
            this.f80607a.a();
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new C1421a(value));
        }
    }

    public class b implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80611a;

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80612b;

        public final C5.b f80613c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                b bVar = b.this;
                com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = bVar.f80611a;
                if (vector2 != null) {
                    vector2.x0(bVar.f80612b);
                    LitPBRRefractiveBinder.this.k3();
                    LitPBRRefractiveBinder.this.Z();
                }
                D5.f fVar = b.this.f80613c.f2081p[0].f2076k;
                if (fVar != null) {
                    fVar.a();
                }
                D5.f fVar2 = b.this.f80613c.f2081p[1].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
            }
        }

        public b(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var, final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$reset, final C5.b val$rectPosVector) {
            this.f80611a = val$var;
            this.f80612b = val$reset;
            this.f80613c = val$rectPosVector;
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

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            LitPBRRefractiveBinder.this.h3();
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f80618b;

            public a(final Variable val$variable) {
                this.f80618b = val$variable;
            }

            @Override
            public void run() {
                LitPBRRefractiveBinder.this.z2(new ColorINT(this.f80618b.color_value.intColor).e0());
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", LitPBRRefractiveBinder.this.diffuse.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.e {

        public LinearLayout f80620a;

        public ImageView f80621b;

        public ImageView f80622c;

        public final Context f80623d;

        public final ShaderBinder.b f80624e;

        public class a extends a.j {

            public final ImageView f80626a;

            public class RunnableC1422a implements Runnable {

                public final ub.g f80628b;

                public class RunnableC1423a implements Runnable {
                    public RunnableC1423a() {
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.O2(null);
                        a.this.f80626a.setImageDrawable(null);
                    }
                }

                public RunnableC1422a(final ub.g val$fileTexture) {
                    this.f80628b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                    ub.g gVar = this.f80628b;
                    litPBRRefractiveBinder.L2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new RunnableC1423a());
                }
            }

            public class b implements D5.h {

                public class RunnableC1424a implements Runnable {

                    public final Variable f80632b;

                    public RunnableC1424a(final Variable val$variable) {
                        this.f80632b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.opacitySpriteIndex = this.f80632b.int_value;
                        LitPBRRefractiveBinder.this.g3();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitPBRRefractiveBinder.this.opacitySpriteIndex + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        K8.a.I(new RunnableC1424a(variable));
                    }
                }
            }

            public class c implements Runnable {
                public c() {
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.d3();
                }
            }

            public a(final ImageView val$presetThumbnail) {
                this.f80626a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80624e.a();
            }

            @Override
            public void b(String file) {
                K8.a.I(new RunnableC1422a(C16165b.u(file)));
            }

            @Override
            public void g() {
                K8.a.I(new c());
            }

            @Override
            public String get() {
                Texture texture = LitPBRRefractiveBinder.this.opacity;
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
                return LitPBRRefractiveBinder.this.opacity;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitPBRRefractiveBinder.this.Z1(fieldName);
            }
        }

        public class b extends AbstractViewOnClickListenerC12733a {
            public b() {
            }

            @Override
            public void click(View view) {
                LitPBRRefractiveBinder.this.textureSourceOpen = !r2.textureSourceOpen;
                e eVar = e.this;
                eVar.c(eVar.f80622c);
            }
        }

        public class c extends AbstractViewOnClickListenerC12733a {

            public final Context f80636b;

            public class a implements H3.e {

                public class C1425a implements Runnable {

                    public final String f80639b;

                    public class RunnableC1426a implements Runnable {

                        public class C1427a implements Runnable {
                            public C1427a() {
                            }

                            @Override
                            public void run() {
                                e eVar = e.this;
                                eVar.c(eVar.f80622c);
                            }
                        }

                        public RunnableC1426a() {
                        }

                        @Override
                        public void run() {
                            e eVar = e.this;
                            Vc.e.K(eVar.f80622c, H3.g.z1(LitPBRRefractiveBinder.this.selectedPreset), c.this.f80636b, new Vc.c());
                            N7.c.l(0.2f, new C1427a());
                        }
                    }

                    public C1425a(final String val$file) {
                        this.f80639b = val$file;
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.O2(this.f80639b);
                        N7.c.j0(new RunnableC1426a());
                    }
                }

                public a() {
                }

                @Override
                public String getSelected() {
                    return LitPBRRefractiveBinder.this.selectedPreset;
                }

                @Override
                public void onSelected(String file) {
                    K8.a.I(new C1425a(file));
                }
            }

            public c(final Context val$context) {
                this.f80636b = val$context;
            }

            @Override
            public void click(View view) {
                H3.g.J1(view, C15147a.e.Left, new a());
            }
        }

        public class d implements View.OnLongClickListener {

            public final Context f80643b;

            public class a extends SteppedArrayList<C12908b> {

                public final View f80645b;

                public class C1428a implements dd.d {

                    public class C1429a implements Runnable {
                        public C1429a() {
                        }

                        @Override
                        public void run() {
                            LitPBRRefractiveBinder.this.O2(null);
                            LitPBRRefractiveBinder.this.w2(null);
                            LitPBRRefractiveBinder.this.L2(null);
                            LitPBRRefractiveBinder.this.J2(null);
                            LitPBRRefractiveBinder.this.N2(null);
                            LitPBRRefractiveBinder.this.H2(null);
                            LitPBRRefractiveBinder.this.x2(null);
                            LitPBRRefractiveBinder.this.D2(null);
                        }
                    }

                    public C1428a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        e.this.f80622c.setImageDrawable(null);
                        K8.a.I(new C1429a());
                    }
                }

                public class b implements dd.d {

                    public class C1430a implements Runnable {
                        public C1430a() {
                        }

                        @Override
                        public void run() {
                            LitPBRRefractiveBinder.this.O2(null);
                        }
                    }

                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        e.this.f80622c.setImageDrawable(null);
                        K8.a.I(new C1430a());
                    }
                }

                public class c implements dd.d {

                    public class C1431a implements H3.e {

                        public class C1432a implements Runnable {

                            public final String f80653b;

                            public class RunnableC1433a implements Runnable {

                                public class C1434a implements Runnable {
                                    public C1434a() {
                                    }

                                    @Override
                                    public void run() {
                                        e eVar = e.this;
                                        eVar.c(eVar.f80622c);
                                    }
                                }

                                public RunnableC1433a() {
                                }

                                @Override
                                public void run() {
                                    e eVar = e.this;
                                    Vc.e.K(eVar.f80622c, H3.g.z1(LitPBRRefractiveBinder.this.selectedPreset), d.this.f80643b, new Vc.c());
                                    N7.c.l(0.2f, new C1434a());
                                }
                            }

                            public C1432a(final String val$file) {
                                this.f80653b = val$file;
                            }

                            @Override
                            public void run() {
                                LitPBRRefractiveBinder.this.O2(this.f80653b);
                                N7.c.j0(new RunnableC1433a());
                            }
                        }

                        public C1431a() {
                        }

                        @Override
                        public String getSelected() {
                            return LitPBRRefractiveBinder.this.selectedPreset;
                        }

                        @Override
                        public void onSelected(String file) {
                            K8.a.I(new C1432a(file));
                        }
                    }

                    public c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        H3.g.J1(a.this.f80645b, C15147a.e.Left, new C1431a());
                    }
                }

                public a(final View val$view) {
                    this.f80645b = val$view;
                    add(new C12908b("Clear", new C1428a()));
                    add(new C12908b("Detach", new b()));
                    add(new C12908b("From presets", new c()));
                }
            }

            public d(final Context val$context) {
                this.f80643b = val$context;
            }

            @Override
            public boolean onLongClick(View view) {
                N7.c.Y();
                Y6.a.F1(view, C15147a.e.Left, new a(view));
                return true;
            }
        }

        public class C1435e extends a.j {

            public final ImageView f80657a;

            public class a implements Runnable {

                public final ub.g f80659b;

                public class RunnableC1436a implements Runnable {
                    public RunnableC1436a() {
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.O2(null);
                        C1435e.this.f80657a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80659b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                    ub.g gVar = this.f80659b;
                    litPBRRefractiveBinder.w2(gVar != null ? gVar.p0() : null);
                    LitPBRRefractiveBinder.this.D0();
                    N7.c.j0(new RunnableC1436a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80663b;

                    public a(final Variable val$variable) {
                        this.f80663b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.albedoSpriteIndex = this.f80663b.int_value;
                        LitPBRRefractiveBinder.this.U2();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitPBRRefractiveBinder.this.albedoSpriteIndex + "");
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
                    LitPBRRefractiveBinder.this.d3();
                }
            }

            public C1435e(final ImageView val$presetThumbnail) {
                this.f80657a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80624e.a();
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
                Texture texture = LitPBRRefractiveBinder.this.albedo;
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
                return LitPBRRefractiveBinder.this.albedo;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder.Y1("tilling", litPBRRefractiveBinder.uv.albedoTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitPBRRefractiveBinder litPBRRefractiveBinder2 = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder2.Y1("offset", litPBRRefractiveBinder2.uv.albedoOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitPBRRefractiveBinder.this.Z1(fieldName);
            }
        }

        public class f extends a.j {

            public final ImageView f80666a;

            public class a implements Runnable {

                public final ub.g f80668b;

                public class C1437a implements Runnable {
                    public C1437a() {
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.O2(null);
                        f.this.f80666a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80668b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                    ub.g gVar = this.f80668b;
                    litPBRRefractiveBinder.J2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1437a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80672b;

                    public a(final Variable val$variable) {
                        this.f80672b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.normalSpriteIndex = this.f80672b.int_value;
                        LitPBRRefractiveBinder.this.e3();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitPBRRefractiveBinder.this.normalSpriteIndex + "");
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
                    LitPBRRefractiveBinder.this.d3();
                }
            }

            public f(final ImageView val$presetThumbnail) {
                this.f80666a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80624e.a();
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
                Texture texture = LitPBRRefractiveBinder.this.normal;
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
                return LitPBRRefractiveBinder.this.normal;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder.Y1("tilling", litPBRRefractiveBinder.uv.normalTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitPBRRefractiveBinder litPBRRefractiveBinder2 = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder2.Y1("offset", litPBRRefractiveBinder2.uv.normalOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitPBRRefractiveBinder.this.Z1(fieldName);
            }
        }

        public class g extends a.j {

            public final ImageView f80675a;

            public class a implements Runnable {

                public final ub.g f80677b;

                public class C1438a implements Runnable {
                    public C1438a() {
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.O2(null);
                        g.this.f80675a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80677b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                    ub.g gVar = this.f80677b;
                    litPBRRefractiveBinder.N2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1438a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80681b;

                    public a(final Variable val$variable) {
                        this.f80681b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.roughnessSpriteIndex = this.f80681b.int_value;
                        LitPBRRefractiveBinder.this.i3();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitPBRRefractiveBinder.this.roughnessSpriteIndex + "");
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
                    LitPBRRefractiveBinder.this.d3();
                }
            }

            public g(final ImageView val$presetThumbnail) {
                this.f80675a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80624e.a();
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
                LitPBRRefractiveBinder.this.roughnessFallback.d0(0, 0, v10);
                LitPBRRefractiveBinder.this.roughnessFallback.apply();
                LitPBRRefractiveBinder.this.Z();
            }

            @Override
            public void g() {
                K8.a.I(new c());
            }

            @Override
            public String get() {
                Texture texture = LitPBRRefractiveBinder.this.roughness;
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
                return LitPBRRefractiveBinder.this.roughnessFallback.o(0, 0);
            }

            @Override
            public Texture getInstance() {
                return LitPBRRefractiveBinder.this.roughness;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder.Y1("tilling", litPBRRefractiveBinder.uv.roughnessTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitPBRRefractiveBinder litPBRRefractiveBinder2 = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder2.Y1("offset", litPBRRefractiveBinder2.uv.roughnessOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitPBRRefractiveBinder.this.Z1(fieldName);
            }
        }

        public class h extends a.j {

            public final ImageView f80684a;

            public class a implements Runnable {

                public final ub.g f80686b;

                public class C1439a implements Runnable {
                    public C1439a() {
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.O2(null);
                        h.this.f80684a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80686b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                    ub.g gVar = this.f80686b;
                    litPBRRefractiveBinder.H2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1439a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80690b;

                    public a(final Variable val$variable) {
                        this.f80690b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.metallicSpriteIndex = this.f80690b.int_value;
                        LitPBRRefractiveBinder.this.b3();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitPBRRefractiveBinder.this.metallicSpriteIndex + "");
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
                    LitPBRRefractiveBinder.this.d3();
                }
            }

            public h(final ImageView val$presetThumbnail) {
                this.f80684a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80624e.a();
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
                LitPBRRefractiveBinder.this.metallicFallback.d0(0, 0, v10);
                LitPBRRefractiveBinder.this.metallicFallback.apply();
                LitPBRRefractiveBinder.this.Z();
            }

            @Override
            public void g() {
                K8.a.I(new c());
            }

            @Override
            public String get() {
                Texture texture = LitPBRRefractiveBinder.this.metallic;
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
                return LitPBRRefractiveBinder.this.metallicFallback.o(0, 0);
            }

            @Override
            public Texture getInstance() {
                return LitPBRRefractiveBinder.this.metallic;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder.Y1("tilling", litPBRRefractiveBinder.uv.metallicTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitPBRRefractiveBinder litPBRRefractiveBinder2 = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder2.Y1("offset", litPBRRefractiveBinder2.uv.metallicOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitPBRRefractiveBinder.this.Z1(fieldName);
            }
        }

        public class i extends a.j {

            public final ImageView f80693a;

            public class a implements Runnable {

                public final ub.g f80695b;

                public class C1440a implements Runnable {
                    public C1440a() {
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.O2(null);
                        i.this.f80693a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80695b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                    ub.g gVar = this.f80695b;
                    litPBRRefractiveBinder.x2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1440a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80699b;

                    public a(final Variable val$variable) {
                        this.f80699b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.aoSpriteIndex = this.f80699b.int_value;
                        LitPBRRefractiveBinder.this.V2();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitPBRRefractiveBinder.this.aoSpriteIndex + "");
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
                    LitPBRRefractiveBinder.this.d3();
                }
            }

            public i(final ImageView val$presetThumbnail) {
                this.f80693a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80624e.a();
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
                Texture texture = LitPBRRefractiveBinder.this.ao;
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
                return LitPBRRefractiveBinder.this.ao;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder.Y1("tilling", litPBRRefractiveBinder.uv.aoTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitPBRRefractiveBinder litPBRRefractiveBinder2 = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder2.Y1("offset", litPBRRefractiveBinder2.uv.aoOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitPBRRefractiveBinder.this.Z1(fieldName);
            }
        }

        public class j extends a.j {

            public final ImageView f80702a;

            public class a implements Runnable {

                public final ub.g f80704b;

                public class C1441a implements Runnable {
                    public C1441a() {
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.O2(null);
                        j.this.f80702a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80704b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                    ub.g gVar = this.f80704b;
                    litPBRRefractiveBinder.D2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1441a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80708b;

                    public a(final Variable val$variable) {
                        this.f80708b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitPBRRefractiveBinder.this.emissiveSpriteIndex = this.f80708b.int_value;
                        LitPBRRefractiveBinder.this.Y2();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitPBRRefractiveBinder.this.emissiveSpriteIndex + "");
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
                    LitPBRRefractiveBinder.this.d3();
                }
            }

            public j(final ImageView val$presetThumbnail) {
                this.f80702a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80624e.a();
            }

            @Override
            public void b(String file) {
                K8.a.I(new a(C16165b.u(file)));
            }

            @Override
            public void c(ColorINT color) {
                LitPBRRefractiveBinder.this.emissiveFallback.Y(0, 0, color);
                LitPBRRefractiveBinder.this.emissiveFallback.apply();
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
                Texture texture = LitPBRRefractiveBinder.this.emissive;
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
                return LitPBRRefractiveBinder.this.emissive;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitPBRRefractiveBinder litPBRRefractiveBinder = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder.Y1("tilling", litPBRRefractiveBinder.uv.emissiveTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitPBRRefractiveBinder litPBRRefractiveBinder2 = LitPBRRefractiveBinder.this;
                linkedList.add(litPBRRefractiveBinder2.Y1("offset", litPBRRefractiveBinder2.uv.emissiveOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public ColorINT j() {
                return LitPBRRefractiveBinder.this.emissiveFallback.i(0, 0);
            }

            @Override
            public O1 k(String fieldName) {
                return LitPBRRefractiveBinder.this.Z1(fieldName);
            }
        }

        public e(final Context val$context, final ShaderBinder.b val$listener) {
            this.f80623d = val$context;
            this.f80624e = val$listener;
        }

        public void c(ImageView presetThumbnail) {
            if (LitPBRRefractiveBinder.this.textureSourceOpen) {
                Vc.e.V(this.f80621b, R.drawable.tree_list_open_v4, this.f80623d);
                this.f80621b.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
            } else {
                Vc.e.V(this.f80621b, R.drawable.tree_list_closed_v3_inverse, this.f80623d);
                this.f80621b.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.MID_ICON_TINT)));
            }
            this.f80620a.removeAllViews();
            if (!LitPBRRefractiveBinder.this.textureSourceOpen) {
                this.f80620a.setVisibility(8);
                return;
            }
            this.f80620a.setVisibility(0);
            new G5.a("albedo", new C1435e(presetThumbnail)).B(this.f80620a);
            new G5.a(JavaCore.NORMAL, new f(presetThumbnail)).B(this.f80620a);
            new G5.a("roughness", new g(presetThumbnail)).B(this.f80620a);
            new G5.a("metallic", new h(presetThumbnail)).B(this.f80620a);
            new G5.a("ao", new i(presetThumbnail)).B(this.f80620a);
            new G5.a("emissive", new j(presetThumbnail)).B(this.f80620a);
            new G5.a("opacity", new a(presetThumbnail)).B(this.f80620a);
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            this.f80620a = (LinearLayout) view.findViewById(R.id.entries);
            ((TextView) view.findViewById(R.id.tittle)).setText("Textures");
            ImageView imageView = (ImageView) view.findViewById(R.id.open);
            this.f80621b = imageView;
            imageView.setOnClickListener(new b());
            this.f80622c = (ImageView) view.findViewById(R.id.imageView6);
            if (LitPBRRefractiveBinder.this.selectedPreset == null || LitPBRRefractiveBinder.this.selectedPreset.isEmpty()) {
                this.f80622c.setImageDrawable(null);
            } else {
                Vc.e.K(this.f80622c, H3.g.z1(LitPBRRefractiveBinder.this.selectedPreset), context, new Vc.c());
            }
            this.f80622c.setOnClickListener(new c(context));
            this.f80622c.setOnLongClickListener(new d(context));
            c(this.f80622c);
        }
    }

    public class f implements c.o0 {

        public class a implements D5.h {

            public class RunnableC1442a implements Runnable {

                public final Variable f80713b;

                public RunnableC1442a(final Variable val$variable) {
                    this.f80713b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.P2(this.f80713b.float_value);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.transmission + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1442a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80716b;

                public a(final Variable val$variable) {
                    this.f80716b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.F2(this.f80716b.float_value);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.ior + "");
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

                public final Variable f80719b;

                public a(final Variable val$variable) {
                    this.f80719b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.I2(this.f80719b.float_value);
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.microThickness + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public class d implements i.b {
            public d() {
            }

            @Override
            public void a(float x10, float y10, float z10) {
                LitPBRRefractiveBinder.this.T2();
            }
        }

        public f() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat01;
            entries.add(new C5.b(aVar, "Transmission", aVar2));
            entries.add(new C5.b(new b(), "IOR", aVar2));
            entries.add(new C5.b(new c(), "Micro thickness", aVar2));
            entries.add(F5.c.K("Absorption", new com.itsmagic.engine.Engines.Engine.Vector.i(LitPBRRefractiveBinder.this.absorption.instance, new d())));
            return entries;
        }
    }

    public class g implements c.o0 {

        public final String f80722a;

        public final String f80723b;

        public final ShaderBinder.b f80724c;

        public class a implements D5.h {

            public class RunnableC1443a implements Runnable {

                public final Variable f80727b;

                public RunnableC1443a(final Variable val$variable) {
                    this.f80727b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.E2(Nc.b.G(this.f80727b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.emissiveNits + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1443a(variable));
                }
            }
        }

        public g(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80722a = val$objectUID;
            this.f80723b = val$componentUID;
            this.f80724c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Nits", b.a.SLFloat);
            String str = this.f80722a;
            if (str != null && this.f80723b != null) {
                bVar.f(str, this.f80724c.b(), "emissiveNits", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            return entries;
        }
    }

    public class h implements c.o0 {

        public final String f80729a;

        public final String f80730b;

        public final ShaderBinder.b f80731c;

        public class a implements D5.h {

            public class RunnableC1444a implements Runnable {

                public final Variable f80734b;

                public RunnableC1444a(final Variable val$variable) {
                    this.f80734b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.G2(Nc.b.G(this.f80734b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1444a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80737b;

                public a(final Variable val$variable) {
                    this.f80737b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.R2(Math.max(0.0f, Math.min(1.0f, this.f80737b.float_value)));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public h(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80729a = val$objectUID;
            this.f80730b = val$componentUID;
            this.f80731c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Intensity", b.a.SLFloat);
            String str = this.f80729a;
            if (str != null && this.f80730b != null) {
                bVar.f(str, this.f80731c.b(), "localWindIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), "Verticality", b.a.SLFloat01);
            String str2 = this.f80729a;
            if (str2 != null && this.f80730b != null) {
                bVar2.f(str2, this.f80731c.b(), "windVerticality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar2);
            return entries;
        }
    }

    public class i implements c.o0 {

        public class a implements D5.h {

            public class C1445a implements Runnable {

                public final Variable f80741b;

                public C1445a(final Variable val$variable) {
                    this.f80741b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.K2(Math.max(0.0f, this.f80741b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.normalStrength + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1445a(variable));
                }
            }
        }

        public class b extends c.n0<cc.e> {

            public class a implements Runnable {

                public final cc.e f80744b;

                public a(final cc.e val$value) {
                    this.f80744b = val$value;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.Q2(this.f80744b);
                }
            }

            public b() {
            }

            @Override
            public void a() {
            }

            @Override
            public void set(cc.e value) {
                K8.a.I(new a(value));
            }
        }

        public class c implements D5.h {

            public class a implements Runnable {

                public final Variable f80747b;

                public a(final Variable val$variable) {
                    this.f80747b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.n0(Math.max(-32768, Math.min(32767, this.f80747b.int_value)));
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.K() + "");
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

                public final Variable f80750b;

                public a(final Variable val$variable) {
                    this.f80750b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.S2(this.f80750b.float_value);
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.worldUVSize + "");
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

                public final Variable f80753b;

                public a(final Variable val$variable) {
                    this.f80753b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.B2(this.f80753b.booolean_value.booleanValue());
                }
            }

            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.doubleSided + "");
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

                public final Variable f80756b;

                public a(final Variable val$variable) {
                    this.f80756b = val$variable;
                }

                @Override
                public void run() {
                    LitPBRRefractiveBinder.this.C2(this.f80756b.booolean_value.booleanValue());
                }
            }

            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitPBRRefractiveBinder.this.drawInFront + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public i() {
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
            entries.add(F5.c.i("UV Source", cc.e.class, LitPBRRefractiveBinder.this.uvSource, new b()));
            entries.add(new C5.b(new c(), "Material ID", b.a.SLInt));
            entries.add(new C5.b(new d(), "World uv size", aVar2));
            e eVar = new e();
            b.a aVar3 = b.a.SLBoolean;
            entries.add(new C5.b(eVar, "Double sided", aVar3));
            entries.add(new C5.b(new f(), "Draw in front", aVar3));
            return entries;
        }
    }

    public class j implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80758a;

        public class a implements Runnable {

            public final Variable f80760b;

            public a(final Variable val$variable) {
                this.f80760b = val$variable;
            }

            @Override
            public void run() {
                j jVar = j.this;
                jVar.f80758a.f79838x = this.f80760b.float_value;
                LitPBRRefractiveBinder.this.k3();
                LitPBRRefractiveBinder.this.Z();
            }
        }

        public j(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80758a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80758a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80758a.f79838x + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class k implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80762a;

        public class a implements Runnable {

            public final Variable f80764b;

            public a(final Variable val$variable) {
                this.f80764b = val$variable;
            }

            @Override
            public void run() {
                k kVar = k.this;
                kVar.f80762a.f79839y = this.f80764b.float_value;
                LitPBRRefractiveBinder.this.k3();
                LitPBRRefractiveBinder.this.Z();
            }
        }

        public k(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80762a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80762a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80762a.f79839y + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public LitPBRRefractiveBinder() {
        Bb.e eVar = new Bb.e() {
            @Override
            public final void b() {
                LitPBRRefractiveBinder.this.i3();
            }
        };
        this.roughnessListener = eVar;
        n nVar = new n(1, 1, true, false);
        this.roughnessFallback = nVar;
        nVar.Y(0, 0, new ColorINT(0.6f, 0.0f, 0.0f));
        nVar.e(eVar);
        this.metallicSpriteIndex = 0;
        Bb.e eVar2 = new Bb.e() {
            @Override
            public final void b() {
                LitPBRRefractiveBinder.this.b3();
            }
        };
        this.metallicListener = eVar2;
        n nVar2 = new n(1, 1, true, false);
        this.metallicFallback = nVar2;
        nVar2.Y(0, 0, new ColorINT(0.05f, 0.0f, 0.0f));
        nVar2.e(eVar2);
        this.aoSpriteIndex = 0;
        this.aoListener = new Bb.e() {
            @Override
            public final void b() {
                LitPBRRefractiveBinder.this.V2();
            }
        };
        this.emissiveSpriteIndex = 0;
        Bb.e eVar3 = new Bb.e() {
            @Override
            public final void b() {
                LitPBRRefractiveBinder.this.Y2();
            }
        };
        this.emissiveListener = eVar3;
        n nVar3 = new n(1, 1, true, false);
        this.emissiveFallback = nVar3;
        nVar3.Y(0, 0, new ColorINT(0, 0, 0));
        nVar3.e(eVar3);
        this.emissiveNits = 200.0f;
        this.emissiveNits_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitPBRRefractiveBinder.this.Z2();
            }
        };
        this.transmission = 1.0f;
        this.absorption = new Vector3(0);
        this.ior = 1.5f;
        this.microThickness = 0.0f;
        this.dispersion = 0.0f;
        this.uvSource = cc.e.Vertex;
        this.uvSource_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitPBRRefractiveBinder.this.P();
            }
        };
        this.worldUVSize = 1.0f;
        this.worldUVSize_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitPBRRefractiveBinder.this.l3();
            }
        };
        this.localWindIntensity = 0.0f;
        this.localWindIntensity_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitPBRRefractiveBinder.this.W1();
            }
        };
        this.windVerticality = 1.0f;
        this.windVerticality_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitPBRRefractiveBinder.this.X1();
            }
        };
        this.uv = new UVs();
        this.blendingMode = EnumC13053a.MASKED;
        this.blendingMode_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitPBRRefractiveBinder.this.P();
            }
        };
        this.doubleSided = false;
        this.doubleSided_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitPBRRefractiveBinder.this.P();
            }
        };
        this.drawInFront = false;
        this.drawInFront_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitPBRRefractiveBinder.this.P();
            }
        };
        this.refractionType = MaterialBuilder.k.THIN;
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
        this.selectedPreset = null;
        this.activePreset = null;
    }

    public void U2() {
        if (D() == null) {
            return;
        }
        super.T(this.albedo, true, "albedo");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.f2();
                }
            });
            return;
        }
        j(this.albedo, C16165b.f130161g, "albedo", D(), this.albedoSpriteIndex);
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == a2().ordinal()) {
            return;
        }
        P();
    }

    public void V2() {
        if (D() == null) {
            return;
        }
        super.T(this.ao, false, "ao");
        if (K8.a.r()) {
            j(this.ao, C16165b.f130161g, "aoMap", D(), this.aoSpriteIndex);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.g2();
                }
            });
        }
    }

    public void W1() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    public void W2() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.h2();
                }
            });
            return;
        }
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == a2().ordinal()) {
            return;
        }
        P();
    }

    public void X1() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.w(this.windVerticality);
        }
    }

    public C5.b Y1(String tittle, com.itsmagic.engine.Engines.Engine.Vector.Vector2 var, com.itsmagic.engine.Engines.Engine.Vector.Vector2 reset) {
        C5.b bVar = new C5.b(tittle, b.a.Vector, new C5.b[reset != null ? 3 : 2]);
        C5.b[] bVarArr = bVar.f2081p;
        j jVar = new j(var);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(jVar, "X", aVar);
        bVar.f2081p[1] = new C5.b(new k(var), "Y", aVar);
        if (reset != null) {
            bVar.f2081p[2] = new C5.b(new b(var, reset, bVar), "R", b.a.Button).n(true);
        }
        return bVar;
    }

    public void Y2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            A0(this.emissive, this.emissiveFallback, C16165b.f130163i, "emissive", D(), this.emissiveSpriteIndex);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.j2();
                }
            });
        }
    }

    public void Z2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("emissiveNits", this.emissiveNits);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.k2();
                }
            });
        }
    }

    private EnumC13053a a2() {
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

    public void b3() {
        if (D() == null) {
            return;
        }
        super.T(this.metallic, false, "metallic");
        if (K8.a.r()) {
            A0(this.metallic, this.metallicFallback, C16165b.f130163i, "metallicMap", D(), this.metallicSpriteIndex);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.m2();
                }
            });
        }
    }

    public void d3() {
    }

    public void e3() {
        if (D() == null) {
            return;
        }
        super.T(this.normal, false, "normal map");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.o2();
                }
            });
            return;
        }
        H0();
        C0(F0(), C16165b.f130166l, "normalMap", D(), this.normalSpriteIndex);
        f3();
    }

    public void f2() {
        j(this.albedo, C16165b.f130161g, "albedo", D(), this.albedoSpriteIndex);
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == a2().ordinal()) {
            return;
        }
        P();
    }

    private void f3() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("normalStrength", this.normalStrength);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.p2();
                }
            });
        }
    }

    public void g2() {
        j(this.ao, C16165b.f130161g, "aoMap", D(), this.aoSpriteIndex);
    }

    public void g3() {
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
                    LitPBRRefractiveBinder.this.q2();
                }
            });
        }
    }

    public void h2() {
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == a2().ordinal()) {
            return;
        }
        P();
    }

    public void h3() {
        String str = this.selectedPreset;
        if (str == null) {
            this.activePreset = null;
            return;
        }
        String str2 = this.activePreset;
        if (str2 == null || !str2.equals(str)) {
            this.activePreset = this.selectedPreset;
            D0();
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/PBR/" + this.selectedPreset + "/");
            if (!file.exists()) {
                file.mkdirs();
            }
            w2(H3.g.F1(this.selectedPreset, true, "BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg"));
            L2(H3.g.F1(this.selectedPreset, false, "Opacity.jpg", "Opacity.png", "opacity.jpg", "opacity.png", "Alpha.jpg", "Alpha.png", "alpha.jpg", "alpha.png"));
            J2(H3.g.F1(this.selectedPreset, false, "Normal.jpg", "NormalGL.jpg", "normal.jpg"));
            N2(H3.g.F1(this.selectedPreset, false, "Roughness.jpg", "bmp.jpg"));
            x2(H3.g.F1(this.selectedPreset, false, "AmbientOcclusion.jpg"));
            Texture F12 = H3.g.F1(this.selectedPreset, false, "Metalness.jpg", "Metalness.png", "metalness.jpg", "metalness.png");
            Texture F13 = H3.g.F1(this.selectedPreset, false, "Metallic.jpg", "Metallic.png", "metallic.jpg", "metallic.png");
            if (F12 != null) {
                H2(F12);
            } else {
                H2(F13);
            }
            D2(H3.g.F1(this.selectedPreset, false, "Emissive.jpg", "Emission.jpg"));
            super.D0();
            for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
                O1 o12 = this.noiseRefList.get(i10);
                o12.f28150a = false;
                o12.f28151b = null;
            }
            l3();
            d3();
        }
    }

    public void i3() {
        if (D() == null) {
            return;
        }
        super.T(this.roughness, false, "roughness");
        if (K8.a.r()) {
            A0(this.roughness, this.roughnessFallback, C16165b.f130163i, "roughnessMap", D(), this.roughnessSpriteIndex);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.r2();
                }
            });
        }
    }

    public void j2() {
        A0(this.emissive, this.emissiveFallback, C16165b.f130163i, "emissive", D(), this.emissiveSpriteIndex);
    }

    public void k3() {
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
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector211 = this.uv.emissiveTilling.instance;
        D20.y("emissiveTilling", vector211.f79838x, vector211.f79839y);
        FilamentMaterial D21 = D();
        com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector212 = this.uv.emissiveOffset.instance;
        D21.y("emissiveOffset", vector212.f79838x, vector212.f79839y);
    }

    public void l3() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("worldUVScale", this.worldUVSize);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.t2();
                }
            });
        }
    }

    public void m2() {
        A0(this.metallic, this.metallicFallback, C16165b.f130163i, "metallicMap", D(), this.metallicSpriteIndex);
    }

    public void o2() {
        H0();
        C0(F0(), C16165b.f130166l, "normalMap", D(), this.normalSpriteIndex);
        f3();
    }

    public void p2() {
        D().w("normalStrength", this.normalStrength);
    }

    public void q2() {
        j(this.opacity, C16165b.f130161g, "opacity", D(), this.opacitySpriteIndex);
    }

    public void r2() {
        A0(this.roughness, this.roughnessFallback, C16165b.f130163i, "roughnessMap", D(), this.roughnessSpriteIndex);
    }

    private Texture u2(Material material, NoiseData noiseData, String fileName) {
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

    public void A2(float dispersion) {
        boolean z10 = this.dispersion != dispersion;
        this.dispersion = dispersion;
        if (z10) {
            X2();
        }
    }

    public void B2(boolean doubleSided) {
        boolean z10 = this.doubleSided != doubleSided;
        this.doubleSided = doubleSided;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void C2(boolean drawInFront) {
        boolean z10 = this.drawInFront != drawInFront;
        this.drawInFront = drawInFront;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void D2(Texture emissive) {
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
            Y2();
        }
    }

    @Override
    public Texture E0() {
        return this.albedo;
    }

    public void E2(float emissiveNits) {
        boolean z10 = this.emissiveNits != emissiveNits;
        this.emissiveNits = emissiveNits;
        if (z10) {
            Z();
            Z2();
        }
    }

    public void F2(float ior) {
        boolean z10 = this.ior != ior;
        this.ior = ior;
        if (z10) {
            a3();
        }
    }

    @Override
    public Texture G0() {
        return this.normal;
    }

    public void G2(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = localWindIntensity;
        if (z10) {
            Z();
            W1();
        }
    }

    @Override
    public List<C5.b> H(Context context, ShaderBinder.b listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String c10 = listener != null ? listener.c() : null;
        String d10 = listener != null ? listener.d() : null;
        steppedArrayList.add(F5.c.i("blend", EnumC13053a.class, this.blendingMode, new a(listener)));
        C5.b bVar = new C5.b(new d(), Lang.l(Lang.T.COLOR), b.a.Color);
        if (d10 != null && c10 != null) {
            bVar.f(d10, listener.b(), "diffuse", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR);
        }
        steppedArrayList.add(bVar);
        steppedArrayList.add(new C5.b(new e(context, listener), R.layout.inspector_component_pbr, (Object) null));
        steppedArrayList.add(F5.c.e("Refraction", new f()));
        steppedArrayList.add(F5.c.e("Emissive", new g(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Wind effect", new h(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Others", new i()));
        return steppedArrayList;
    }

    public void H2(Texture metallic) {
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
            b3();
        }
    }

    public void I2(float microThickness) {
        boolean z10 = this.microThickness != microThickness;
        this.microThickness = microThickness;
        if (z10) {
            c3();
        }
    }

    public void J2(Texture normal) {
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
            e3();
        }
    }

    public void K2(float normalStrength) {
        boolean z10 = this.normalStrength != normalStrength;
        this.normalStrength = normalStrength;
        if (z10) {
            Z();
            f3();
        }
    }

    public void L2(Texture opacity) {
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
            g3();
        }
    }

    public void M2(MaterialBuilder.k refractionType) {
        boolean z10 = this.refractionType != refractionType;
        this.refractionType = refractionType;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void N2(Texture roughness) {
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
            i3();
        }
    }

    public void O2(String selectedPreset) {
        this.selectedPreset = selectedPreset;
        Z();
        K8.a.I(new c());
    }

    public void P2(float transmission) {
        boolean z10 = this.transmission != transmission;
        this.transmission = transmission;
        if (z10) {
            j3();
        }
    }

    @Override
    public boolean Q() {
        return this.drawInFront;
    }

    public void Q2(cc.e uvSource) {
        boolean z10 = this.uvSource != uvSource;
        this.uvSource = uvSource;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void R2(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            X1();
        }
    }

    public void S2(float worldUVSize) {
        boolean z10 = this.worldUVSize != worldUVSize;
        this.worldUVSize = worldUVSize;
        if (z10) {
            Z();
            l3();
        }
    }

    public final void T2() {
        Vector3 vector3;
        if (D() == null || (vector3 = this.absorption) == null || vector3.instance == null) {
            return;
        }
        if (K8.a.r()) {
            D().B("absorption", this.absorption.instance.getX(), this.absorption.instance.getY(), this.absorption.instance.getZ());
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.e2();
                }
            });
        }
    }

    @Override
    public void X() {
        w2(null);
        L2(null);
        J2(null);
        N2(null);
        H2(null);
        x2(null);
        D2(null);
    }

    public final void X2() {
        if (D() != null && this.refractionType == MaterialBuilder.k.SOLID) {
            if (K8.a.r()) {
                D().w("dispersion", this.dispersion);
            } else {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        LitPBRRefractiveBinder.this.i2();
                    }
                });
            }
        }
    }

    public O1 Z1(String fieldName) {
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            if (o12.f28153d.equals(fieldName)) {
                return o12;
            }
        }
        return null;
    }

    @Override
    public boolean a0() {
        return (F0() == null && this.roughness == null) ? false : true;
    }

    public final void a3() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("ior", this.ior * 3.0f);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.l2();
                }
            });
        }
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        ColorINT c10;
        ub.g u10;
        ub.g u11;
        String s10;
        String s11;
        ub.g u12;
        ub.g u13;
        ub.g u14;
        ub.g u15;
        ub.g u16;
        ColorINT c11;
        com.itsmagic.engine.Engines.Engine.Vector.Vector3 w10;
        SerializableShaderEntry d10 = SerializableShaderEntry.d("textureSourceOpen", "Boolean", dataList);
        if (d10 != null) {
            this.textureSourceOpen = SerializableShaderEntry.a(d10);
        }
        SerializableShaderEntry d11 = SerializableShaderEntry.d("doubleSided", "Boolean", dataList);
        if (d11 != null) {
            B2(SerializableShaderEntry.a(d11));
        }
        SerializableShaderEntry d12 = SerializableShaderEntry.d("alphaCutout", SerializableShaderEntry.f81148b, dataList);
        if (d12 != null) {
            this.alphaCutout = SerializableShaderEntry.g(d12);
        }
        SerializableShaderEntry d13 = SerializableShaderEntry.d("emissiveNits", SerializableShaderEntry.f81148b, dataList);
        if (d13 != null) {
            E2(SerializableShaderEntry.g(d13));
        }
        SerializableShaderEntry d14 = SerializableShaderEntry.d("drawInFront", "Boolean", dataList);
        if (d14 != null) {
            C2(SerializableShaderEntry.a(d14));
        }
        SerializableShaderEntry d15 = SerializableShaderEntry.d("transmission", SerializableShaderEntry.f81148b, dataList);
        if (d15 != null) {
            P2(SerializableShaderEntry.g(d15));
        }
        SerializableShaderEntry d16 = SerializableShaderEntry.d("absorption", SerializableShaderEntry.f81151e, dataList);
        if (d16 != null && (w10 = SerializableShaderEntry.w(d16)) != null) {
            v2(w10);
        }
        SerializableShaderEntry d17 = SerializableShaderEntry.d("ior", SerializableShaderEntry.f81148b, dataList);
        if (d17 != null) {
            F2(SerializableShaderEntry.g(d17));
        }
        SerializableShaderEntry d18 = SerializableShaderEntry.d("microThickness", SerializableShaderEntry.f81148b, dataList);
        if (d18 != null) {
            I2(SerializableShaderEntry.g(d18));
        }
        SerializableShaderEntry d19 = SerializableShaderEntry.d("dispersion", SerializableShaderEntry.f81148b, dataList);
        if (d19 != null) {
            A2(SerializableShaderEntry.g(d19));
        }
        SerializableShaderEntry d20 = SerializableShaderEntry.d("emissiveColor", SerializableShaderEntry.f81153g, dataList);
        if (d20 != null && (c11 = SerializableShaderEntry.c(d20)) != null) {
            this.emissiveFallback.Y(0, 0, c11);
            this.emissiveFallback.apply();
        }
        SerializableShaderEntry d21 = SerializableShaderEntry.d("roughnessFallback", SerializableShaderEntry.f81148b, dataList);
        if (d21 != null) {
            this.roughnessFallback.d0(0, 0, SerializableShaderEntry.g(d21));
            this.roughnessFallback.apply();
        }
        SerializableShaderEntry d22 = SerializableShaderEntry.d("metallicFallback", SerializableShaderEntry.f81148b, dataList);
        if (d22 != null) {
            this.metallicFallback.d0(0, 0, SerializableShaderEntry.g(d22));
            this.metallicFallback.apply();
        }
        SerializableShaderEntry d23 = SerializableShaderEntry.d("diffuse", SerializableShaderEntry.f81153g, dataList);
        if (d23 != null) {
            ColorINT c12 = SerializableShaderEntry.c(d23);
            if (c12 != null) {
                z2(c12.e0());
            }
        } else {
            SerializableShaderEntry d24 = SerializableShaderEntry.d("color", SerializableShaderEntry.f81153g, dataList);
            if (d24 != null && (c10 = SerializableShaderEntry.c(d24)) != null) {
                z2(c10.e0());
            }
        }
        SerializableShaderEntry d25 = SerializableShaderEntry.d("albedo", SerializableShaderEntry.f81152f, dataList);
        if (d25 != null) {
            ub.g u17 = SerializableShaderEntry.u(d25);
            if (u17 != null) {
                w2(u17.p0());
            }
        } else {
            SerializableShaderEntry d26 = SerializableShaderEntry.d(ResourceLocatorTool.TYPE_TEXTURE, SerializableShaderEntry.f81152f, dataList);
            if (d26 != null && (u10 = SerializableShaderEntry.u(d26)) != null) {
                w2(u10.p0());
            }
        }
        SerializableShaderEntry d27 = SerializableShaderEntry.d("opacity", SerializableShaderEntry.f81152f, dataList);
        if (d27 != null && (u16 = SerializableShaderEntry.u(d27)) != null) {
            L2(u16.p0());
        }
        SerializableShaderEntry d28 = SerializableShaderEntry.d("normalMap", SerializableShaderEntry.f81152f, dataList);
        if (d28 != null && (u15 = SerializableShaderEntry.u(d28)) != null) {
            J2(u15.p0());
        }
        SerializableShaderEntry d29 = SerializableShaderEntry.d("normalStrength", SerializableShaderEntry.f81148b, dataList);
        if (d29 != null) {
            this.normalStrength = SerializableShaderEntry.g(d29);
            f3();
        }
        SerializableShaderEntry d30 = SerializableShaderEntry.d("roughnessMap", SerializableShaderEntry.f81152f, dataList);
        if (d30 != null && (u14 = SerializableShaderEntry.u(d30)) != null) {
            N2(u14.p0());
        }
        SerializableShaderEntry d31 = SerializableShaderEntry.d("aoMap", SerializableShaderEntry.f81152f, dataList);
        if (d31 != null) {
            ub.g u18 = SerializableShaderEntry.u(d31);
            if (u18 != null) {
                x2(u18.p0());
            }
        } else {
            SerializableShaderEntry d32 = SerializableShaderEntry.d("ao", SerializableShaderEntry.f81152f, dataList);
            if (d32 != null && (u11 = SerializableShaderEntry.u(d32)) != null) {
                x2(u11.p0());
            }
        }
        SerializableShaderEntry d33 = SerializableShaderEntry.d("metallicMap", SerializableShaderEntry.f81152f, dataList);
        if (d33 != null && (u13 = SerializableShaderEntry.u(d33)) != null) {
            H2(u13.p0());
        }
        SerializableShaderEntry d34 = SerializableShaderEntry.d("emissive", SerializableShaderEntry.f81152f, dataList);
        if (d34 != null && (u12 = SerializableShaderEntry.u(d34)) != null) {
            D2(u12.p0());
        }
        SerializableShaderEntry d35 = SerializableShaderEntry.d("uvSource", SerializableShaderEntry.f81157k, dataList);
        if (d35 != null) {
            Q2(cc.e.valueOf(SerializableShaderEntry.s(d35)));
        }
        SerializableShaderEntry d36 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d36 != null) {
            y2(EnumC13053a.valueOf(SerializableShaderEntry.s(d36)));
        }
        SerializableShaderEntry d37 = SerializableShaderEntry.d("uvSize", SerializableShaderEntry.f81148b, dataList);
        if (d37 != null) {
            S2(SerializableShaderEntry.g(d37));
        }
        SerializableShaderEntry d38 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d38 != null) {
            G2(SerializableShaderEntry.g(d38));
        }
        SerializableShaderEntry d39 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d39 != null) {
            R2(SerializableShaderEntry.g(d39));
        }
        SerializableShaderEntry d40 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d40 != null) {
            n0(SerializableShaderEntry.h(d40));
        }
        SerializableShaderEntry d41 = SerializableShaderEntry.d("pbr-preset", SerializableShaderEntry.f81157k, dataList);
        if (d41 != null && (s11 = SerializableShaderEntry.s(d41)) != null) {
            String replace = s11.replace("pbr-preset:", "");
            if ("@null@".equals(replace)) {
                O2(null);
            } else {
                O2(replace);
            }
        }
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            SerializableShaderEntry d42 = SerializableShaderEntry.d(o12.f28153d + "ND", SerializableShaderEntry.f81157k, dataList);
            if (d42 != null && (s10 = SerializableShaderEntry.s(d42)) != null) {
                NoiseData fromJson = NoiseData.fromJson(s10);
                o12.f28151b = fromJson;
                if (fromJson != null) {
                    o12.f28150a = true;
                }
            }
        }
        d3();
        this.uv.c(dataList);
    }

    public float b2() {
        return this.localWindIntensity;
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
        SerializableShaderEntry e12 = SerializableShaderEntry.e("alphaCutout", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e12);
        SerializableShaderEntry.i(e12, this.alphaCutout);
        SerializableShaderEntry e13 = SerializableShaderEntry.e("drawInFront", "Boolean", dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.q(e13, this.drawInFront);
        SerializableShaderEntry e14 = SerializableShaderEntry.e("roughnessFallback", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.i(e14, this.roughnessFallback.o(0, 0));
        SerializableShaderEntry e15 = SerializableShaderEntry.e("metallicFallback", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.i(e15, this.metallicFallback.o(0, 0));
        SerializableShaderEntry e16 = SerializableShaderEntry.e("diffuse", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e16);
        SerializableShaderEntry.l(e16, this.diffuse.instance);
        SerializableShaderEntry e17 = SerializableShaderEntry.e("emissiveColor", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e17);
        SerializableShaderEntry.l(e17, this.emissiveFallback.i(0, 0));
        SerializableShaderEntry e18 = SerializableShaderEntry.e("albedo", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e18);
        SerializableShaderEntry.k(e18, this.albedo);
        SerializableShaderEntry e19 = SerializableShaderEntry.e("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e19);
        SerializableShaderEntry.j(e19, this.albedoSpriteIndex);
        SerializableShaderEntry e20 = SerializableShaderEntry.e("opacity", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e20);
        SerializableShaderEntry.k(e20, this.opacity);
        SerializableShaderEntry e21 = SerializableShaderEntry.e("opacitySpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e21);
        SerializableShaderEntry.j(e21, this.opacitySpriteIndex);
        SerializableShaderEntry e22 = SerializableShaderEntry.e("normalMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e22);
        SerializableShaderEntry.k(e22, this.normal);
        SerializableShaderEntry e23 = SerializableShaderEntry.e("normalSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e23);
        SerializableShaderEntry.j(e23, this.normalSpriteIndex);
        SerializableShaderEntry e24 = SerializableShaderEntry.e("normalStrength", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e24);
        SerializableShaderEntry.i(e24, this.normalStrength);
        SerializableShaderEntry e25 = SerializableShaderEntry.e("roughnessMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e25);
        SerializableShaderEntry.k(e25, this.roughness);
        SerializableShaderEntry e26 = SerializableShaderEntry.e("roughnessSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e26);
        SerializableShaderEntry.j(e26, this.roughnessSpriteIndex);
        SerializableShaderEntry e27 = SerializableShaderEntry.e("aoMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e27);
        SerializableShaderEntry.k(e27, this.ao);
        SerializableShaderEntry e28 = SerializableShaderEntry.e("aoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e28);
        SerializableShaderEntry.j(e28, this.aoSpriteIndex);
        SerializableShaderEntry e29 = SerializableShaderEntry.e("emissiveNits", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e29);
        SerializableShaderEntry.i(e29, this.emissiveNits);
        SerializableShaderEntry e30 = SerializableShaderEntry.e("transmission", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e30);
        SerializableShaderEntry.i(e30, this.transmission);
        SerializableShaderEntry e31 = SerializableShaderEntry.e("absorption", SerializableShaderEntry.f81151e, dataList);
        steppedArrayList.add(e31);
        SerializableShaderEntry.n(e31, this.absorption.instance);
        SerializableShaderEntry e32 = SerializableShaderEntry.e("ior", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e32);
        SerializableShaderEntry.i(e32, this.ior);
        SerializableShaderEntry e33 = SerializableShaderEntry.e("microThickness", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e33);
        SerializableShaderEntry.i(e33, this.microThickness);
        SerializableShaderEntry e34 = SerializableShaderEntry.e("dispersion", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e34);
        SerializableShaderEntry.i(e34, this.dispersion);
        SerializableShaderEntry e35 = SerializableShaderEntry.e("metallicMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e35);
        SerializableShaderEntry.k(e35, this.metallic);
        SerializableShaderEntry e36 = SerializableShaderEntry.e("metallicSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e36);
        SerializableShaderEntry.j(e36, this.metallicSpriteIndex);
        SerializableShaderEntry e37 = SerializableShaderEntry.e("emissive", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e37);
        SerializableShaderEntry.k(e37, this.emissive);
        SerializableShaderEntry e38 = SerializableShaderEntry.e("emissiveSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e38);
        SerializableShaderEntry.j(e38, this.emissiveSpriteIndex);
        SerializableShaderEntry e39 = SerializableShaderEntry.e("uvSource", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e39);
        SerializableShaderEntry.o(e39, this.uvSource.toString());
        SerializableShaderEntry e40 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e40);
        SerializableShaderEntry.o(e40, this.blendingMode.toString());
        SerializableShaderEntry e41 = SerializableShaderEntry.e("uvSize", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e41);
        SerializableShaderEntry.i(e41, this.worldUVSize);
        SerializableShaderEntry e42 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e42);
        SerializableShaderEntry.i(e42, this.localWindIntensity);
        SerializableShaderEntry e43 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e43);
        SerializableShaderEntry.i(e43, this.windVerticality);
        SerializableShaderEntry e44 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e44);
        SerializableShaderEntry.j(e44, K());
        SerializableShaderEntry e45 = SerializableShaderEntry.e("pbr-preset", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e45);
        String str = this.selectedPreset;
        if (str == null || str.isEmpty()) {
            SerializableShaderEntry.o(e45, "pbr-preset:@null@");
        } else {
            SerializableShaderEntry.o(e45, "pbr-preset:" + this.selectedPreset);
        }
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            SerializableShaderEntry e46 = SerializableShaderEntry.e(o12.f28153d + "ND", SerializableShaderEntry.f81157k, dataList);
            steppedArrayList.add(e46);
            NoiseData noiseData = o12.f28151b;
            if (noiseData == null || !o12.f28150a) {
                SerializableShaderEntry.o(e46, null);
            } else {
                SerializableShaderEntry.o(e46, noiseData.toJson());
            }
        }
        this.uv.d(dataList, steppedArrayList);
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    public float c2() {
        return this.windVerticality;
    }

    public final void c3() {
        if (D() != null && this.refractionType == MaterialBuilder.k.THIN) {
            if (K8.a.r()) {
                D().w("microThickness", this.microThickness * 1.5f);
            } else {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        LitPBRRefractiveBinder.this.n2();
                    }
                });
            }
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
        D0();
        H0();
        e3();
    }

    public final void e2() {
        D().B("absorption", this.absorption.instance.getX(), this.absorption.instance.getY(), this.absorption.instance.getZ());
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        W2();
        U2();
        g3();
        e3();
        i3();
        b3();
        V2();
        Y2();
        Z2();
        j3();
        T2();
        a3();
        c3();
        X2();
        l3();
        W1();
        X1();
        k3();
        h3();
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
            G2(value);
        } else if (entry.equalsIgnoreCase("windVerticality")) {
            R2(value);
        } else {
            super.i0(entry, value);
        }
    }

    public final void i2() {
        D().w("dispersion", this.dispersion);
    }

    public final void j3() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("transmission", this.transmission);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitPBRRefractiveBinder.this.s2();
                }
            });
        }
    }

    @Override
    public List<ec.i> k(C4171b renderPass) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        int i10 = 1;
        int i11 = 2;
        boolean[] zArr = {false, true};
        EnumC13053a[] values = EnumC13053a.values();
        int length = values.length;
        int i12 = 0;
        while (i12 < length) {
            EnumC13053a enumC13053a = values[i12];
            MaterialBuilder.k kVar = MaterialBuilder.k.THIN;
            int i13 = 0;
            while (i13 < i11) {
                boolean z10 = zArr[i13];
                int i14 = 0;
                while (i14 < i11) {
                    boolean z11 = zArr[i14];
                    int i15 = 0;
                    while (i15 < i11) {
                        boolean z12 = zArr[i15];
                        int i16 = i15;
                        int i17 = i14;
                        int i18 = i13;
                        MaterialBuilder.k kVar2 = kVar;
                        ec.i iVar = new ec.i(MaterialBuilder.a.valueOf(enumC13053a.name()), 0.5f, MaterialBuilder.c.BACK, z10, kVar, !z11, !z11);
                        iVar.j("useWorldUV", z12);
                        iVar.j("refractionTypeIsThin", kVar2 == MaterialBuilder.k.THIN);
                        iVar.j("refractionTypeIsSolid", kVar2 == MaterialBuilder.k.SOLID);
                        steppedArrayList.add(iVar);
                        i15 = i16 + 1;
                        kVar = kVar2;
                        i14 = i17;
                        i13 = i18;
                        i11 = 2;
                        i10 = 1;
                    }
                    i14++;
                    i11 = 2;
                    i10 = i10;
                }
                i13++;
                i11 = 2;
                i10 = i10;
            }
            i12 += i10;
            i11 = 2;
        }
        return steppedArrayList;
    }

    @Override
    public void k0(nc.h globalShaderEntity) {
        super.k0(globalShaderEntity);
        W1();
        X1();
    }

    public final void k2() {
        D().w("emissiveNits", this.emissiveNits);
    }

    @Override
    public ShaderBinder l() {
        LitPBRRefractiveBinder litPBRRefractiveBinder = new LitPBRRefractiveBinder();
        litPBRRefractiveBinder.albedo = this.albedo;
        litPBRRefractiveBinder.albedoSpriteIndex = this.albedoSpriteIndex;
        litPBRRefractiveBinder.opacity = this.opacity;
        litPBRRefractiveBinder.opacitySpriteIndex = this.opacitySpriteIndex;
        litPBRRefractiveBinder.diffuse = this.diffuse.copy();
        litPBRRefractiveBinder.normal = this.normal;
        litPBRRefractiveBinder.normalSpriteIndex = this.normalSpriteIndex;
        litPBRRefractiveBinder.normalStrength = this.normalStrength;
        litPBRRefractiveBinder.roughness = this.roughness;
        litPBRRefractiveBinder.roughnessSpriteIndex = this.roughnessSpriteIndex;
        litPBRRefractiveBinder.metallic = this.metallic;
        litPBRRefractiveBinder.metallicSpriteIndex = this.metallicSpriteIndex;
        litPBRRefractiveBinder.ao = this.ao;
        litPBRRefractiveBinder.aoSpriteIndex = this.aoSpriteIndex;
        litPBRRefractiveBinder.emissive = this.emissive;
        litPBRRefractiveBinder.emissiveSpriteIndex = this.emissiveSpriteIndex;
        litPBRRefractiveBinder.emissiveNits = this.emissiveNits;
        litPBRRefractiveBinder.transmission = this.transmission;
        litPBRRefractiveBinder.absorption = this.absorption.copy();
        litPBRRefractiveBinder.ior = this.ior;
        litPBRRefractiveBinder.microThickness = this.microThickness;
        litPBRRefractiveBinder.dispersion = this.dispersion;
        litPBRRefractiveBinder.alphaCutout = this.alphaCutout;
        litPBRRefractiveBinder.uv = this.uv.a();
        litPBRRefractiveBinder.worldUVSize = this.worldUVSize;
        litPBRRefractiveBinder.localWindIntensity = this.localWindIntensity;
        litPBRRefractiveBinder.windVerticality = this.windVerticality;
        litPBRRefractiveBinder.n0(K());
        litPBRRefractiveBinder.doubleSided = this.doubleSided;
        litPBRRefractiveBinder.blendingMode = this.blendingMode;
        litPBRRefractiveBinder.drawInFront = this.drawInFront;
        return litPBRRefractiveBinder;
    }

    public final void l2() {
        D().w("ior", this.ior * 3.0f);
    }

    public final void n2() {
        D().w("microThickness", this.microThickness * 1.5f);
    }

    @Override
    public p r(String entry) {
        if (entry == null) {
            return null;
        }
        return (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) ? C16165b.f130166l : (entry.equalsIgnoreCase("roughness") || entry.equalsIgnoreCase("roughnessMap")) ? this.roughnessFallback : entry.equalsIgnoreCase("opacity") ? C16165b.f130161g : (entry.equalsIgnoreCase("ao") || entry.equalsIgnoreCase("aoMap")) ? C16165b.f130161g : (entry.equalsIgnoreCase("height") || entry.equalsIgnoreCase("heightMap")) ? C16165b.f130163i : entry.equalsIgnoreCase("emissive") ? this.emissiveFallback : super.r(entry);
    }

    @Override
    public void r0(String entry, p texture) {
        if (entry.equalsIgnoreCase("albedo") || entry.equalsIgnoreCase("albedoMap") || entry.equalsIgnoreCase("baseColorMap") || entry.equalsIgnoreCase(ResourceLocatorTool.TYPE_TEXTURE)) {
            if (texture != null) {
                w2(texture.p0());
                return;
            } else {
                w2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("opacity") || entry.equalsIgnoreCase("opacityMap") || entry.equalsIgnoreCase("alphaMap")) {
            if (texture != null) {
                L2(texture.p0());
                return;
            } else {
                L2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) {
            if (texture != null) {
                J2(texture.p0());
                return;
            } else {
                J2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("roughness") || entry.equalsIgnoreCase("roughnessMap")) {
            if (texture != null) {
                N2(texture.p0());
                return;
            } else {
                N2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("metallic") || entry.equalsIgnoreCase("metallicMap")) {
            if (texture != null) {
                H2(texture.p0());
                return;
            } else {
                H2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("metalness") || entry.equalsIgnoreCase("metalnessMap")) {
            if (texture != null) {
                H2(texture.p0());
                return;
            } else {
                H2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("ao") || entry.equalsIgnoreCase("aoMap")) {
            if (texture != null) {
                x2(texture.p0());
                return;
            } else {
                x2(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("emissive") && !entry.equalsIgnoreCase("emissiveMap")) {
            super.r0(entry, texture);
        } else if (texture != null) {
            D2(texture.p0());
        } else {
            D2(null);
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
                w2(null);
                return;
            }
            ub.g u10 = C16165b.u(file);
            if (u10 != null) {
                w2(u10.p0());
                return;
            } else {
                w2(null);
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
                L2(null);
                return;
            }
            ub.g u11 = C16165b.u(file);
            if (u11 != null) {
                L2(u11.p0());
                return;
            } else {
                L2(null);
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
                J2(null);
                return;
            }
            ub.g u12 = C16165b.u(file);
            if (u12 != null) {
                J2(u12.p0());
                return;
            } else {
                J2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("roughness") || entry.equalsIgnoreCase("roughnessMap")) {
            Texture texture4 = this.roughness;
            if (texture4 != null) {
                p pVar4 = texture4.instance;
                if ((pVar4 instanceof ub.g) && ((ub.g) pVar4).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                N2(null);
                return;
            }
            ub.g u13 = C16165b.u(file);
            if (u13 != null) {
                N2(u13.p0());
                return;
            } else {
                N2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("metallic") || entry.equalsIgnoreCase("metallicMap")) {
            Texture texture5 = this.metallic;
            if (texture5 != null) {
                p pVar5 = texture5.instance;
                if ((pVar5 instanceof ub.g) && ((ub.g) pVar5).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                H2(null);
                return;
            }
            ub.g u14 = C16165b.u(file);
            if (u14 != null) {
                H2(u14.p0());
                return;
            } else {
                H2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("metalness") || entry.equalsIgnoreCase("metalnessMap")) {
            Texture texture6 = this.metallic;
            if (texture6 != null) {
                p pVar6 = texture6.instance;
                if ((pVar6 instanceof ub.g) && ((ub.g) pVar6).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                H2(null);
                return;
            }
            ub.g u15 = C16165b.u(file);
            if (u15 != null) {
                H2(u15.p0());
                return;
            } else {
                H2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("ao") || entry.equalsIgnoreCase("aoMap")) {
            Texture texture7 = this.ao;
            if (texture7 != null) {
                p pVar7 = texture7.instance;
                if ((pVar7 instanceof ub.g) && ((ub.g) pVar7).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                x2(null);
                return;
            }
            ub.g u16 = C16165b.u(file);
            if (u16 != null) {
                x2(u16.p0());
                return;
            } else {
                x2(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("emissive") && !entry.equalsIgnoreCase("emissiveMap")) {
            super.s0(entry, file);
            return;
        }
        Texture texture8 = this.emissive;
        if (texture8 != null) {
            p pVar8 = texture8.instance;
            if ((pVar8 instanceof ub.g) && ((ub.g) pVar8).getFile().equals(file)) {
                return;
            }
        }
        if (file == null || file.isEmpty()) {
            D2(null);
            return;
        }
        ub.g u17 = C16165b.u(file);
        if (u17 != null) {
            D2(u17.p0());
        } else {
            D2(null);
        }
    }

    public final void s2() {
        D().w("transmission", this.transmission);
    }

    public final void t2() {
        D().w("worldUVScale", this.worldUVSize);
    }

    @Override
    public float u(String entry) {
        return entry.equalsIgnoreCase("windeffect") ? this.localWindIntensity : entry.equalsIgnoreCase("windVerticality") ? this.windVerticality : super.u(entry);
    }

    public void v2(com.itsmagic.engine.Engines.Engine.Vector.Vector3 absorption) {
        if (absorption == null) {
            return;
        }
        this.absorption = new Vector3(absorption);
        T2();
    }

    @Override
    public void w0(String entry, com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2) {
        try {
            this.uv.e(entry, vector2);
            k3();
            Z();
        } catch (Exception unused) {
            super.w0(entry, vector2);
        }
    }

    public void w2(Texture albedo) {
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
            U2();
            if (!K8.a.r()) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        LitPBRRefractiveBinder.this.d2();
                    }
                });
                return;
            }
            D0();
            H0();
            e3();
        }
    }

    public void x2(Texture ao) {
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
            V2();
        }
    }

    @Override
    public ec.i y0(ec.i variance, C4171b renderPass) {
        ec.i iVar = variance;
        this.heightActiveInShader = false;
        EnumC13053a a22 = a2();
        boolean z10 = this.uvSource == cc.e.World;
        renderPass.m("useWorldUV", z10);
        MaterialBuilder.k kVar = this.refractionType;
        MaterialBuilder.k kVar2 = MaterialBuilder.k.THIN;
        renderPass.m("refractionTypeIsThin", kVar == kVar2);
        MaterialBuilder.k kVar3 = this.refractionType;
        MaterialBuilder.k kVar4 = MaterialBuilder.k.SOLID;
        renderPass.m("refractionTypeIsSolid", kVar3 == kVar4);
        boolean z11 = variance.a().ordinal() != a22.ordinal();
        if (variance.f() != this.refractionType) {
            z11 = true;
        }
        if (variance.i() != this.doubleSided) {
            z11 = true;
        }
        if (iVar.b("useWorldUV") != z10) {
            z11 = true;
        }
        if (variance.g() == this.drawInFront) {
            z11 = true;
        }
        if (z11) {
            MaterialBuilder.a valueOf = MaterialBuilder.a.valueOf(a22.name());
            MaterialBuilder.c cVar = MaterialBuilder.c.BACK;
            boolean z12 = this.doubleSided;
            MaterialBuilder.k kVar5 = this.refractionType;
            boolean z13 = this.drawInFront;
            iVar = new ec.i(valueOf, 0.5f, cVar, z12, kVar5, !z13, !z13);
            iVar.j("useWorldUV", z10);
            iVar.j("refractionTypeIsThin", this.refractionType == kVar2);
            iVar.j("refractionTypeIsSolid", this.refractionType == kVar4);
        }
        return iVar;
    }

    public void y2(EnumC13053a blendingMode) {
        boolean z10 = this.blendingMode != blendingMode;
        this.blendingMode = blendingMode;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void z2(Color diffuse) {
        boolean z10 = this.diffuse.instance.intColor != diffuse.instance.intColor;
        this.diffuse = diffuse;
        if (z10) {
            Z();
            W2();
        }
    }
}
