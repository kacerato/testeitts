package com.itsmagic.engine.Activities.Editor.Panels.AI;

import C5.b;
import C5.n;
import F5.c;
import JAVARuntime.Color;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoObject;
import JAVARuntime.Runnable;
import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.eclipse.jdt.core.JavaCore;
import q7.C15045a;
import r4.C15147a;
import rc.C15169a;
import yb.C16165b;

public class AIGeneratorPanel extends EditorPanel {

    public static final String f71064d0 = "AIGeneratorPanel";

    public static final int f71065e0 = 0;

    public static final int f71066f0 = 0;

    public FloatingPanelArea f71067X;

    public final float f71068Y;

    public TextInputEditText f71069Z;

    public l f71070a0;

    public int f71071b0;

    public AIModel f71072c0;

    public class AnonymousClass5 extends Component {

        public float f71073E;

        public float f71074F;

        public float f71075G;

        public final GizmoObject f71076H;

        public final com.itsmagic.engine.Activities.Editor.Panels.AI.d f71077I;

        public final String f71078J;

        public final String f71079K;

        public class a implements q.a.n {

            public class C1090a implements q.a.l {

                public class C1091a implements q.a.l {

                    public final File f71083a;

                    public class C1092a extends com.itsmagic.engine.Activities.Editor.Panels.AI.c {

                        public class C1093a extends com.itsmagic.engine.Activities.Editor.Panels.AI.c {

                            public final File f71086a;

                            public class C1094a extends com.itsmagic.engine.Activities.Editor.Panels.AI.c {

                                public final File f71088a;

                                public class C1095a extends com.itsmagic.engine.Activities.Editor.Panels.AI.c {

                                    public final File f71090a;

                                    public C1095a(final File val$metallicTexture) {
                                        this.f71090a = val$metallicTexture;
                                    }

                                    @Override
                                    public void a(float p10) {
                                        AnonymousClass5.this.f71074F = ((p10 / 6.0f) / 2.0f) + 0.9166667f;
                                    }

                                    @Override
                                    public void c(String result) {
                                        AIGeneratorPanel.B1(result, AnonymousClass5.this.f79250n);
                                    }

                                    @Override
                                    public void d(File roughnessTexture) {
                                        C1094a c1094a = C1094a.this;
                                        C1093a c1093a = C1093a.this;
                                        C1091a c1091a = C1091a.this;
                                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                        AIGeneratorPanel.this.H1(anonymousClass5.f71079K, anonymousClass5.f71078J, anonymousClass5.f79250n, c1091a.f71083a, c1093a.f71086a, c1094a.f71088a, this.f71090a, roughnessTexture);
                                        AnonymousClass5.this.f71074F = 1.0f;
                                    }
                                }

                                public C1094a(final File val$normalTexture) {
                                    this.f71088a = val$normalTexture;
                                }

                                @Override
                                public void a(float p10) {
                                    AnonymousClass5.this.f71074F = ((p10 / 6.0f) / 2.0f) + 0.8333334f;
                                }

                                @Override
                                public void c(String result) {
                                    AIGeneratorPanel.B1(result, AnonymousClass5.this.f79250n);
                                }

                                @Override
                                public void d(File metallicTexture) {
                                    q.a.c(AnonymousClass5.this.f71078J, "roughness", new C1095a(metallicTexture));
                                }
                            }

                            public C1093a(final File val$textureFile) {
                                this.f71086a = val$textureFile;
                            }

                            @Override
                            public void a(float p10) {
                                AnonymousClass5.this.f71074F = ((p10 / 6.0f) / 2.0f) + 0.75f;
                            }

                            @Override
                            public void c(String result) {
                                AIGeneratorPanel.B1(result, AnonymousClass5.this.f79250n);
                            }

                            @Override
                            public void d(File normalTexture) {
                                q.a.c(AnonymousClass5.this.f71078J, "metallic", new C1094a(normalTexture));
                            }
                        }

                        public C1092a() {
                        }

                        @Override
                        public void a(float p10) {
                            AnonymousClass5.this.f71074F = ((p10 / 6.0f) / 2.0f) + 0.6666667f;
                        }

                        @Override
                        public void c(String result) {
                            AIGeneratorPanel.B1(result, AnonymousClass5.this.f79250n);
                        }

                        @Override
                        public void d(File textureFile) {
                            q.a.c(AnonymousClass5.this.f71078J, JavaCore.NORMAL, new C1093a(textureFile));
                        }
                    }

                    public C1091a(final File val$objFile) {
                        this.f71083a = val$objFile;
                    }

                    @Override
                    public void a(float p10) {
                        AnonymousClass5.this.f71074F = ((p10 / 6.0f) / 2.0f) + 0.5833333f;
                    }

                    @Override
                    public void b(File file) {
                        q.a.c(AnonymousClass5.this.f71078J, "", new C1092a());
                    }

                    @Override
                    public void onError(String result) {
                        b(null);
                    }
                }

                public C1090a() {
                }

                @Override
                public void a(float p10) {
                    AnonymousClass5.this.f71074F = ((p10 / 6.0f) / 2.0f) + 0.5f;
                }

                @Override
                public void b(File objFile) {
                    q.a.a(AnonymousClass5.this.f71078J, new C1091a(objFile));
                }

                @Override
                public void onError(String result) {
                    AIGeneratorPanel.B1(result, AnonymousClass5.this.f79250n);
                }
            }

            public a() {
            }

            @Override
            public void a(float p10, boolean done, boolean error) {
                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                anonymousClass5.f71074F = p10 * 0.5f;
                if (done) {
                    anonymousClass5.f71073E = -999.0f;
                    q.a.b(anonymousClass5.f71078J, new C1090a());
                } else if (error) {
                    AIGeneratorPanel.B1("Something went wrong, you have been refunded", anonymousClass5.f79250n);
                }
            }

            @Override
            public void onError(String result) {
                AIGeneratorPanel.B1(result, AnonymousClass5.this.f79250n);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(String serializedComponentType, final GizmoObject val$gizmoObject, final com.itsmagic.engine.Activities.Editor.Panels.AI.d val$progress3DDrawer, final String val$taskTag, final String val$prompt) {
            super(serializedComponentType);
            this.f71076H = val$gizmoObject;
            this.f71077I = val$progress3DDrawer;
            this.f71078J = val$taskTag;
            this.f71079K = val$prompt;
            this.f71073E = 0.0f;
            this.f71074F = 0.0f;
            this.f71075G = 0.0f;
        }

        @Override
        public void parallelUpdate() {
            super.parallelUpdate();
            this.f71076H.setPosition(this.f79250n.transform.Z0().toJAVARuntime());
            Gizmo.drawEngine(this.f71076H);
            float z10 = Nc.b.z(this.f71075G, this.f71074F, K8.d.d() * 1.0f);
            this.f71075G = z10;
            this.f71077I.b(z10 * 360.0f, this.f79250n.transform.Z0().add(new Vector3(0.0f, 0.875f, 0.0f)));
            float f10 = this.f71073E;
            if (f10 >= 0.0f) {
                float d10 = f10 + K8.d.d();
                this.f71073E = d10;
                if (d10 >= 2.0f) {
                    this.f71073E = 0.0f;
                    q.a.f(this.f71078J, new a());
                }
            }
        }
    }

    public class a extends c.n0<l> {
        public a() {
        }

        @Override
        public void set(l value) {
            AIGeneratorPanel.this.f71070a0 = value;
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", AIGeneratorPanel.this.f71071b0 + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AIGeneratorPanel.this.f71071b0 = variable.int_value;
            }
        }
    }

    public class c implements n {

        public final List f71094a;

        public final LinearLayout f71095b;

        public c(final List val$entries, final LinearLayout val$content) {
            this.f71094a = val$entries;
            this.f71095b = val$content;
        }

        @Override
        public void refresh(int position) {
            AIGeneratorPanel.this.G1(this.f71094a, this.f71095b);
        }
    }

    public class d implements View.OnTouchListener {
        public d() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View view) {
            AIGeneratorPanel.this.f71069Z.setText(AIGeneratorPanel.this.A1());
            AIGeneratorPanel.this.f71069Z.setHint("");
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {
        public f() {
        }

        @Override
        public void click(View v10) {
            if (UserController.Z(N7.c.t())) {
                AIGeneratorPanel.this.C1(0);
            }
        }
    }

    public class g implements q.a.o {

        public final C15045a f71100a;

        public final String f71101b;

        public g(final C15045a val$loading, final String val$prompt) {
            this.f71100a = val$loading;
            this.f71101b = val$prompt;
        }

        @Override
        public void c(String taskTag) {
            this.f71100a.p1();
            AIGeneratorPanel.this.I1(this.f71101b, taskTag);
            AIGeneratorPanel.this.R0();
        }

        @Override
        public void onError(String result) {
            Z6.i.y1("Ops!", result);
            this.f71100a.p1();
        }
    }

    public class h implements Runnable {

        public final GameObject f71103b;

        public h(final GameObject val$gameObject) {
            this.f71103b = val$gameObject;
        }

        @Override
        public void run() {
            Panel3DView.y1(this.f71103b.transform.Z0().add(new Vector3(0.0f, 0.5f, 0.0f)), 2.5f);
        }
    }

    public class i implements Runnable {

        public final File f71105b;

        public final String f71106c;

        public final GameObject f71107d;

        public final File f71108e;

        public final File f71109f;

        public final File f71110g;

        public final File f71111h;

        public class a implements Runnable {

            public final C15045a f71113b;

            public class C1096a implements Runnable {

                public final GameObject f71115b;

                public class RunnableC1097a implements Runnable {

                    public class C1098a implements Runnable {

                        public class C1099a implements b8.g {
                            public C1099a() {
                            }

                            @Override
                            public void a(Activity activity) {
                            }

                            @Override
                            public void b(Activity activity) {
                            }
                        }

                        public C1098a() {
                        }

                        @Override
                        public void run() {
                            ModelRenderer modelRenderer;
                            Material material;
                            Material material2;
                            File file;
                            i iVar = i.this;
                            int i10 = 0;
                            if (iVar.f71108e == null && iVar.f71109f == null && iVar.f71110g == null) {
                                while (i10 < C1096a.this.f71115b.N()) {
                                    Component L10 = C1096a.this.f71115b.L(i10);
                                    if ((L10 instanceof ModelRenderer) && (material2 = ((ModelRenderer) L10).f73747F) != null && (file = i.this.f71111h) != null) {
                                        material2.i0("albedo", file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                                    }
                                    i10++;
                                }
                            } else {
                                while (i10 < C1096a.this.f71115b.N()) {
                                    Component L11 = C1096a.this.f71115b.L(i10);
                                    if ((L11 instanceof ModelRenderer) && (material = (modelRenderer = (ModelRenderer) L11).f73747F) != null) {
                                        material.f0("Surface/Standard");
                                        File file2 = i.this.f71111h;
                                        if (file2 != null) {
                                            modelRenderer.f73747F.i0("albedo", file2.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                                        }
                                        i iVar2 = i.this;
                                        File file3 = iVar2.f71109f;
                                        File file4 = iVar2.f71108e;
                                        if (file4 != null) {
                                            modelRenderer.f73747F.i0(JavaCore.NORMAL, file4.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                                        }
                                        File file5 = i.this.f71110g;
                                        if (file5 != null) {
                                            modelRenderer.f73747F.i0("roughness", file5.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                                        }
                                    }
                                    i10++;
                                }
                            }
                            W7.b.f27308h.f(N7.c.o(), new C1099a());
                        }
                    }

                    public RunnableC1097a() {
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(C1096a.this.f71115b);
                        Panel3DView.x1();
                        K8.a.h(10, new C1098a());
                    }
                }

                public C1096a(final GameObject val$root) {
                    this.f71115b = val$root;
                }

                @Override
                public void run() {
                    i.this.f71107d.destroy();
                    K8.a.D(i.this.f71107d);
                    N7.c.j0(new RunnableC1097a());
                }
            }

            public a(final C15045a val$loading) {
                this.f71113b = val$loading;
            }

            @Override
            public void run() {
                try {
                    try {
                        GameObject g10 = Wg.b.g(i.this.f71105b);
                        if (g10 != null) {
                            g10.E1(Tc.b.Y(i.this.f71106c.replaceAll("\\s+", ConstantDescs.DEFAULT_NAME), 25));
                            g10.transform.p3(i.this.f71107d.transform.Z0());
                            g10.Q1();
                            K8.a.I(new C1096a(g10));
                        } else {
                            AIGeneratorPanel.B1("Can't import obj file", i.this.f71107d);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    this.f71113b.p1();
                } catch (Throwable th2) {
                    this.f71113b.p1();
                    throw th2;
                }
            }
        }

        public i(final File val$objFile, final String val$prompt, final GameObject val$gameObject, final File val$normalTexture, final File val$metallicTexture, final File val$roughnessTexture, final File val$textureFile) {
            this.f71105b = val$objFile;
            this.f71106c = val$prompt;
            this.f71107d = val$gameObject;
            this.f71108e = val$normalTexture;
            this.f71109f = val$metallicTexture;
            this.f71110g = val$roughnessTexture;
            this.f71111h = val$textureFile;
        }

        @Override
        public void run() {
            new Thread(new a(C15045a.r1())).start();
        }
    }

    public class j implements Runnable {

        public final String f71120b;

        public j(final String val$result) {
            this.f71120b = val$result;
        }

        @Override
        public void run() {
            Z6.i.y1("Ops!", this.f71120b);
        }
    }

    public class k implements Runnable {

        public final GameObject f71121b;

        public k(final GameObject val$gameObject) {
            this.f71121b = val$gameObject;
        }

        @Override
        public void run() {
            this.f71121b.destroy();
            K8.a.D(this.f71121b);
        }
    }

    public enum l {
        Realistic,
        Cartoon,
        LowPoly,
        Sculpture,
        Pbr;

        public String b() {
            return ordinal() != 2 ? toString().toLowerCase(Locale.ROOT) : "low-poly";
        }
    }

    public AIGeneratorPanel(float wantedHeight) {
        super(null, "3D AI Generator");
        this.f71070a0 = l.Realistic;
        this.f71071b0 = 30000;
        super.e1(false);
        this.f71068Y = wantedHeight;
    }

    public static void B1(String result, GameObject gameObject) {
        N7.c.j0(new j(result));
        K8.a.I(new k(gameObject));
    }

    public static FloatingPanelArea D1() {
        float g10 = N7.c.g(300);
        float f10 = N7.c.f(240);
        AIGeneratorPanel aIGeneratorPanel = new AIGeneratorPanel(f10);
        FloatingPanelArea m10 = C15147a.m(aIGeneratorPanel, g10, f10);
        aIGeneratorPanel.f71067X = m10;
        m10.N1(false);
        return m10;
    }

    public static FloatingPanelArea E1(View anchor, C15147a.e anchorSide) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        float g10 = N7.c.g(300);
        float f10 = N7.c.f(240);
        AIGeneratorPanel aIGeneratorPanel = new AIGeneratorPanel(f10);
        FloatingPanelArea g11 = C15147a.g(anchor, aIGeneratorPanel, anchorSide, g10, f10);
        aIGeneratorPanel.f71067X = g11;
        g11.N1(false);
        return g11;
    }

    public static FloatingPanelArea F1(AIModel element) {
        float g10 = N7.c.g(300);
        float f10 = N7.c.f(240);
        AIGeneratorPanel aIGeneratorPanel = new AIGeneratorPanel(f10, element);
        FloatingPanelArea m10 = C15147a.m(aIGeneratorPanel, g10, f10);
        aIGeneratorPanel.f71067X = m10;
        m10.N1(false);
        return m10;
    }

    public final String A1() {
        return new String[]{"Hard Edge Steampunk House Facade Wood, Stone, pipes, Highly Detailed, Game Assets Square", "A highly detail clay model of a Mayan temple, pyramid style with hundreds of steps going up to the top on one side of the temple, at the top there is an altar for sacrificing to the gods, make it have a crumbling, decaying look as if its thousands of years old, #clay#", "a huge dwarf beer barrel, made of aged oiled wood, richly decorated with small runes, iron fittings, in the style of warhammer fantasy", "Create a detailed stone wall made of large, aged stone blocks with visible cracks and wear. The wall features intricate Inca carvings, including spirals and animal figures. The stone is dark gray with patches of moss and lichen for an aged, realistic appearance.", "Ancient Egyptian style sofa with turquoise cushions", "Walkable temple to a cruel god, junglecore, aztec, khmer, hindu, realistic architecture, made of stone, covered in moss, grisly details. Open indoor section.", "#clay#, The object features a humanoid figure with a hooded cloak, skeletal face, and jagged, claw-like hands, surrounded by sharp, fragmented elements, conveying a menacing, chaotic texture.", "A simple village vegetable stall.  Clean lines.  Natural colors. Carved detail. Chunky. Well-lit.  Dungeons & Dragons. DND. High-resolution. Ultra realistic.", "A simple village butcher shop.  Clean lines.  Natural colors. Carved detail. Chunky. Well-lit.  Dungeons & Dragons. DND. High-resolution. Ultra realistic.", "anthropomorphic EVIL MUSHROOM, OPEN MOUTH SHARO TEETH #bioluminescent#", "Create a very high-quality, high-resolution, ultra-detailed 3D model of an ancient Inca furnace carved from stone, with the fire chamber positioned at waist height, ideal for interaction. Include intricate, symbolic engravings and geometric motifs. Add aged metallic accents with subtle patina and decorative elements. Ensure realistic texturing, with a raised hearth for placing metals, and highlight with strategic lighting for maximum detail., #clay#", "A simple village bakery.  Clean lines.  Natural colors. Carved detail. Chunky. Well-lit.  Dungeons & Dragons. DND. High-resolution. Ultra realistic.", "A tree stump with a fairy door in its side. Enchanting.  Fairytale-like.  Deeply carved textures. Natural realistic colors. Carved detail. Chunky. Well-lit.  Dungeons & Dragons. DND. High-resolution. Ultra realistic.", "#bioluminescent#, highly detailed, ultra-realistic 3D model of a rustic, rectangular wooden market stall in isometric view. Include aged, textured wood planks, hanging goods (leather/spices/pottery/metalwork/jewelry), baskets with grains, fruits, and vegetables. Add lifelike textures on all materials to capture weathered wood, fabric, and metal. Evoke ancient village aesthetics, resembling Age of Empires and Clash of Clans styles, with semantic recognition for intricate textures and design", "A snowy village clock tower.  Deeply carved details.  Ultra realistic.  Highly stylized.  Highly textured.  Cute.  Carved.  Clean lines.  Dungeons & Dragons.", "#bioluminescent#, high-resolution 3D model of an aged,  tall, narrow stone house with a steep gabled roof. Features include intricate old stonework, arched wooden door, rustic wooden elements, and arched windows. The design should blend storybook style with elven and Rivendell architecture.Detailed polygonal mesh, capturing weathered, rough stone textures, realistic colors, and a mix of fantasy and craftsman aesthetics. Include elements like vines and a barrel for added 4k realism.", "High-res 3D model of a stone archway with a semi-circular top and rough, weathered texture. Supported by rectangular columns, with a wooden door framed by irregular stones and stone steps. Capture rugged stone, aged wood grain, and realistic shading. Style in medieval South African Brom Workshop horror with eerie, demonic realism.", "an old tv on an old tv wooden stand, texture shoukd be mostly wooden and vintage besides the front screen", "Create an orange Bioluminescent Xenomorph with red Bioluminescent eyes and sharp teeth, large full body and from the front he stands straight legs in t-pose arms spread palms down and without arms on a solid green background, Artistic style :stylized, Realistic, high resolution, best quality, 4k,UE5, #bioluminescent#", "COOKIE, Ultra Realistic, Highly Detailed,", "a vintage heavy anvil on round wood base medevil", "microphone , Ultra realistic, high resolution, clear, highly detailed realistic, #realistic#", "Massive Vertical Block of Ice that is translucent, heavily detailed, ultra realistic, ice age, a massive block of ice.  Frosty and heavily frozen #bioluminescent#", "A biofluorescent flower with a star-shaped blossom and scythe-like long leaves. The flowers grow in clusters of four on the long stems, #bioluminescent#", "The object is the big spring forest cliff, highly detailed, photoscan, cliff, angular green blue and red alien desert rocks with large cracks and a rough texture and a predominantly black-asteroid color that are covered by yellow crystals, game assets, ultra realistic. asteroid granite rocks", "The object is the big spring forest cliff, highly detailed, photoscan, cliff, angular rocks with large cracks and a rough texture and a predominantly stone-gray color that are covered by moss, game assets,ultra realistic", "An old crumbling well made of stone, with a roof and bucket, fantasy 3D game asset.  with human skulls.", "Ancient stone deer skull temple with ancient sci-fi runic carving, covered with moss and twisting vines.", "medieval Tower with banners at some sides,  style of clash royale very high detail", "#bioluminescent#, high-resolution 3D model of a tall, narrow stone house with a steep gabled roof. Features include intricate old stonework with uneven textures, arched wooden door, rustic wooden elements, and arched windows. The design should blend storybook style with elven and Rivendell architecture.Detailed polygonal mesh, capturing weathered, rough stone textures, realistic colors, and a mix of fantasy and craftsman aesthetics. Include elements like vines and a barrel for added 4k realism.", "a typrical english georgian style house with windows accurate and realistic architectural details and roof", "ancient rock pillars , with weird ancient signs", "an ada 4x4 suv rusty car from russia, The image shows a vintage car with a rusted exterior, particularly noticeable on the hood and body. The car has a boxy shape, typical of older models, and features a prominent front grille with a logo in the center. The headlights are round and appear to be in good condition. The vehicle has four wheels, and the tires are covered in mud, suggesting it may have been off-road or in a muddy area. The car's windows are tinted, and the side mirrors are intact.", "retro pick-up, #anthropomorphic# car", "Game Assets, Highly Detailed, Ultra Realistic, The object is a glossy, dark-colored 80s sports car with a boxy, angular shape, featuring sharp lines and a smooth surface texture.", "Create a detailed 3D model of a sleek, modern sports car. The design should feature a low profile, aerodynamic shape, and aggressive styling. Include elements such as a streamlined body, large alloy wheels, and an eye-catching front grille. The car should have a vibrant color scheme, with reflections and highlights to emphasize its shiny surface. Make sure to model the interior as well, showcasing sporty seats, a high-tech dashboard, and a steering wheel with racing-inspired elements.\"", "An attractive and sporty Lamborghini car with a beautiful design", "A meticulously detailed 2024 electric sports car, inspired by the latest Tesla Roadster. The vehicle features a sleek, aerodynamic design with a glossy midnight blue finish. Its body showcases sharp lines and a low profile, emphasizing speed and elegance. The car is equipped with 21-inch alloy wheels and low-profile tires. The model is designed in a hyper-realistic PBR style, capturing intricate details such as reflections, shadows, and material textures.\"", "New gen hatchback car", "Create a realistic, high-resolution 3D render of a classic red 1990s Honda NSX sports car. The car should have a sleek, aerodynamic design with sharp lines, a low stance, and detailed headlights. Capture the car's distinctive features, including its bold red color, iconic side air intakes, and stylish wheels. The lighting should highlight the car's glossy finish and emphasize its curves and contours", "The 1969 Ford Mustang is a classic American muscle car with an aggressive and powerful design. It features a large chrome grille with the iconic Mustang logo and triple vertical taillights at the rear. With a long hood and wide body, it houses a robust V8 engine, offering a sporty and iconic driving experience.", "Super realistic chibi car, painted red, big chrome engine, flames on the doors, transparent windows, bigger rear tires.", "A cool racing car with red paint and silver rims", "GT3 race car , 4k, 8k resolution", "old car black color"}[Nc.d.j(0, 44)];
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.ai_generator_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new d());
        Button button = (Button) inflate.findViewById(R.id.example);
        button.setText("Show example");
        button.setOnClickListener(new e());
        inflate.findViewById(R.id.freeGen).setOnClickListener(new f());
        TextInputEditText textInputEditText = (TextInputEditText) inflate.findViewById(R.id.textInputEditText);
        this.f71069Z = textInputEditText;
        textInputEditText.setText("");
        this.f71069Z.setHint("Steampunk House");
        AIModel aIModel = this.f71072c0;
        if (aIModel != null) {
            this.f71069Z.setText(aIModel.c());
        }
        G1(z1(), (LinearLayout) inflate.findViewById(R.id.content));
        return inflate;
    }

    public final void C1(int currency) {
        C15045a r12 = C15045a.r1();
        String obj = this.f71069Z.getText().toString();
        q.a.i(obj, "", this.f71070a0.b(), this.f71071b0, currency, new g(r12, obj));
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.D().s0(this);
    }

    public final void G1(List<C5.b> entries, LinearLayout content) {
        if (content != null) {
            content.removeAllViews();
            if (entries != null) {
                for (int i10 = 0; i10 < entries.size(); i10++) {
                    C5.b bVar = entries.get(i10);
                    b.a aVar = bVar.f2079n;
                    if (aVar == b.a.Vector) {
                        C5.h.y(content, this.f70908j, bVar, 0, M());
                    } else if (aVar == b.a.Component) {
                        C5.h.w(content, this.f70908j, bVar, 0, M(), new c(entries, content));
                    } else {
                        C5.h.x(content, this.f70908j, bVar, 0, true, M());
                    }
                }
            }
        }
    }

    public final void H1(String prompt, String taskTag, GameObject gameObject, File objFile, File textureFile, File normalTexture, File metallicTexture, File roughnessTexture) {
        N7.c.j0(new i(objFile, prompt, gameObject, normalTexture, metallicTexture, roughnessTexture, textureFile));
    }

    public final void I1(String prompt, String taskTag) {
        Vector3 m1249clone = Cursor3D.f71511K.m1249clone();
        GizmoObject gizmoObject = new GizmoObject();
        gizmoObject.setVertex(Vertex.B1("Editor/AI/Models/Gift/gift.obj", null).x2());
        gizmoObject.setColor(new Color());
        gizmoObject.setScale(0.6f);
        gizmoObject.setTexture(C16165b.u("@@ASSET@@/Editor/AI/Models/Gift/gift_texture.jpg").p0());
        com.itsmagic.engine.Activities.Editor.Panels.AI.d dVar = new com.itsmagic.engine.Activities.Editor.Panels.AI.d(new ColorINT(15, 188, 249), new ColorINT(), 0.75f, 0.03f);
        GameObject gameObject = new GameObject();
        gameObject.r(new AnonymousClass5("", gizmoObject, dVar, taskTag, prompt));
        gameObject.transform.p3(m1249clone);
        K8.a.h(5, new h(gameObject));
        K8.a.L(gameObject);
    }

    @Override
    public void n1() {
        super.n1();
        if (C15169a.q()) {
            this.f71067X.J1(1.0f);
            N7.c.D().u(this);
        } else {
            this.f71067X.J1(this.f71068Y);
            N7.c.D().s0(this);
        }
    }

    public final List<C5.b> z1() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(F5.c.i(Lang.l(Lang.T.ART_STYLE), l.class, this.f71070a0, new a()));
        linkedList.add(new C5.b(new b(), "Poly count", b.a.SLIntSlider, 3000.0f, 30000.0f, 1.0f));
        return linkedList;
    }

    public AIGeneratorPanel(float wantedHeight, AIModel model) {
        super(null, "3D AI Generator");
        this.f71070a0 = l.Realistic;
        this.f71071b0 = 30000;
        super.e1(false);
        this.f71068Y = wantedHeight;
        this.f71072c0 = model;
        if (model != null) {
            try {
                this.f71070a0 = l.valueOf(model.a());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f71071b0 = model.b();
        }
    }
}
