.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;
    }
.end annotation


# static fields
.field public static final d0:Ljava/lang/String; = "AIGeneratorPanel"

.field public static final e0:I

.field public static final f0:I


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final Y:F

.field public Z:Lcom/google/android/material/textfield/TextInputEditText;

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

.field public b0:I

.field public c0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedHeight"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    const-string v1, "3D AI Generator"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;->Realistic:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    const/16 v0, 0x7530

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->b0:I

    const/4 v0, 0x0

    .line 4
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->Y:F

    return-void
.end method

.method public constructor <init>(FLcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wantedHeight",
            "model"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    const-string v1, "3D AI Generator"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;->Realistic:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    const/16 v0, 0x7530

    .line 8
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->b0:I

    const/4 v0, 0x0

    .line 9
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    .line 10
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->Y:F

    .line 11
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->c0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    if-eqz p2, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->b()I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->b0:I

    :cond_0
    return-void
.end method

.method public static B1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "gameObject"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$j;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$j;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$k;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static D1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3

    const/16 v0, 0x12c

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0xf0

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;-><init>(F)V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    iput-object v0, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-object v0
.end method

.method public static E1(Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/16 v0, 0x12c

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0xf0

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;-><init>(F)V

    invoke-static {p0, v2, p1, v0, v1}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    iput-object p0, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    const/16 v0, 0x12c

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0xf0

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-direct {v2, v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;-><init>(FLcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;)V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    iput-object p0, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-object p0
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->A1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->Z:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->C1(I)V

    return-void
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->I1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->H1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic u1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->B1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;)Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    return-object p1
.end method

.method public static synthetic w1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->b0:I

    return p0
.end method

.method public static synthetic x1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->b0:I

    return p1
.end method

.method public static synthetic y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->G1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method


# virtual methods
.method public final A1()Ljava/lang/String;
    .locals 45

    const-string v43, "GT3 race car , 4k, 8k resolution"

    const-string v44, "old car black color"

    const-string v0, "Hard Edge Steampunk House Facade Wood, Stone, pipes, Highly Detailed, Game Assets Square"

    const-string v1, "A highly detail clay model of a Mayan temple, pyramid style with hundreds of steps going up to the top on one side of the temple, at the top there is an altar for sacrificing to the gods, make it have a crumbling, decaying look as if its thousands of years old, #clay#"

    const-string v2, "a huge dwarf beer barrel, made of aged oiled wood, richly decorated with small runes, iron fittings, in the style of warhammer fantasy"

    const-string v3, "Create a detailed stone wall made of large, aged stone blocks with visible cracks and wear. The wall features intricate Inca carvings, including spirals and animal figures. The stone is dark gray with patches of moss and lichen for an aged, realistic appearance."

    const-string v4, "Ancient Egyptian style sofa with turquoise cushions"

    const-string v5, "Walkable temple to a cruel god, junglecore, aztec, khmer, hindu, realistic architecture, made of stone, covered in moss, grisly details. Open indoor section."

    const-string v6, "#clay#, The object features a humanoid figure with a hooded cloak, skeletal face, and jagged, claw-like hands, surrounded by sharp, fragmented elements, conveying a menacing, chaotic texture."

    const-string v7, "A simple village vegetable stall.  Clean lines.  Natural colors. Carved detail. Chunky. Well-lit.  Dungeons & Dragons. DND. High-resolution. Ultra realistic."

    const-string v8, "A simple village butcher shop.  Clean lines.  Natural colors. Carved detail. Chunky. Well-lit.  Dungeons & Dragons. DND. High-resolution. Ultra realistic."

    const-string v9, "anthropomorphic EVIL MUSHROOM, OPEN MOUTH SHARO TEETH #bioluminescent#"

    const-string v10, "Create a very high-quality, high-resolution, ultra-detailed 3D model of an ancient Inca furnace carved from stone, with the fire chamber positioned at waist height, ideal for interaction. Include intricate, symbolic engravings and geometric motifs. Add aged metallic accents with subtle patina and decorative elements. Ensure realistic texturing, with a raised hearth for placing metals, and highlight with strategic lighting for maximum detail., #clay#"

    const-string v11, "A simple village bakery.  Clean lines.  Natural colors. Carved detail. Chunky. Well-lit.  Dungeons & Dragons. DND. High-resolution. Ultra realistic."

    const-string v12, "A tree stump with a fairy door in its side. Enchanting.  Fairytale-like.  Deeply carved textures. Natural realistic colors. Carved detail. Chunky. Well-lit.  Dungeons & Dragons. DND. High-resolution. Ultra realistic."

    const-string v13, "#bioluminescent#, highly detailed, ultra-realistic 3D model of a rustic, rectangular wooden market stall in isometric view. Include aged, textured wood planks, hanging goods (leather/spices/pottery/metalwork/jewelry), baskets with grains, fruits, and vegetables. Add lifelike textures on all materials to capture weathered wood, fabric, and metal. Evoke ancient village aesthetics, resembling Age of Empires and Clash of Clans styles, with semantic recognition for intricate textures and design"

    const-string v14, "A snowy village clock tower.  Deeply carved details.  Ultra realistic.  Highly stylized.  Highly textured.  Cute.  Carved.  Clean lines.  Dungeons & Dragons."

    const-string v15, "#bioluminescent#, high-resolution 3D model of an aged,  tall, narrow stone house with a steep gabled roof. Features include intricate old stonework, arched wooden door, rustic wooden elements, and arched windows. The design should blend storybook style with elven and Rivendell architecture.Detailed polygonal mesh, capturing weathered, rough stone textures, realistic colors, and a mix of fantasy and craftsman aesthetics. Include elements like vines and a barrel for added 4k realism."

    const-string v16, "High-res 3D model of a stone archway with a semi-circular top and rough, weathered texture. Supported by rectangular columns, with a wooden door framed by irregular stones and stone steps. Capture rugged stone, aged wood grain, and realistic shading. Style in medieval South African Brom Workshop horror with eerie, demonic realism."

    const-string v17, "an old tv on an old tv wooden stand, texture shoukd be mostly wooden and vintage besides the front screen"

    const-string v18, "Create an orange Bioluminescent Xenomorph with red Bioluminescent eyes and sharp teeth, large full body and from the front he stands straight legs in t-pose arms spread palms down and without arms on a solid green background, Artistic style :stylized, Realistic, high resolution, best quality, 4k,UE5, #bioluminescent#"

    const-string v19, "COOKIE, Ultra Realistic, Highly Detailed,"

    const-string v20, "a vintage heavy anvil on round wood base medevil"

    const-string v21, "microphone , Ultra realistic, high resolution, clear, highly detailed realistic, #realistic#"

    const-string v22, "Massive Vertical Block of Ice that is translucent, heavily detailed, ultra realistic, ice age, a massive block of ice.  Frosty and heavily frozen #bioluminescent#"

    const-string v23, "A biofluorescent flower with a star-shaped blossom and scythe-like long leaves. The flowers grow in clusters of four on the long stems, #bioluminescent#"

    const-string v24, "The object is the big spring forest cliff, highly detailed, photoscan, cliff, angular green blue and red alien desert rocks with large cracks and a rough texture and a predominantly black-asteroid color that are covered by yellow crystals, game assets, ultra realistic. asteroid granite rocks"

    const-string v25, "The object is the big spring forest cliff, highly detailed, photoscan, cliff, angular rocks with large cracks and a rough texture and a predominantly stone-gray color that are covered by moss, game assets,ultra realistic"

    const-string v26, "An old crumbling well made of stone, with a roof and bucket, fantasy 3D game asset.  with human skulls."

    const-string v27, "Ancient stone deer skull temple with ancient sci-fi runic carving, covered with moss and twisting vines."

    const-string v28, "medieval Tower with banners at some sides,  style of clash royale very high detail"

    const-string v29, "#bioluminescent#, high-resolution 3D model of a tall, narrow stone house with a steep gabled roof. Features include intricate old stonework with uneven textures, arched wooden door, rustic wooden elements, and arched windows. The design should blend storybook style with elven and Rivendell architecture.Detailed polygonal mesh, capturing weathered, rough stone textures, realistic colors, and a mix of fantasy and craftsman aesthetics. Include elements like vines and a barrel for added 4k realism."

    const-string v30, "a typrical english georgian style house with windows accurate and realistic architectural details and roof"

    const-string v31, "ancient rock pillars , with weird ancient signs"

    const-string v32, "an ada 4x4 suv rusty car from russia, The image shows a vintage car with a rusted exterior, particularly noticeable on the hood and body. The car has a boxy shape, typical of older models, and features a prominent front grille with a logo in the center. The headlights are round and appear to be in good condition. The vehicle has four wheels, and the tires are covered in mud, suggesting it may have been off-road or in a muddy area. The car\'s windows are tinted, and the side mirrors are intact."

    const-string v33, "retro pick-up, #anthropomorphic# car"

    const-string v34, "Game Assets, Highly Detailed, Ultra Realistic, The object is a glossy, dark-colored 80s sports car with a boxy, angular shape, featuring sharp lines and a smooth surface texture."

    const-string v35, "Create a detailed 3D model of a sleek, modern sports car. The design should feature a low profile, aerodynamic shape, and aggressive styling. Include elements such as a streamlined body, large alloy wheels, and an eye-catching front grille. The car should have a vibrant color scheme, with reflections and highlights to emphasize its shiny surface. Make sure to model the interior as well, showcasing sporty seats, a high-tech dashboard, and a steering wheel with racing-inspired elements.\""

    const-string v36, "An attractive and sporty Lamborghini car with a beautiful design"

    const-string v37, "A meticulously detailed 2024 electric sports car, inspired by the latest Tesla Roadster. The vehicle features a sleek, aerodynamic design with a glossy midnight blue finish. Its body showcases sharp lines and a low profile, emphasizing speed and elegance. The car is equipped with 21-inch alloy wheels and low-profile tires. The model is designed in a hyper-realistic PBR style, capturing intricate details such as reflections, shadows, and material textures.\""

    const-string v38, "New gen hatchback car"

    const-string v39, "Create a realistic, high-resolution 3D render of a classic red 1990s Honda NSX sports car. The car should have a sleek, aerodynamic design with sharp lines, a low stance, and detailed headlights. Capture the car\'s distinctive features, including its bold red color, iconic side air intakes, and stylish wheels. The lighting should highlight the car\'s glossy finish and emphasize its curves and contours"

    const-string v40, "The 1969 Ford Mustang is a classic American muscle car with an aggressive and powerful design. It features a large chrome grille with the iconic Mustang logo and triple vertical taillights at the rear. With a long hood and wide body, it houses a robust V8 engine, offering a sporty and iconic driving experience."

    const-string v41, "Super realistic chibi car, painted red, big chrome engine, flames on the doors, transparent windows, bigger rear tires."

    const-string v42, "A cool racing car with red paint and silver rims"

    filled-new-array/range {v0 .. v44}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2c

    invoke-static {v1, v2}, LNc/d;->j(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0901f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "Show example"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->Z:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->Z:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "Steampunk House"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->c0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->Z:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->z1()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->G1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-object v0
.end method

.method public final C1(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currency"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->Z:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;->b()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->b0:I

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;

    invoke-direct {v7, p0, v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Lq7/a;Ljava/lang/String;)V

    const-string v3, ""

    move v6, p1

    invoke-static/range {v2 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/itsmagic/engine/Activities/Editor/Utils/q$a$o;)V

    return-void
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    return-void
.end method

.method public final G1(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, LC5/b;

    iget-object v2, v5, LC5/b;->n:LC5/b$a;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v2, v5, v0, v3}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_1

    :cond_0
    sget-object v3, LC5/b$a;->Component:LC5/b$a;

    if-ne v2, v3, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;

    invoke-direct {v8, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final H1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prompt",
            "taskTag",
            "gameObject",
            "objFile",
            "textureFile",
            "normalTexture",
            "metallicTexture",
            "roughnessTexture"
        }
    .end annotation

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    invoke-static {v9}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prompt",
            "taskTag"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    new-instance v4, LJAVARuntime/GizmoObject;

    invoke-direct {v4}, LJAVARuntime/GizmoObject;-><init>()V

    const-string v1, "Editor/AI/Models/Gift/gift.obj"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B1(Ljava/lang/String;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-virtual {v4, v1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    new-instance v1, LJAVARuntime/Color;

    invoke-direct {v1}, LJAVARuntime/Color;-><init>()V

    invoke-virtual {v4, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    const-string v1, "@@ASSET@@/Editor/AI/Models/Gift/gift_texture.jpg"

    invoke-static {v1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v1

    invoke-virtual {v1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v1

    invoke-virtual {v4, v1}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xbc

    const/16 v3, 0xf9

    const/16 v6, 0xf

    invoke-direct {v1, v6, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/high16 v3, 0x3f400000    # 0.75f

    const v6, 0x3cf5c28f    # 0.03f

    invoke-direct {v5, v1, v2, v3, v6}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FF)V

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>()V

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    const-string v3, ""

    move-object v1, v9

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Ljava/lang/String;LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$h;

    invoke-direct {p1, p0, v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 p2, 0x5

    invoke-static {p2, p1}, LK8/a;->h(ILjava/lang/Runnable;)V

    invoke-static {v8}, LK8/a;->L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    invoke-static {}, Lrc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->J1(F)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->Y:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->J1(F)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final z1()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ART_STYLE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)V

    const-class v4, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$l;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)V

    sget-object v5, LC5/b$a;->SLIntSlider:LC5/b$a;

    const v7, 0x46ea6000    # 30000.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const-string v4, "Poly count"

    const v6, 0x453b8000    # 3000.0f

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
