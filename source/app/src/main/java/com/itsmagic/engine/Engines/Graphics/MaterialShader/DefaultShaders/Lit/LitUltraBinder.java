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
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.DecalProjector;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.BaseGeneratedTexturesShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitUltraBinder;
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
public class LitUltraBinder extends BaseGeneratedTexturesShaderBinder {
    private String activePreset;
    public Texture albedo;
    public Texture ao;
    private final Bb.e aoListener;
    private int aoSpriteIndex;
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
    private float hasAoMap;
    private float hasHeightMap;
    private float hasNormalMap;
    private float hasRoughnessMap;
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
    public Texture metallic;
    private final n metallicFallback;
    private final Bb.e metallicListener;
    private int metallicSpriteIndex;
    private final List<O1> noiseRefList;
    public Texture normal;
    public Texture opacity;
    public Texture roughness;
    private final n roughnessFallback;
    private final Bb.e roughnessListener;
    private String selectedPreset;
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
            LitUltraBinder.this.Y2();
        }
    };
    private int albedoSpriteIndex = 0;
    private final Bb.e albedoListener = new Bb.e() {
        @Override
        public final void b() {
            LitUltraBinder.this.W2();
        }
    };
    private int opacitySpriteIndex = 0;
    private final Bb.e opacityListener = new Bb.e() {
        @Override
        public final void b() {
            LitUltraBinder.this.j3();
        }
    };
    private int normalSpriteIndex = 0;
    private final Bb.e normalListener = new Bb.e() {
        @Override
        public final void b() {
            LitUltraBinder.this.h3();
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

        public final ShaderBinder.b f80766a;

        public class C1446a implements Runnable {

            public final EnumC13053a f80768b;

            public C1446a(final EnumC13053a val$value) {
                this.f80768b = val$value;
            }

            @Override
            public void run() {
                LitUltraBinder.this.B2(this.f80768b);
            }
        }

        public a(final ShaderBinder.b val$listener) {
            this.f80766a = val$listener;
        }

        @Override
        public void a() {
            this.f80766a.a();
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new C1446a(value));
        }
    }

    public class b implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80770a;

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80771b;

        public final C5.b f80772c;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                b bVar = b.this;
                com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = bVar.f80770a;
                if (vector2 != null) {
                    vector2.x0(bVar.f80771b);
                    LitUltraBinder.this.m3();
                    LitUltraBinder.this.Z();
                }
                D5.f fVar = b.this.f80772c.f2081p[0].f2076k;
                if (fVar != null) {
                    fVar.a();
                }
                D5.f fVar2 = b.this.f80772c.f2081p[1].f2076k;
                if (fVar2 != null) {
                    fVar2.a();
                }
            }
        }

        public b(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var, final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$reset, final C5.b val$rectPosVector) {
            this.f80770a = val$var;
            this.f80771b = val$reset;
            this.f80772c = val$rectPosVector;
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
            LitUltraBinder.this.k3();
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f80777b;

            public a(final Variable val$variable) {
                this.f80777b = val$variable;
            }

            @Override
            public void run() {
                LitUltraBinder.this.C2(new ColorINT(this.f80777b.color_value.intColor).e0());
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", LitUltraBinder.this.diffuse.instance);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.e {

        public LinearLayout f80779a;

        public ImageView f80780b;

        public ImageView f80781c;

        public final Context f80782d;

        public final ShaderBinder.b f80783e;

        public class a extends a.j {

            public final ImageView f80785a;

            public class C1447a implements Runnable {

                public final ub.g f80787b;

                public class C1448a implements Runnable {
                    public C1448a() {
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(null);
                        a.this.f80785a.setImageDrawable(null);
                    }
                }

                public C1447a(final ub.g val$fileTexture) {
                    this.f80787b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitUltraBinder litUltraBinder = LitUltraBinder.this;
                    ub.g gVar = this.f80787b;
                    litUltraBinder.G2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1448a());
                }
            }

            public class b implements D5.h {

                public class RunnableC1449a implements Runnable {

                    public final Variable f80791b;

                    public RunnableC1449a(final Variable val$variable) {
                        this.f80791b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.emissiveSpriteIndex = this.f80791b.int_value;
                        LitUltraBinder.this.Z2();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitUltraBinder.this.emissiveSpriteIndex + "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        K8.a.I(new RunnableC1449a(variable));
                    }
                }
            }

            public class c implements Runnable {
                public c() {
                }

                @Override
                public void run() {
                    LitUltraBinder.this.g3();
                }
            }

            public a(final ImageView val$presetThumbnail) {
                this.f80785a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80783e.a();
            }

            @Override
            public void b(String file) {
                K8.a.I(new C1447a(C16165b.u(file)));
            }

            @Override
            public void c(ColorINT color) {
                LitUltraBinder.this.emissiveFallback.Y(0, 0, color);
                LitUltraBinder.this.emissiveFallback.apply();
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
                Texture texture = LitUltraBinder.this.emissive;
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
                return LitUltraBinder.this.emissive;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitUltraBinder litUltraBinder = LitUltraBinder.this;
                linkedList.add(litUltraBinder.d2("tilling", litUltraBinder.uv.emissiveTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitUltraBinder litUltraBinder2 = LitUltraBinder.this;
                linkedList.add(litUltraBinder2.d2("offset", litUltraBinder2.uv.emissiveOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public ColorINT j() {
                return LitUltraBinder.this.emissiveFallback.i(0, 0);
            }

            @Override
            public O1 k(String fieldName) {
                return LitUltraBinder.this.e2(fieldName);
            }
        }

        public class b extends a.j {

            public final ImageView f80794a;

            public class a implements Runnable {

                public final ub.g f80796b;

                public class RunnableC1450a implements Runnable {
                    public RunnableC1450a() {
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(null);
                        b.this.f80794a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80796b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitUltraBinder litUltraBinder = LitUltraBinder.this;
                    ub.g gVar = this.f80796b;
                    litUltraBinder.Q2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new RunnableC1450a());
                }
            }

            public class C1451b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80800b;

                    public a(final Variable val$variable) {
                        this.f80800b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.opacitySpriteIndex = this.f80800b.int_value;
                        LitUltraBinder.this.j3();
                    }
                }

                public C1451b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitUltraBinder.this.opacitySpriteIndex + "");
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
                    LitUltraBinder.this.g3();
                }
            }

            public b(final ImageView val$presetThumbnail) {
                this.f80794a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80783e.a();
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
                Texture texture = LitUltraBinder.this.opacity;
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
                return LitUltraBinder.this.opacity;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                linkedList.add(new C5.b(new C1451b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitUltraBinder.this.e2(fieldName);
            }
        }

        public class c extends AbstractViewOnClickListenerC12733a {
            public c() {
            }

            @Override
            public void click(View view) {
                LitUltraBinder.this.textureSourceOpen = !r2.textureSourceOpen;
                e eVar = e.this;
                eVar.c(eVar.f80781c);
            }
        }

        public class d extends AbstractViewOnClickListenerC12733a {

            public final Context f80804b;

            public class a implements H3.e {

                public class C1452a implements Runnable {

                    public final String f80807b;

                    public class RunnableC1453a implements Runnable {

                        public class C1454a implements Runnable {
                            public C1454a() {
                            }

                            @Override
                            public void run() {
                                e eVar = e.this;
                                eVar.c(eVar.f80781c);
                            }
                        }

                        public RunnableC1453a() {
                        }

                        @Override
                        public void run() {
                            e eVar = e.this;
                            Vc.e.K(eVar.f80781c, H3.g.z1(LitUltraBinder.this.selectedPreset), d.this.f80804b, new Vc.c());
                            N7.c.l(0.2f, new C1454a());
                        }
                    }

                    public C1452a(final String val$file) {
                        this.f80807b = val$file;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(this.f80807b);
                        N7.c.j0(new RunnableC1453a());
                    }
                }

                public a() {
                }

                @Override
                public String getSelected() {
                    return LitUltraBinder.this.selectedPreset;
                }

                @Override
                public void onSelected(String file) {
                    K8.a.I(new C1452a(file));
                }
            }

            public d(final Context val$context) {
                this.f80804b = val$context;
            }

            @Override
            public void click(View view) {
                H3.g.J1(view, C15147a.e.Left, new a());
            }
        }

        public class ViewOnLongClickListenerC1455e implements View.OnLongClickListener {

            public final Context f80811b;

            public class a extends SteppedArrayList<C12908b> {

                public final View f80813b;

                public class C1456a implements dd.d {

                    public class C1457a implements Runnable {
                        public C1457a() {
                        }

                        @Override
                        public void run() {
                            LitUltraBinder.this.S2(null);
                            LitUltraBinder.this.z2(null);
                            LitUltraBinder.this.Q2(null);
                            LitUltraBinder.this.O2(null);
                            LitUltraBinder.this.R2(null);
                            LitUltraBinder.this.N2(null);
                            LitUltraBinder.this.A2(null);
                            LitUltraBinder.this.I2(null);
                            LitUltraBinder.this.G2(null);
                        }
                    }

                    public C1456a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        e.this.f80781c.setImageDrawable(null);
                        K8.a.I(new C1457a());
                    }
                }

                public class b implements dd.d {

                    public class C1458a implements Runnable {
                        public C1458a() {
                        }

                        @Override
                        public void run() {
                            LitUltraBinder.this.S2(null);
                        }
                    }

                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        e.this.f80781c.setImageDrawable(null);
                        K8.a.I(new C1458a());
                    }
                }

                public class c implements dd.d {

                    public class C1459a implements H3.e {

                        public class C1460a implements Runnable {

                            public final String f80821b;

                            public class RunnableC1461a implements Runnable {

                                public class C1462a implements Runnable {
                                    public C1462a() {
                                    }

                                    @Override
                                    public void run() {
                                        e eVar = e.this;
                                        eVar.c(eVar.f80781c);
                                    }
                                }

                                public RunnableC1461a() {
                                }

                                @Override
                                public void run() {
                                    e eVar = e.this;
                                    Vc.e.K(eVar.f80781c, H3.g.z1(LitUltraBinder.this.selectedPreset), ViewOnLongClickListenerC1455e.this.f80811b, new Vc.c());
                                    N7.c.l(0.2f, new C1462a());
                                }
                            }

                            public C1460a(final String val$file) {
                                this.f80821b = val$file;
                            }

                            @Override
                            public void run() {
                                LitUltraBinder.this.S2(this.f80821b);
                                N7.c.j0(new RunnableC1461a());
                            }
                        }

                        public C1459a() {
                        }

                        @Override
                        public String getSelected() {
                            return LitUltraBinder.this.selectedPreset;
                        }

                        @Override
                        public void onSelected(String file) {
                            K8.a.I(new C1460a(file));
                        }
                    }

                    public c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        H3.g.J1(a.this.f80813b, C15147a.e.Left, new C1459a());
                    }
                }

                public a(final View val$view) {
                    this.f80813b = val$view;
                    add(new C12908b("Clear", new C1456a()));
                    add(new C12908b("Detach", new b()));
                    add(new C12908b("From presets", new c()));
                }
            }

            public ViewOnLongClickListenerC1455e(final Context val$context) {
                this.f80811b = val$context;
            }

            @Override
            public boolean onLongClick(View view) {
                N7.c.Y();
                Y6.a.F1(view, C15147a.e.Left, new a(view));
                return true;
            }
        }

        public class f extends a.j {

            public final ImageView f80825a;

            public class a implements Runnable {

                public final ub.g f80827b;

                public class RunnableC1463a implements Runnable {
                    public RunnableC1463a() {
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(null);
                        f.this.f80825a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80827b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitUltraBinder litUltraBinder = LitUltraBinder.this;
                    ub.g gVar = this.f80827b;
                    litUltraBinder.z2(gVar != null ? gVar.p0() : null);
                    LitUltraBinder.this.D0();
                    N7.c.j0(new RunnableC1463a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80831b;

                    public a(final Variable val$variable) {
                        this.f80831b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.albedoSpriteIndex = this.f80831b.int_value;
                        LitUltraBinder.this.W2();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitUltraBinder.this.albedoSpriteIndex + "");
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
                    LitUltraBinder.this.g3();
                }
            }

            public f(final ImageView val$presetThumbnail) {
                this.f80825a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80783e.a();
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
                Texture texture = LitUltraBinder.this.albedo;
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
                return LitUltraBinder.this.albedo;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitUltraBinder litUltraBinder = LitUltraBinder.this;
                linkedList.add(litUltraBinder.d2("tilling", litUltraBinder.uv.albedoTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitUltraBinder litUltraBinder2 = LitUltraBinder.this;
                linkedList.add(litUltraBinder2.d2("offset", litUltraBinder2.uv.albedoOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitUltraBinder.this.e2(fieldName);
            }
        }

        public class g extends a.j {

            public final ImageView f80834a;

            public class a implements Runnable {

                public final ub.g f80836b;

                public class C1464a implements Runnable {
                    public C1464a() {
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(null);
                        g.this.f80834a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80836b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitUltraBinder litUltraBinder = LitUltraBinder.this;
                    ub.g gVar = this.f80836b;
                    litUltraBinder.O2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1464a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80840b;

                    public a(final Variable val$variable) {
                        this.f80840b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.normalSpriteIndex = this.f80840b.int_value;
                        LitUltraBinder.this.h3();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitUltraBinder.this.normalSpriteIndex + "");
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
                    LitUltraBinder.this.g3();
                }
            }

            public g(final ImageView val$presetThumbnail) {
                this.f80834a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80783e.a();
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
                Texture texture = LitUltraBinder.this.normal;
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
                return LitUltraBinder.this.normal;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitUltraBinder litUltraBinder = LitUltraBinder.this;
                linkedList.add(litUltraBinder.d2("tilling", litUltraBinder.uv.normalTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitUltraBinder litUltraBinder2 = LitUltraBinder.this;
                linkedList.add(litUltraBinder2.d2("offset", litUltraBinder2.uv.normalOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitUltraBinder.this.e2(fieldName);
            }
        }

        public class h extends a.j {

            public final ImageView f80843a;

            public class a implements Runnable {

                public final ub.g f80845b;

                public class C1465a implements Runnable {
                    public C1465a() {
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(null);
                        h.this.f80843a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80845b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitUltraBinder litUltraBinder = LitUltraBinder.this;
                    ub.g gVar = this.f80845b;
                    litUltraBinder.R2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1465a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80849b;

                    public a(final Variable val$variable) {
                        this.f80849b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.roughnessSpriteIndex = this.f80849b.int_value;
                        LitUltraBinder.this.l3();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitUltraBinder.this.roughnessSpriteIndex + "");
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
                    LitUltraBinder.this.g3();
                }
            }

            public h(final ImageView val$presetThumbnail) {
                this.f80843a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80783e.a();
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
                LitUltraBinder.this.roughnessFallback.d0(0, 0, v10);
                LitUltraBinder.this.roughnessFallback.apply();
                LitUltraBinder.this.Z();
            }

            @Override
            public void g() {
                K8.a.I(new c());
            }

            @Override
            public String get() {
                Texture texture = LitUltraBinder.this.roughness;
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
                return LitUltraBinder.this.roughnessFallback.o(0, 0);
            }

            @Override
            public Texture getInstance() {
                return LitUltraBinder.this.roughness;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitUltraBinder litUltraBinder = LitUltraBinder.this;
                linkedList.add(litUltraBinder.d2("tilling", litUltraBinder.uv.roughnessTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitUltraBinder litUltraBinder2 = LitUltraBinder.this;
                linkedList.add(litUltraBinder2.d2("offset", litUltraBinder2.uv.roughnessOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitUltraBinder.this.e2(fieldName);
            }
        }

        public class i extends a.j {

            public final ImageView f80852a;

            public class a implements Runnable {

                public final ub.g f80854b;

                public class C1466a implements Runnable {
                    public C1466a() {
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(null);
                        i.this.f80852a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80854b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitUltraBinder litUltraBinder = LitUltraBinder.this;
                    ub.g gVar = this.f80854b;
                    litUltraBinder.N2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1466a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80858b;

                    public a(final Variable val$variable) {
                        this.f80858b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.metallicSpriteIndex = this.f80858b.int_value;
                        LitUltraBinder.this.f3();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitUltraBinder.this.metallicSpriteIndex + "");
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
                    LitUltraBinder.this.g3();
                }
            }

            public i(final ImageView val$presetThumbnail) {
                this.f80852a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80783e.a();
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
                LitUltraBinder.this.metallicFallback.d0(0, 0, v10);
                LitUltraBinder.this.metallicFallback.apply();
                LitUltraBinder.this.Z();
            }

            @Override
            public void g() {
                K8.a.I(new c());
            }

            @Override
            public String get() {
                Texture texture = LitUltraBinder.this.metallic;
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
                return LitUltraBinder.this.metallicFallback.o(0, 0);
            }

            @Override
            public Texture getInstance() {
                return LitUltraBinder.this.metallic;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitUltraBinder litUltraBinder = LitUltraBinder.this;
                linkedList.add(litUltraBinder.d2("tilling", litUltraBinder.uv.metallicTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitUltraBinder litUltraBinder2 = LitUltraBinder.this;
                linkedList.add(litUltraBinder2.d2("offset", litUltraBinder2.uv.metallicOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitUltraBinder.this.e2(fieldName);
            }
        }

        public class j extends a.j {

            public final ImageView f80861a;

            public class a implements Runnable {

                public final ub.g f80863b;

                public class C1467a implements Runnable {
                    public C1467a() {
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(null);
                        j.this.f80861a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80863b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitUltraBinder litUltraBinder = LitUltraBinder.this;
                    ub.g gVar = this.f80863b;
                    litUltraBinder.A2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1467a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80867b;

                    public a(final Variable val$variable) {
                        this.f80867b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.aoSpriteIndex = this.f80867b.int_value;
                        LitUltraBinder.this.X2();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitUltraBinder.this.aoSpriteIndex + "");
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
                    LitUltraBinder.this.g3();
                }
            }

            public j(final ImageView val$presetThumbnail) {
                this.f80861a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80783e.a();
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
                Texture texture = LitUltraBinder.this.ao;
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
                return LitUltraBinder.this.ao;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitUltraBinder litUltraBinder = LitUltraBinder.this;
                linkedList.add(litUltraBinder.d2("tilling", litUltraBinder.uv.aoTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitUltraBinder litUltraBinder2 = LitUltraBinder.this;
                linkedList.add(litUltraBinder2.d2("offset", litUltraBinder2.uv.aoOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitUltraBinder.this.e2(fieldName);
            }
        }

        public class k extends a.j {

            public final ImageView f80870a;

            public class a implements Runnable {

                public final ub.g f80872b;

                public class C1468a implements Runnable {
                    public C1468a() {
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.S2(null);
                        k.this.f80870a.setImageDrawable(null);
                    }
                }

                public a(final ub.g val$fileTexture) {
                    this.f80872b = val$fileTexture;
                }

                @Override
                public void run() {
                    LitUltraBinder litUltraBinder = LitUltraBinder.this;
                    ub.g gVar = this.f80872b;
                    litUltraBinder.I2(gVar != null ? gVar.p0() : null);
                    N7.c.j0(new C1468a());
                }
            }

            public class b implements D5.h {

                public class a implements Runnable {

                    public final Variable f80876b;

                    public a(final Variable val$variable) {
                        this.f80876b = val$variable;
                    }

                    @Override
                    public void run() {
                        LitUltraBinder.this.heightSpriteIndex = this.f80876b.int_value;
                        LitUltraBinder.this.b3();
                    }
                }

                public b() {
                }

                @Override
                public Variable get() {
                    return new Variable("", LitUltraBinder.this.heightSpriteIndex + "");
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
                    LitUltraBinder.this.g3();
                }
            }

            public k(final ImageView val$presetThumbnail) {
                this.f80870a = val$presetThumbnail;
            }

            @Override
            public void a() {
                e.this.f80783e.a();
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
                Texture texture = LitUltraBinder.this.height;
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
                return LitUltraBinder.this.height;
            }

            @Override
            public List<C5.b> i(LinearLayout parent, G5.a advancedTextureEntry) {
                LinkedList linkedList = new LinkedList();
                LitUltraBinder litUltraBinder = LitUltraBinder.this;
                linkedList.add(litUltraBinder.d2("tilling", litUltraBinder.uv.heightTilling.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(1.0f)));
                LitUltraBinder litUltraBinder2 = LitUltraBinder.this;
                linkedList.add(litUltraBinder2.d2("offset", litUltraBinder2.uv.heightOffset.instance, new com.itsmagic.engine.Engines.Engine.Vector.Vector2(0.0f)));
                linkedList.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
                return linkedList;
            }

            @Override
            public O1 k(String fieldName) {
                return LitUltraBinder.this.e2(fieldName);
            }
        }

        public e(final Context val$context, final ShaderBinder.b val$listener) {
            this.f80782d = val$context;
            this.f80783e = val$listener;
        }

        public void c(ImageView presetThumbnail) {
            if (LitUltraBinder.this.textureSourceOpen) {
                Vc.e.V(this.f80780b, R.drawable.tree_list_open_v4, this.f80782d);
                this.f80780b.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
            } else {
                Vc.e.V(this.f80780b, R.drawable.tree_list_closed_v3_inverse, this.f80782d);
                this.f80780b.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.MID_ICON_TINT)));
            }
            this.f80779a.removeAllViews();
            if (!LitUltraBinder.this.textureSourceOpen) {
                this.f80779a.setVisibility(8);
                return;
            }
            this.f80779a.setVisibility(0);
            new G5.a("albedo", new f(presetThumbnail)).B(this.f80779a);
            new G5.a(JavaCore.NORMAL, new g(presetThumbnail)).B(this.f80779a);
            new G5.a("roughness", new h(presetThumbnail)).B(this.f80779a);
            new G5.a("metallic", new i(presetThumbnail)).B(this.f80779a);
            new G5.a("ao", new j(presetThumbnail)).B(this.f80779a);
            new G5.a("height", new k(presetThumbnail)).B(this.f80779a);
            new G5.a("emissive", new a(presetThumbnail)).B(this.f80779a);
            new G5.a("opacity", new b(presetThumbnail)).B(this.f80779a);
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            this.f80779a = (LinearLayout) view.findViewById(R.id.entries);
            ((TextView) view.findViewById(R.id.tittle)).setText("Textures");
            ImageView imageView = (ImageView) view.findViewById(R.id.open);
            this.f80780b = imageView;
            imageView.setOnClickListener(new c());
            this.f80781c = (ImageView) view.findViewById(R.id.imageView6);
            if (LitUltraBinder.this.selectedPreset == null || LitUltraBinder.this.selectedPreset.isEmpty()) {
                this.f80781c.setImageDrawable(null);
            } else {
                Vc.e.K(this.f80781c, H3.g.z1(LitUltraBinder.this.selectedPreset), context, new Vc.c());
            }
            this.f80781c.setOnClickListener(new d(context));
            this.f80781c.setOnLongClickListener(new ViewOnLongClickListenerC1455e(context));
            c(this.f80781c);
        }
    }

    public class f implements c.o0 {

        public final String f80879a;

        public final String f80880b;

        public final ShaderBinder.b f80881c;

        public class a implements D5.h {

            public class RunnableC1469a implements Runnable {

                public final Variable f80884b;

                public RunnableC1469a(final Variable val$variable) {
                    this.f80884b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.J2(Nc.b.G(this.f80884b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.heightIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1469a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80887b;

                public a(final Variable val$variable) {
                    this.f80887b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.K2(Nc.b.G(this.f80887b.float_value));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.heightNormalStrength + "");
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

                public final Variable f80890b;

                public a(final Variable val$variable) {
                    this.f80890b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.L2(Nc.b.G(this.f80890b.float_value));
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.heightQuality + "");
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

                public final Variable f80893b;

                public a(final Variable val$variable) {
                    this.f80893b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.D2(this.f80893b.booolean_value.booleanValue());
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.discardEdges + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public f(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80879a = val$objectUID;
            this.f80880b = val$componentUID;
            this.f80881c = val$listener;
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
            String str = this.f80879a;
            if (str != null && this.f80880b != null) {
                bVar.f(str, this.f80881c.b(), DecalProjector.f77444q0, com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), "Normal Strength", aVar2);
            String str2 = this.f80879a;
            if (str2 != null && this.f80880b != null) {
                bVar2.f(str2, this.f80881c.b(), "heightNormalStrength", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar2);
            C5.b bVar3 = new C5.b(new c(), "Quality", aVar2);
            String str3 = this.f80879a;
            if (str3 != null && this.f80880b != null) {
                bVar3.f(str3, this.f80881c.b(), "heightQuality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar3);
            entries.add(new C5.b(new d(), "Discard edges", b.a.SLBoolean));
            return entries;
        }
    }

    public class g implements c.o0 {

        public final String f80895a;

        public final String f80896b;

        public final ShaderBinder.b f80897c;

        public class a implements D5.h {

            public class RunnableC1470a implements Runnable {

                public final Variable f80900b;

                public RunnableC1470a(final Variable val$variable) {
                    this.f80900b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.H2(Nc.b.G(this.f80900b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.emissiveNits + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1470a(variable));
                }
            }
        }

        public g(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80895a = val$objectUID;
            this.f80896b = val$componentUID;
            this.f80897c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Nits", b.a.SLFloat);
            String str = this.f80895a;
            if (str != null && this.f80896b != null) {
                bVar.f(str, this.f80897c.b(), "emissiveNits", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            return entries;
        }
    }

    public class h implements c.o0 {

        public final String f80902a;

        public final String f80903b;

        public final ShaderBinder.b f80904c;

        public class a implements D5.h {

            public class RunnableC1471a implements Runnable {

                public final Variable f80907b;

                public RunnableC1471a(final Variable val$variable) {
                    this.f80907b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.M2(Nc.b.G(this.f80907b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.localWindIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1471a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80910b;

                public a(final Variable val$variable) {
                    this.f80910b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.U2(Math.max(0.0f, Math.min(1.0f, this.f80910b.float_value)));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.windVerticality + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public h(final String val$objectUID, final String val$componentUID, final ShaderBinder.b val$listener) {
            this.f80902a = val$objectUID;
            this.f80903b = val$componentUID;
            this.f80904c = val$listener;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), "Intensity", b.a.SLFloat);
            String str = this.f80902a;
            if (str != null && this.f80903b != null) {
                bVar.f(str, this.f80904c.b(), "localWindIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), "Verticality", b.a.SLFloat01);
            String str2 = this.f80902a;
            if (str2 != null && this.f80903b != null) {
                bVar2.f(str2, this.f80904c.b(), "windVerticality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            entries.add(bVar2);
            return entries;
        }
    }

    public class i implements c.o0 {

        public class a extends c.n0<cc.e> {

            public class C1472a implements Runnable {

                public final cc.e f80914b;

                public C1472a(final cc.e val$value) {
                    this.f80914b = val$value;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.T2(this.f80914b);
                }
            }

            public a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void set(cc.e value) {
                K8.a.I(new C1472a(value));
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f80917b;

                public a(final Variable val$variable) {
                    this.f80917b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.P2(Math.max(0.0f, this.f80917b.float_value));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.normalStrength + "");
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

                public final Variable f80920b;

                public a(final Variable val$variable) {
                    this.f80920b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.V2(this.f80920b.float_value);
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.worldUVSize + "");
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

                public final Variable f80923b;

                public a(final Variable val$variable) {
                    this.f80923b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.n0(Math.max(-32768, Math.min(32767, this.f80923b.int_value)));
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.K() + "");
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

                public final Variable f80926b;

                public a(final Variable val$variable) {
                    this.f80926b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.E2(this.f80926b.booolean_value.booleanValue());
                }
            }

            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.doubleSided + "");
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

                public final Variable f80929b;

                public a(final Variable val$variable) {
                    this.f80929b = val$variable;
                }

                @Override
                public void run() {
                    LitUltraBinder.this.F2(this.f80929b.booolean_value.booleanValue());
                }
            }

            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", LitUltraBinder.this.drawInFront + "");
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
            entries.add(F5.c.i("UV Source", cc.e.class, LitUltraBinder.this.uvSource, new a()));
            b bVar = new b();
            b.a aVar = b.a.SLFloat;
            entries.add(new C5.b(bVar, "Normal Strength", aVar));
            entries.add(new C5.b(new c(), "World uv size", aVar));
            entries.add(new C5.b(new d(), "Material ID", b.a.SLInt));
            e eVar = new e();
            b.a aVar2 = b.a.SLBoolean;
            entries.add(new C5.b(eVar, "Double sided", aVar2));
            entries.add(new C5.b(new f(), "Draw in front", aVar2));
            return entries;
        }
    }

    public class j implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80931a;

        public class a implements Runnable {

            public final Variable f80933b;

            public a(final Variable val$variable) {
                this.f80933b = val$variable;
            }

            @Override
            public void run() {
                j jVar = j.this;
                jVar.f80931a.f79838x = this.f80933b.float_value;
                LitUltraBinder.this.m3();
                LitUltraBinder.this.Z();
            }
        }

        public j(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80931a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80931a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80931a.f79838x + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class k implements D5.h {

        public final com.itsmagic.engine.Engines.Engine.Vector.Vector2 f80935a;

        public class a implements Runnable {

            public final Variable f80937b;

            public a(final Variable val$variable) {
                this.f80937b = val$variable;
            }

            @Override
            public void run() {
                k kVar = k.this;
                kVar.f80935a.f79839y = this.f80937b.float_value;
                LitUltraBinder.this.m3();
                LitUltraBinder.this.Z();
            }
        }

        public k(final com.itsmagic.engine.Engines.Engine.Vector.Vector2 val$var) {
            this.f80935a = val$var;
        }

        @Override
        public Variable get() {
            if (this.f80935a == null) {
                return new Variable("", "0");
            }
            return new Variable("", this.f80935a.f79839y + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public LitUltraBinder() {
        Bb.e eVar = new Bb.e() {
            @Override
            public final void b() {
                LitUltraBinder.this.l3();
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
                LitUltraBinder.this.f3();
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
                LitUltraBinder.this.X2();
            }
        };
        this.hasNormalMap = 0.0f;
        this.hasHeightMap = 0.0f;
        this.hasRoughnessMap = 0.0f;
        this.hasAoMap = 0.0f;
        this.emissiveSpriteIndex = 0;
        Bb.e eVar3 = new Bb.e() {
            @Override
            public final void b() {
                LitUltraBinder.this.Z2();
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
                LitUltraBinder.this.a3();
            }
        };
        this.heightSpriteIndex = 0;
        this.heightListener = new Bb.e() {
            @Override
            public final void b() {
                LitUltraBinder.this.b3();
            }
        };
        this.heightIntensity = 0.1f;
        this.heightNormalStrength = 0.4f;
        this.heightQuality = 0.33333334f;
        this.discardEdges = true;
        this.discardEdges_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitUltraBinder.this.P();
            }
        };
        this.uvSource = cc.e.Vertex;
        this.uvSource_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitUltraBinder.this.P();
            }
        };
        this.worldUVSize = 1.0f;
        this.worldUVSize_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitUltraBinder.this.n3();
            }
        };
        this.localWindIntensity = 0.0f;
        this.localWindIntensity_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitUltraBinder.this.b2();
            }
        };
        this.windVerticality = 1.0f;
        this.windVerticality_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitUltraBinder.this.c2();
            }
        };
        this.uv = new UVs();
        this.blendingMode = EnumC13053a.MASKED;
        this.blendingMode_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitUltraBinder.this.P();
            }
        };
        this.doubleSided = false;
        this.doubleSided_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitUltraBinder.this.P();
            }
        };
        this.drawInFront = false;
        this.drawInFront_OFCBRL = new ec.d() {
            @Override
            public final void a() {
                LitUltraBinder.this.P();
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
        this.selectedPreset = null;
        this.activePreset = null;
    }

    public void W2() {
        if (D() == null) {
            return;
        }
        super.T(this.albedo, true, "albedo");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.j2();
                }
            });
            return;
        }
        j(this.albedo, C16165b.f130161g, "albedo", D(), this.albedoSpriteIndex);
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == f2().ordinal()) {
            return;
        }
        P();
    }

    public void X2() {
        if (D() == null) {
            return;
        }
        super.T(this.ao, false, "ao");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.k2();
                }
            });
            return;
        }
        this.hasAoMap = this.ao != null ? 1.0f : 0.0f;
        D().w("hasAoMap", this.hasAoMap);
        j(this.ao, C16165b.f130161g, "aoMap", D(), this.aoSpriteIndex);
    }

    public void Y2() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.l2();
                }
            });
            return;
        }
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == f2().ordinal()) {
            return;
        }
        P();
    }

    public void Z2() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            A0(this.emissive, this.emissiveFallback, C16165b.f130163i, "emissive", D(), this.emissiveSpriteIndex);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.m2();
                }
            });
        }
    }

    public void a3() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("emissiveNits", this.emissiveNits);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.n2();
                }
            });
        }
    }

    public void b2() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.v(this.localWindIntensity);
        }
    }

    public void b3() {
        if (D() == null) {
            return;
        }
        super.T(this.height, false, "height");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.o2();
                }
            });
            return;
        }
        this.hasHeightMap = this.height != null ? 1.0f : 0.0f;
        D().w("hasHeightMap", this.hasHeightMap);
        j(this.height, C16165b.f130163i, "heightMap", D(), this.heightSpriteIndex);
        d3();
    }

    public void c2() {
        nc.h F10 = super.F();
        if (F10 != null) {
            F10.w(this.windVerticality);
        }
    }

    private void c3() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.p2();
                }
            });
        } else if (this.heightActiveInShader) {
            D().w(DecalProjector.f77444q0, this.heightIntensity * 0.2f);
        }
    }

    public C5.b d2(String tittle, com.itsmagic.engine.Engines.Engine.Vector.Vector2 var, com.itsmagic.engine.Engines.Engine.Vector.Vector2 reset) {
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

    private void d3() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.q2();
                }
            });
        } else if (this.heightActiveInShader) {
            D().w("heightNormalStrength", this.heightNormalStrength);
        }
    }

    private void e3() {
        if (D() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.r2();
                }
            });
        } else if (this.heightActiveInShader) {
            D().w(DecalProjector.f77446v0, Nc.b.M(2.0f, Nc.b.w0(this.heightQuality * 24.0f)));
            D().w(DecalProjector.f77430D0, Nc.b.M(4.0f, Nc.b.w0(this.heightQuality * 96.0f)));
        }
    }

    private EnumC13053a f2() {
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

    public void f3() {
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
                    LitUltraBinder.this.s2();
                }
            });
        }
    }

    public void g3() {
    }

    public void h3() {
        if (D() == null) {
            return;
        }
        super.T(this.normal, false, "normal map");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.t2();
                }
            });
            return;
        }
        this.hasNormalMap = this.normal != null ? 1.0f : 0.0f;
        D().w("hasNormalMap", this.hasNormalMap);
        H0();
        C0(F0(), C16165b.f130166l, "normalMap", D(), this.normalSpriteIndex);
        i3();
    }

    public void i2() {
        D0();
        H0();
        h3();
    }

    private void i3() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("normalStrength", this.normalStrength);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.u2();
                }
            });
        }
    }

    public void j2() {
        j(this.albedo, C16165b.f130161g, "albedo", D(), this.albedoSpriteIndex);
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == f2().ordinal()) {
            return;
        }
        P();
    }

    public void j3() {
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
                    LitUltraBinder.this.v2();
                }
            });
        }
    }

    public void k2() {
        this.hasAoMap = this.ao != null ? 1.0f : 0.0f;
        D().w("hasAoMap", this.hasAoMap);
        j(this.ao, C16165b.f130161g, "aoMap", D(), this.aoSpriteIndex);
    }

    public void k3() {
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
            z2(H3.g.F1(this.selectedPreset, true, "BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg"));
            Q2(H3.g.F1(this.selectedPreset, false, "Opacity.jpg", "Opacity.png", "opacity.jpg", "opacity.png", "Alpha.jpg", "Alpha.png", "alpha.jpg", "alpha.png"));
            O2(H3.g.F1(this.selectedPreset, false, "Normal.jpg", "NormalGL.jpg", "normal.jpg"));
            R2(H3.g.F1(this.selectedPreset, false, "Roughness.jpg", "bmp.jpg"));
            A2(H3.g.F1(this.selectedPreset, false, "AmbientOcclusion.jpg"));
            Texture F12 = H3.g.F1(this.selectedPreset, false, "Metalness.jpg", "Metalness.png", "metalness.jpg", "metalness.png");
            Texture F13 = H3.g.F1(this.selectedPreset, false, "Metallic.jpg", "Metallic.png", "metallic.jpg", "metallic.png");
            if (F12 != null) {
                N2(F12);
            } else {
                N2(F13);
            }
            G2(H3.g.F1(this.selectedPreset, false, "Emissive.jpg", "Emission.jpg"));
            I2(H3.g.F1(this.selectedPreset, false, "height.jpg", "displacement.jpg"));
            super.D0();
            for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
                O1 o12 = this.noiseRefList.get(i10);
                o12.f28150a = false;
                o12.f28151b = null;
            }
            c3();
            e3();
            n3();
            g3();
        }
    }

    public void l2() {
        D().E("baseColor", this.diffuse.instance.w(), this.diffuse.instance.u(), this.diffuse.instance.s(), this.diffuse.instance.r());
        ec.i M10 = M();
        if (M10 == null || M10.a().ordinal() == f2().ordinal()) {
            return;
        }
        P();
    }

    public void l3() {
        if (D() == null) {
            return;
        }
        super.T(this.roughness, false, "roughness");
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.w2();
                }
            });
            return;
        }
        this.hasRoughnessMap = this.roughness != null ? 1.0f : 0.0f;
        D().w("hasRoughnessMap", this.hasRoughnessMap);
        A0(this.roughness, this.roughnessFallback, C16165b.f130163i, "roughnessMap", D(), this.roughnessSpriteIndex);
    }

    public void m2() {
        A0(this.emissive, this.emissiveFallback, C16165b.f130163i, "emissive", D(), this.emissiveSpriteIndex);
    }

    public void m3() {
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

    public void n2() {
        D().w("emissiveNits", this.emissiveNits);
    }

    public void n3() {
        if (D() == null) {
            return;
        }
        if (K8.a.r()) {
            D().w("worldUVScale", this.worldUVSize);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    LitUltraBinder.this.x2();
                }
            });
        }
    }

    public void o2() {
        this.hasHeightMap = this.height != null ? 1.0f : 0.0f;
        D().w("hasHeightMap", this.hasHeightMap);
        j(this.height, C16165b.f130163i, "heightMap", D(), this.heightSpriteIndex);
        d3();
    }

    public void p2() {
        if (this.heightActiveInShader) {
            D().w(DecalProjector.f77444q0, this.heightIntensity);
        }
    }

    public void q2() {
        if (this.heightActiveInShader) {
            D().w("heightNormalStrength", this.heightNormalStrength);
        }
    }

    public void r2() {
        if (this.heightActiveInShader) {
            D().w(DecalProjector.f77446v0, Nc.b.M(2.0f, Nc.b.w0(this.heightQuality * 24.0f)));
            D().w(DecalProjector.f77430D0, Nc.b.M(4.0f, Nc.b.w0(this.heightQuality * 96.0f)));
        }
    }

    public void s2() {
        A0(this.metallic, this.metallicFallback, C16165b.f130163i, "metallicMap", D(), this.metallicSpriteIndex);
    }

    public void t2() {
        this.hasNormalMap = this.normal != null ? 1.0f : 0.0f;
        D().w("hasNormalMap", this.hasNormalMap);
        H0();
        C0(F0(), C16165b.f130166l, "normalMap", D(), this.normalSpriteIndex);
        i3();
    }

    public void u2() {
        D().w("normalStrength", this.normalStrength);
    }

    public void v2() {
        j(this.opacity, C16165b.f130161g, "opacity", D(), this.opacitySpriteIndex);
    }

    public void w2() {
        this.hasRoughnessMap = this.roughness != null ? 1.0f : 0.0f;
        D().w("hasRoughnessMap", this.hasRoughnessMap);
        A0(this.roughness, this.roughnessFallback, C16165b.f130163i, "roughnessMap", D(), this.roughnessSpriteIndex);
    }

    public void x2() {
        D().w("worldUVScale", this.worldUVSize);
    }

    private Texture y2(Material material, NoiseData noiseData, String fileName) {
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

    public void A2(Texture ao) {
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
            X2();
        }
    }

    public void B2(EnumC13053a blendingMode) {
        boolean z10 = this.blendingMode != blendingMode;
        this.blendingMode = blendingMode;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void C2(Color diffuse) {
        boolean z10 = this.diffuse.instance.intColor != diffuse.instance.intColor;
        this.diffuse = diffuse;
        if (z10) {
            Z();
            Y2();
        }
    }

    public void D2(boolean discardEdges) {
        boolean z10 = this.discardEdges != discardEdges;
        this.discardEdges = discardEdges;
        if (z10) {
            Z();
            super.P();
        }
    }

    @Override
    public Texture E0() {
        return this.albedo;
    }

    public void E2(boolean doubleSided) {
        boolean z10 = this.doubleSided != doubleSided;
        this.doubleSided = doubleSided;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void F2(boolean drawInFront) {
        boolean z10 = this.drawInFront != drawInFront;
        this.drawInFront = drawInFront;
        if (z10) {
            Z();
            super.P();
        }
    }

    @Override
    public Texture G0() {
        return this.normal;
    }

    public void G2(Texture emissive) {
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
            Z2();
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
        steppedArrayList.add(F5.c.e("Height", new f(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Emissive", new g(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Wind effect", new h(d10, c10, listener)));
        steppedArrayList.add(F5.c.e("Others", new i()));
        return steppedArrayList;
    }

    public void H2(float emissiveNits) {
        boolean z10 = this.emissiveNits != emissiveNits;
        this.emissiveNits = emissiveNits;
        if (z10) {
            a3();
        }
    }

    public void I2(Texture height) {
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
            super.P();
            b3();
        }
    }

    public void J2(float heightIntensity) {
        float f10 = this.heightIntensity;
        boolean z10 = f10 != heightIntensity;
        boolean z11 = ((f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1)) > 0) != ((heightIntensity > 0.0f ? 1 : (heightIntensity == 0.0f ? 0 : -1)) > 0);
        this.heightIntensity = heightIntensity;
        if (z10) {
            if (z11) {
                P();
            }
            c3();
        }
    }

    public void K2(float heightNormalStrength) {
        boolean z10 = this.heightNormalStrength != heightNormalStrength;
        this.heightNormalStrength = heightNormalStrength;
        if (z10) {
            d3();
        }
    }

    public void L2(float heightQuality) {
        boolean z10 = this.heightQuality != this.heightIntensity;
        this.heightQuality = heightQuality;
        if (z10) {
            e3();
        }
    }

    public void M2(float localWindIntensity) {
        boolean z10 = this.localWindIntensity != localWindIntensity;
        this.localWindIntensity = localWindIntensity;
        if (z10) {
            Z();
            b2();
        }
    }

    public void N2(Texture metallic) {
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
            f3();
        }
    }

    public void O2(Texture normal) {
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
            h3();
        }
    }

    public void P2(float normalStrength) {
        boolean z10 = this.normalStrength != normalStrength;
        this.normalStrength = normalStrength;
        if (z10) {
            Z();
            i3();
        }
    }

    @Override
    public boolean Q() {
        return this.drawInFront;
    }

    public void Q2(Texture opacity) {
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
            j3();
        }
    }

    public void R2(Texture roughness) {
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
            l3();
        }
    }

    public void S2(String selectedPreset) {
        this.selectedPreset = selectedPreset;
        Z();
        K8.a.I(new c());
    }

    public void T2(cc.e uvSource) {
        boolean z10 = this.uvSource != uvSource;
        this.uvSource = uvSource;
        if (z10) {
            Z();
            super.P();
        }
    }

    public void U2(float windVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, windVerticality));
        boolean z10 = this.windVerticality != max;
        this.windVerticality = max;
        if (z10) {
            Z();
            c2();
        }
    }

    public void V2(float worldUVSize) {
        boolean z10 = this.worldUVSize != worldUVSize;
        this.worldUVSize = worldUVSize;
        if (z10) {
            Z();
            n3();
        }
    }

    @Override
    public void X() {
        z2(null);
        Q2(null);
        O2(null);
        R2(null);
        N2(null);
        A2(null);
        I2(null);
        G2(null);
    }

    @Override
    public boolean a0() {
        return true;
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
        ub.g u17;
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
            E2(SerializableShaderEntry.a(d12));
        }
        SerializableShaderEntry d13 = SerializableShaderEntry.d("drawInFront", "Boolean", dataList);
        if (d13 != null) {
            F2(SerializableShaderEntry.a(d13));
        }
        SerializableShaderEntry d14 = SerializableShaderEntry.d("alphaCutout", SerializableShaderEntry.f81148b, dataList);
        if (d14 != null) {
            this.alphaCutout = SerializableShaderEntry.g(d14);
        }
        SerializableShaderEntry d15 = SerializableShaderEntry.d("emissiveNits", SerializableShaderEntry.f81148b, dataList);
        if (d15 != null) {
            H2(SerializableShaderEntry.g(d15));
        }
        SerializableShaderEntry d16 = SerializableShaderEntry.d("emissiveColor", SerializableShaderEntry.f81153g, dataList);
        if (d16 != null && (c11 = SerializableShaderEntry.c(d16)) != null) {
            this.emissiveFallback.Y(0, 0, c11);
            this.emissiveFallback.apply();
        }
        SerializableShaderEntry d17 = SerializableShaderEntry.d("roughnessFallback", SerializableShaderEntry.f81148b, dataList);
        if (d17 != null) {
            this.roughnessFallback.d0(0, 0, SerializableShaderEntry.g(d17));
            this.roughnessFallback.apply();
        }
        SerializableShaderEntry d18 = SerializableShaderEntry.d("metallicFallback", SerializableShaderEntry.f81148b, dataList);
        if (d18 != null) {
            this.metallicFallback.d0(0, 0, SerializableShaderEntry.g(d18));
            this.metallicFallback.apply();
        }
        SerializableShaderEntry d19 = SerializableShaderEntry.d("diffuse", SerializableShaderEntry.f81153g, dataList);
        if (d19 != null) {
            ColorINT c12 = SerializableShaderEntry.c(d19);
            if (c12 != null) {
                C2(c12.e0());
            }
        } else {
            SerializableShaderEntry d20 = SerializableShaderEntry.d("color", SerializableShaderEntry.f81153g, dataList);
            if (d20 != null && (c10 = SerializableShaderEntry.c(d20)) != null) {
                C2(c10.e0());
            }
        }
        SerializableShaderEntry d21 = SerializableShaderEntry.d("albedo", SerializableShaderEntry.f81152f, dataList);
        if (d21 != null) {
            ub.g u18 = SerializableShaderEntry.u(d21);
            if (u18 != null) {
                z2(u18.p0());
            }
        } else {
            SerializableShaderEntry d22 = SerializableShaderEntry.d(ResourceLocatorTool.TYPE_TEXTURE, SerializableShaderEntry.f81152f, dataList);
            if (d22 != null && (u10 = SerializableShaderEntry.u(d22)) != null) {
                z2(u10.p0());
            }
        }
        SerializableShaderEntry d23 = SerializableShaderEntry.d("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d23 != null) {
            this.albedoSpriteIndex = SerializableShaderEntry.h(d23);
        }
        SerializableShaderEntry d24 = SerializableShaderEntry.d("opacity", SerializableShaderEntry.f81152f, dataList);
        if (d24 != null && (u17 = SerializableShaderEntry.u(d24)) != null) {
            Q2(u17.p0());
        }
        SerializableShaderEntry d25 = SerializableShaderEntry.d("opacitySpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d25 != null) {
            this.opacitySpriteIndex = SerializableShaderEntry.h(d25);
        }
        SerializableShaderEntry d26 = SerializableShaderEntry.d("normalMap", SerializableShaderEntry.f81152f, dataList);
        if (d26 != null && (u16 = SerializableShaderEntry.u(d26)) != null) {
            O2(u16.p0());
        }
        SerializableShaderEntry d27 = SerializableShaderEntry.d("normalSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d27 != null) {
            this.normalSpriteIndex = SerializableShaderEntry.h(d27);
        }
        SerializableShaderEntry d28 = SerializableShaderEntry.d("normalStrength", SerializableShaderEntry.f81148b, dataList);
        if (d28 != null) {
            this.normalStrength = SerializableShaderEntry.g(d28);
            i3();
        }
        SerializableShaderEntry d29 = SerializableShaderEntry.d("roughnessMap", SerializableShaderEntry.f81152f, dataList);
        if (d29 != null && (u15 = SerializableShaderEntry.u(d29)) != null) {
            R2(u15.p0());
        }
        SerializableShaderEntry d30 = SerializableShaderEntry.d("roughnessSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d30 != null) {
            this.roughnessSpriteIndex = SerializableShaderEntry.h(d30);
        }
        SerializableShaderEntry d31 = SerializableShaderEntry.d("aoMap", SerializableShaderEntry.f81152f, dataList);
        if (d31 != null) {
            ub.g u19 = SerializableShaderEntry.u(d31);
            if (u19 != null) {
                A2(u19.p0());
            }
        } else {
            SerializableShaderEntry d32 = SerializableShaderEntry.d("ao", SerializableShaderEntry.f81152f, dataList);
            if (d32 != null && (u11 = SerializableShaderEntry.u(d32)) != null) {
                A2(u11.p0());
            }
        }
        SerializableShaderEntry d33 = SerializableShaderEntry.d("aoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d33 != null) {
            this.aoSpriteIndex = SerializableShaderEntry.h(d33);
        }
        SerializableShaderEntry d34 = SerializableShaderEntry.d("metallicMap", SerializableShaderEntry.f81152f, dataList);
        if (d34 != null && (u14 = SerializableShaderEntry.u(d34)) != null) {
            N2(u14.p0());
        }
        SerializableShaderEntry d35 = SerializableShaderEntry.d("metallicSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d35 != null) {
            this.metallicSpriteIndex = SerializableShaderEntry.h(d35);
        }
        SerializableShaderEntry d36 = SerializableShaderEntry.d("heightMap", SerializableShaderEntry.f81152f, dataList);
        if (d36 != null && (u13 = SerializableShaderEntry.u(d36)) != null) {
            I2(u13.p0());
        }
        SerializableShaderEntry d37 = SerializableShaderEntry.d("heightSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d37 != null) {
            this.heightSpriteIndex = SerializableShaderEntry.h(d37);
        }
        SerializableShaderEntry d38 = SerializableShaderEntry.d("emissive", SerializableShaderEntry.f81152f, dataList);
        if (d38 != null && (u12 = SerializableShaderEntry.u(d38)) != null) {
            G2(u12.p0());
        }
        SerializableShaderEntry d39 = SerializableShaderEntry.d("emissiveSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        if (d39 != null) {
            this.emissiveSpriteIndex = SerializableShaderEntry.h(d39);
        }
        SerializableShaderEntry d40 = SerializableShaderEntry.d(DecalProjector.f77444q0, SerializableShaderEntry.f81148b, dataList);
        if (d40 != null) {
            this.heightIntensity = SerializableShaderEntry.g(d40);
        }
        SerializableShaderEntry d41 = SerializableShaderEntry.d("heightNormalStrength", SerializableShaderEntry.f81148b, dataList);
        if (d41 != null) {
            this.heightNormalStrength = SerializableShaderEntry.g(d41);
            d3();
        }
        SerializableShaderEntry d42 = SerializableShaderEntry.d("heightQuality", SerializableShaderEntry.f81148b, dataList);
        if (d42 != null) {
            this.heightQuality = SerializableShaderEntry.g(d42);
        }
        SerializableShaderEntry d43 = SerializableShaderEntry.d("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        if (d43 != null) {
            M2(SerializableShaderEntry.g(d43));
        }
        SerializableShaderEntry d44 = SerializableShaderEntry.d("windVerticality", SerializableShaderEntry.f81148b, dataList);
        if (d44 != null) {
            U2(SerializableShaderEntry.g(d44));
        }
        SerializableShaderEntry d45 = SerializableShaderEntry.d("materialID", SerializableShaderEntry.f81155i, dataList);
        if (d45 != null) {
            n0(SerializableShaderEntry.h(d45));
        }
        SerializableShaderEntry d46 = SerializableShaderEntry.d("uvSource", SerializableShaderEntry.f81157k, dataList);
        if (d46 != null) {
            T2(cc.e.valueOf(SerializableShaderEntry.s(d46)));
        }
        SerializableShaderEntry d47 = SerializableShaderEntry.d("blendingMode", SerializableShaderEntry.f81157k, dataList);
        if (d47 != null) {
            B2(EnumC13053a.valueOf(SerializableShaderEntry.s(d47)));
        }
        SerializableShaderEntry d48 = SerializableShaderEntry.d("uvSize", SerializableShaderEntry.f81148b, dataList);
        if (d48 != null) {
            V2(SerializableShaderEntry.g(d48));
        }
        SerializableShaderEntry d49 = SerializableShaderEntry.d("pbr-preset", SerializableShaderEntry.f81157k, dataList);
        if (d49 != null && (s11 = SerializableShaderEntry.s(d49)) != null) {
            String replace = s11.replace("pbr-preset:", "");
            if ("@null@".equals(replace)) {
                S2(null);
            } else {
                S2(replace);
            }
        }
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            SerializableShaderEntry d50 = SerializableShaderEntry.d(o12.f28153d + "ND", SerializableShaderEntry.f81157k, dataList);
            if (d50 != null && (s10 = SerializableShaderEntry.s(d50)) != null) {
                NoiseData fromJson = NoiseData.fromJson(s10);
                o12.f28151b = fromJson;
                if (fromJson != null) {
                    o12.f28150a = true;
                }
            }
        }
        g3();
        this.uv.c(dataList);
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
        SerializableShaderEntry e13 = SerializableShaderEntry.e("drawInFront", "Boolean", dataList);
        steppedArrayList.add(e13);
        SerializableShaderEntry.q(e13, this.drawInFront);
        SerializableShaderEntry e14 = SerializableShaderEntry.e("alphaCutout", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e14);
        SerializableShaderEntry.i(e14, this.alphaCutout);
        SerializableShaderEntry e15 = SerializableShaderEntry.e("roughnessFallback", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e15);
        SerializableShaderEntry.i(e15, this.roughnessFallback.o(0, 0));
        SerializableShaderEntry e16 = SerializableShaderEntry.e("metallicFallback", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e16);
        SerializableShaderEntry.i(e16, this.metallicFallback.o(0, 0));
        SerializableShaderEntry e17 = SerializableShaderEntry.e("diffuse", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e17);
        SerializableShaderEntry.l(e17, this.diffuse.instance);
        SerializableShaderEntry e18 = SerializableShaderEntry.e("emissiveColor", SerializableShaderEntry.f81153g, dataList);
        steppedArrayList.add(e18);
        SerializableShaderEntry.l(e18, this.emissiveFallback.i(0, 0));
        SerializableShaderEntry e19 = SerializableShaderEntry.e("albedo", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e19);
        SerializableShaderEntry.k(e19, this.albedo);
        SerializableShaderEntry e20 = SerializableShaderEntry.e("albedoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e20);
        SerializableShaderEntry.j(e20, this.albedoSpriteIndex);
        SerializableShaderEntry e21 = SerializableShaderEntry.e("opacity", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e21);
        SerializableShaderEntry.k(e21, this.opacity);
        SerializableShaderEntry e22 = SerializableShaderEntry.e("opacitySpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e22);
        SerializableShaderEntry.j(e22, this.opacitySpriteIndex);
        SerializableShaderEntry e23 = SerializableShaderEntry.e("normalMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e23);
        SerializableShaderEntry.k(e23, this.normal);
        SerializableShaderEntry e24 = SerializableShaderEntry.e("normalSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e24);
        SerializableShaderEntry.j(e24, this.normalSpriteIndex);
        SerializableShaderEntry e25 = SerializableShaderEntry.e("normalStrength", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e25);
        SerializableShaderEntry.i(e25, this.normalStrength);
        SerializableShaderEntry e26 = SerializableShaderEntry.e("roughnessMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e26);
        SerializableShaderEntry.k(e26, this.roughness);
        SerializableShaderEntry e27 = SerializableShaderEntry.e("roughnessSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e27);
        SerializableShaderEntry.j(e27, this.roughnessSpriteIndex);
        SerializableShaderEntry e28 = SerializableShaderEntry.e("aoMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e28);
        SerializableShaderEntry.k(e28, this.ao);
        SerializableShaderEntry e29 = SerializableShaderEntry.e("aoSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e29);
        SerializableShaderEntry.j(e29, this.aoSpriteIndex);
        SerializableShaderEntry e30 = SerializableShaderEntry.e("emissiveNits", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e30);
        SerializableShaderEntry.i(e30, this.emissiveNits);
        SerializableShaderEntry e31 = SerializableShaderEntry.e("metallicMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e31);
        SerializableShaderEntry.k(e31, this.metallic);
        SerializableShaderEntry e32 = SerializableShaderEntry.e("metallicSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e32);
        SerializableShaderEntry.j(e32, this.metallicSpriteIndex);
        SerializableShaderEntry e33 = SerializableShaderEntry.e("heightMap", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e33);
        SerializableShaderEntry.k(e33, this.height);
        SerializableShaderEntry e34 = SerializableShaderEntry.e("heightSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e34);
        SerializableShaderEntry.j(e34, this.heightSpriteIndex);
        SerializableShaderEntry e35 = SerializableShaderEntry.e("emissive", SerializableShaderEntry.f81152f, dataList);
        steppedArrayList.add(e35);
        SerializableShaderEntry.k(e35, this.emissive);
        SerializableShaderEntry e36 = SerializableShaderEntry.e("emissiveSpriteIndex", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e36);
        SerializableShaderEntry.j(e36, this.emissiveSpriteIndex);
        SerializableShaderEntry e37 = SerializableShaderEntry.e(DecalProjector.f77444q0, SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e37);
        SerializableShaderEntry.i(e37, this.heightIntensity);
        SerializableShaderEntry e38 = SerializableShaderEntry.e("heightNormalStrength", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e38);
        SerializableShaderEntry.i(e38, this.heightNormalStrength);
        SerializableShaderEntry e39 = SerializableShaderEntry.e("heightQuality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e39);
        SerializableShaderEntry.i(e39, this.heightQuality);
        SerializableShaderEntry e40 = SerializableShaderEntry.e("localWindIntensity", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e40);
        SerializableShaderEntry.i(e40, this.localWindIntensity);
        SerializableShaderEntry e41 = SerializableShaderEntry.e("windVerticality", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e41);
        SerializableShaderEntry.i(e41, this.windVerticality);
        SerializableShaderEntry e42 = SerializableShaderEntry.e("materialID", SerializableShaderEntry.f81155i, dataList);
        steppedArrayList.add(e42);
        SerializableShaderEntry.j(e42, K());
        SerializableShaderEntry e43 = SerializableShaderEntry.e("uvSource", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e43);
        SerializableShaderEntry.o(e43, this.uvSource.toString());
        SerializableShaderEntry e44 = SerializableShaderEntry.e("blendingMode", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e44);
        SerializableShaderEntry.o(e44, this.blendingMode.toString());
        SerializableShaderEntry e45 = SerializableShaderEntry.e("uvSize", SerializableShaderEntry.f81148b, dataList);
        steppedArrayList.add(e45);
        SerializableShaderEntry.i(e45, this.worldUVSize);
        SerializableShaderEntry e46 = SerializableShaderEntry.e("pbr-preset", SerializableShaderEntry.f81157k, dataList);
        steppedArrayList.add(e46);
        String str = this.selectedPreset;
        if (str == null || str.isEmpty()) {
            SerializableShaderEntry.o(e46, "pbr-preset:@null@");
        } else {
            SerializableShaderEntry.o(e46, "pbr-preset:" + this.selectedPreset);
        }
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            SerializableShaderEntry e47 = SerializableShaderEntry.e(o12.f28153d + "ND", SerializableShaderEntry.f81157k, dataList);
            steppedArrayList.add(e47);
            NoiseData noiseData = o12.f28151b;
            if (noiseData == null || !o12.f28150a) {
                SerializableShaderEntry.o(e47, null);
            } else {
                SerializableShaderEntry.o(e47, noiseData.toJson());
            }
        }
        this.uv.d(dataList, steppedArrayList);
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    @Override
    public boolean d() {
        if (this.alphaCutout < 1.0f && this.diffuse.getFloatAlpha() > 0.0f) {
            return super.d();
        }
        return false;
    }

    public O1 e2(String fieldName) {
        for (int i10 = 0; i10 < this.noiseRefList.size(); i10++) {
            O1 o12 = this.noiseRefList.get(i10);
            if (o12.f28153d.equals(fieldName)) {
                return o12;
            }
        }
        return null;
    }

    public float g2() {
        return this.localWindIntensity;
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        Y2();
        W2();
        j3();
        h3();
        l3();
        f3();
        X2();
        Z2();
        a3();
        b3();
        c3();
        e3();
        n3();
        b2();
        c2();
        m3();
        k3();
    }

    public float h2() {
        return this.windVerticality;
    }

    @Override
    public void i0(String entry, float value) {
        if (entry.equalsIgnoreCase("windeffect")) {
            M2(value);
            return;
        }
        if (entry.equalsIgnoreCase("windVerticality")) {
            U2(value);
            return;
        }
        if (entry.equalsIgnoreCase("roughness")) {
            this.roughnessFallback.d0(0, 0, value);
            this.roughnessFallback.apply();
            Z();
        } else {
            if (!entry.equalsIgnoreCase("metallic")) {
                super.i0(entry, value);
                return;
            }
            this.metallicFallback.d0(0, 0, value);
            this.metallicFallback.apply();
            Z();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
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
            boolean z11 = z10;
            while (i13 < i10) {
                boolean z12 = zArr2[i13];
                int i14 = z11 ? 1 : 0;
                boolean z13 = z11;
                while (i14 < i10) {
                    boolean z14 = zArr2[i14];
                    int i15 = z13 ? 1 : 0;
                    boolean z15 = z13;
                    while (i15 < i10) {
                        boolean z16 = zArr2[i15];
                        int i16 = z15 ? 1 : 0;
                        boolean z17 = z15;
                        while (i16 < i10) {
                            boolean z18 = zArr2[i16];
                            if (z16) {
                                zArr = new boolean[i11];
                                zArr[z17] = z17;
                            } else {
                                zArr = zArr2;
                            }
                            int length2 = zArr.length;
                            for (?? r32 = z17; r32 < length2; r32++) {
                                boolean z19 = zArr[r32];
                                int i17 = i14;
                                ec.i iVar = new ec.i(MaterialBuilder.a.valueOf(enumC13053a.name()), 0.5f, MaterialBuilder.c.BACK, z12, null, !z14, !z14);
                                z18 = z18;
                                iVar.j("hasHeight", z18);
                                z16 = z16;
                                iVar.j("useWorldUV", z16);
                                iVar.j("discardEdges", z19);
                                steppedArrayList.add(iVar);
                                i15 = i15;
                                i14 = i17;
                                zArr = zArr;
                                i16 = i16;
                            }
                            i16++;
                            i10 = 2;
                            z17 = 0;
                            i11 = 1;
                        }
                        i15++;
                        i10 = 2;
                        z15 = false;
                        i11 = 1;
                    }
                    i14++;
                    i10 = 2;
                    z13 = false;
                    i11 = 1;
                }
                i13++;
                i10 = 2;
                z11 = false;
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
        b2();
        c2();
    }

    @Override
    public ShaderBinder l() {
        LitUltraBinder litUltraBinder = new LitUltraBinder();
        litUltraBinder.albedo = this.albedo;
        litUltraBinder.albedoSpriteIndex = this.albedoSpriteIndex;
        litUltraBinder.opacity = this.opacity;
        litUltraBinder.opacitySpriteIndex = this.opacitySpriteIndex;
        litUltraBinder.diffuse = this.diffuse.copy();
        litUltraBinder.normal = this.normal;
        litUltraBinder.normalSpriteIndex = this.normalSpriteIndex;
        litUltraBinder.normalStrength = this.normalStrength;
        litUltraBinder.roughness = this.roughness;
        litUltraBinder.roughnessSpriteIndex = this.roughnessSpriteIndex;
        litUltraBinder.metallic = this.metallic;
        litUltraBinder.metallicSpriteIndex = this.metallicSpriteIndex;
        litUltraBinder.ao = this.ao;
        litUltraBinder.aoSpriteIndex = this.aoSpriteIndex;
        litUltraBinder.emissive = this.emissive;
        litUltraBinder.emissiveSpriteIndex = this.emissiveSpriteIndex;
        litUltraBinder.emissiveNits = this.emissiveNits;
        litUltraBinder.height = this.height;
        litUltraBinder.heightSpriteIndex = this.heightSpriteIndex;
        litUltraBinder.alphaCutout = this.alphaCutout;
        litUltraBinder.heightIntensity = this.heightIntensity;
        litUltraBinder.heightNormalStrength = this.heightNormalStrength;
        litUltraBinder.heightQuality = this.heightQuality;
        litUltraBinder.heightActiveInShader = this.heightActiveInShader;
        litUltraBinder.localWindIntensity = this.localWindIntensity;
        litUltraBinder.windVerticality = this.windVerticality;
        litUltraBinder.discardEdges = this.discardEdges;
        litUltraBinder.hasNormalMap = this.hasNormalMap;
        litUltraBinder.hasHeightMap = this.hasHeightMap;
        litUltraBinder.hasRoughnessMap = this.hasRoughnessMap;
        litUltraBinder.hasAoMap = this.hasAoMap;
        litUltraBinder.uv = this.uv.a();
        litUltraBinder.worldUVSize = this.worldUVSize;
        litUltraBinder.doubleSided = this.doubleSided;
        litUltraBinder.blendingMode = this.blendingMode;
        litUltraBinder.drawInFront = this.drawInFront;
        litUltraBinder.n0(K());
        return litUltraBinder;
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
                z2(texture.p0());
                return;
            } else {
                z2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("opacity") || entry.equalsIgnoreCase("opacityMap") || entry.equalsIgnoreCase("alphaMap")) {
            if (texture != null) {
                Q2(texture.p0());
                return;
            } else {
                Q2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase(JavaCore.NORMAL) || entry.equalsIgnoreCase("normalMap")) {
            if (texture != null) {
                O2(texture.p0());
                return;
            } else {
                O2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("roughness") || entry.equalsIgnoreCase("roughnessMap")) {
            if (texture != null) {
                R2(texture.p0());
                return;
            } else {
                R2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("metallic") || entry.equalsIgnoreCase("metallicMap")) {
            if (texture != null) {
                N2(texture.p0());
                return;
            } else {
                N2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("metalness") || entry.equalsIgnoreCase("metalnessMap")) {
            if (texture != null) {
                N2(texture.p0());
                return;
            } else {
                N2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("ao") || entry.equalsIgnoreCase("aoMap")) {
            if (texture != null) {
                A2(texture.p0());
                return;
            } else {
                A2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("height") || entry.equalsIgnoreCase("heightMap")) {
            if (texture != null) {
                I2(texture.p0());
                return;
            } else {
                I2(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("emissive") && !entry.equalsIgnoreCase("emissiveMap")) {
            super.r0(entry, texture);
        } else if (texture != null) {
            G2(texture.p0());
        } else {
            G2(null);
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
                z2(null);
                return;
            }
            ub.g u10 = C16165b.u(file);
            if (u10 != null) {
                z2(u10.p0());
                return;
            } else {
                z2(null);
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
                Q2(null);
                return;
            }
            ub.g u11 = C16165b.u(file);
            if (u11 != null) {
                Q2(u11.p0());
                return;
            } else {
                Q2(null);
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
                O2(null);
                return;
            }
            ub.g u12 = C16165b.u(file);
            if (u12 != null) {
                O2(u12.p0());
                return;
            } else {
                O2(null);
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
                R2(null);
                return;
            }
            ub.g u13 = C16165b.u(file);
            if (u13 != null) {
                R2(u13.p0());
                return;
            } else {
                R2(null);
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
                N2(null);
                return;
            }
            ub.g u14 = C16165b.u(file);
            if (u14 != null) {
                N2(u14.p0());
                return;
            } else {
                N2(null);
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
                N2(null);
                return;
            }
            ub.g u15 = C16165b.u(file);
            if (u15 != null) {
                N2(u15.p0());
                return;
            } else {
                N2(null);
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
                A2(null);
                return;
            }
            ub.g u16 = C16165b.u(file);
            if (u16 != null) {
                A2(u16.p0());
                return;
            } else {
                A2(null);
                return;
            }
        }
        if (entry.equalsIgnoreCase("height") || entry.equalsIgnoreCase("heightMap")) {
            Texture texture8 = this.height;
            if (texture8 != null) {
                p pVar8 = texture8.instance;
                if ((pVar8 instanceof ub.g) && ((ub.g) pVar8).getFile().equals(file)) {
                    return;
                }
            }
            if (file == null || file.isEmpty()) {
                I2(null);
                return;
            }
            ub.g u17 = C16165b.u(file);
            if (u17 != null) {
                I2(u17.p0());
                return;
            } else {
                I2(null);
                return;
            }
        }
        if (!entry.equalsIgnoreCase("emissive") && !entry.equalsIgnoreCase("emissiveMap")) {
            super.s0(entry, file);
            return;
        }
        Texture texture9 = this.emissive;
        if (texture9 != null) {
            p pVar9 = texture9.instance;
            if ((pVar9 instanceof ub.g) && ((ub.g) pVar9).getFile().equals(file)) {
                return;
            }
        }
        if (file == null || file.isEmpty()) {
            G2(null);
            return;
        }
        ub.g u18 = C16165b.u(file);
        if (u18 != null) {
            G2(u18.p0());
        } else {
            G2(null);
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
            m3();
            Z();
        } catch (Exception unused) {
            super.w0(entry, vector2);
        }
    }

    @Override
    public ec.i y0(ec.i variance, C4171b renderPass) {
        ec.i iVar = variance;
        boolean z10 = this.heightIntensity > 0.0f;
        this.heightActiveInShader = z10;
        EnumC13053a f22 = f2();
        boolean z11 = this.discardEdges && this.uvSource == cc.e.Vertex;
        cc.e eVar = this.uvSource;
        cc.e eVar2 = cc.e.World;
        renderPass.m("useWorldUV", eVar == eVar2);
        renderPass.m("hasHeight", z10);
        renderPass.m("discardEdges", z11);
        boolean z12 = variance.a().ordinal() != f22.ordinal();
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
        if (variance.g() == this.drawInFront) {
            z12 = true;
        }
        if (z12) {
            MaterialBuilder.a valueOf = MaterialBuilder.a.valueOf(f22.name());
            MaterialBuilder.c cVar = MaterialBuilder.c.BACK;
            boolean z13 = this.doubleSided;
            boolean z14 = this.drawInFront;
            iVar = new ec.i(valueOf, 0.5f, cVar, z13, null, !z14, !z14);
            iVar.j("hasHeight", z10);
            iVar.j("useWorldUV", this.uvSource == eVar2);
            iVar.j("discardEdges", z11);
        }
        return iVar;
    }

    public void z2(Texture albedo) {
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
            W2();
            if (!K8.a.r()) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        LitUltraBinder.this.i2();
                    }
                });
                return;
            }
            D0();
            H0();
            h3();
        }
    }
}
