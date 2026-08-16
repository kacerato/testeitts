.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;
    }
.end annotation


# static fields
.field public static final n:Z = false

.field public static final o:F = 0.45f

.field public static final p:F = 0.8f

.field public static final q:F = 0.95f

.field public static final r:F = 0.95f

.field public static final s:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lorg/ITsMagic/Atlas/BakeOptions;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LUg/k;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

.field public e:Ljava/lang/String;

.field public f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public g:Ljava/util/concurrent/CountDownLatch;

.field public h:Z

.field public i:Ljava/io/File;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;",
            ">;"
        }
    .end annotation
.end field

.field public m:F


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v11, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v1, "albedo"

    const-string v2, "albedo"

    const-string v3, "BakeAtlas"

    const-string v4, "albedo"

    const-string v5, "albedoTilling"

    const-string v6, "albedoOffset"

    const-string v7, "albedo"

    const-string v8, "albedo"

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v13, "normal map"

    const-string v14, "normalmap"

    const-string v15, "BakeNormalMap"

    const-string v16, "normal"

    const-string v17, "normalTilling"

    const-string v18, "normalOffset"

    const-string v19, "normal"

    const-string v20, "normalMap"

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v24, "roughness"

    const-string v25, "roughness"

    const-string v26, "BakeRoughnessMap"

    const-string v27, "roughness"

    const-string v28, "roughnessTilling"

    const-string v29, "roughnessOffset"

    const-string v30, "roughness"

    const-string v31, "roughnessMap"

    move-object/from16 v23, v1

    invoke-direct/range {v23 .. v33}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    const-string v13, "ao"

    const-string v14, "ao"

    const-string v15, "BakeAOMap"

    const-string v16, "ao"

    const-string v17, "aoTilling"

    const-string v18, "aoOffset"

    const-string v19, "ao"

    const-string v20, "aoMap"

    move-object v12, v2

    invoke-direct/range {v12 .. v22}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    const/16 v32, 0x1

    const-string v24, "emissive"

    const-string v25, "emissive"

    const-string v26, "BakeEmissive"

    const-string v27, "emissive"

    const-string v28, "emissiveTilling"

    const-string v29, "emissiveOffset"

    const-string v30, "emissive"

    const-string v31, "emissive"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v33}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    filled-new-array {v11, v0, v1, v2, v3}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->s:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/ITsMagic/Atlas/BakeOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "options"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "Bake"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->e:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->g:Ljava/util/concurrent/CountDownLatch;

    .line 14
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->h:Z

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->j:Ljava/util/List;

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->k:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->m:F

    .line 19
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bake"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/ITsMagic/Atlas/BakeOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objects",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Lorg/ITsMagic/Atlas/BakeOptions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Bake"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->e:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->g:Ljava/util/concurrent/CountDownLatch;

    .line 4
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->h:Z

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->j:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->k:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->m:F

    .line 9
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a:Ljava/util/List;

    .line 10
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;IIFLjava/lang/String;FF)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->h(IIFLjava/lang/String;FF)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    return-object p0
.end method

.method public static e(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method

.method public static o(IIF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "executed",
            "total",
            "progress"
        }
    .end annotation

    if-lez p1, :cond_0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float p2, p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p2, p0

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->e(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(Lorg/ITsMagic/Atlas/XAtlas;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "atlas",
            "object"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v4, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/16 v5, 0x10

    new-array v5, v5, [F

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    move-result-object v4

    invoke-virtual {p1, v3, v2, v4}, Lorg/ITsMagic/Atlas/XAtlas;->addInputMesh(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Material/Material;[F)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->j:Ljava/util/List;

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->k:Ljava/util/List;

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->l:Ljava/util/List;

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->c(Lorg/ITsMagic/Atlas/XAtlas;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Lorg/ITsMagic/Atlas/XAtlas;LUg/k;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ILorg/ITsMagic/Atlas/c;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;FFLjava/lang/Runnable;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "aec",
            "atlas",
            "buildedAtlas",
            "vertex",
            "currentAtlasIndex",
            "atlasDrawer",
            "channel",
            "drawStart",
            "drawEnd",
            "asyncFinished"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v4, p7

    move/from16 v0, p9

    iget-object v1, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " atlas texture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    new-instance v6, Lub/n;

    invoke-virtual/range {p2 .. p2}, Lorg/ITsMagic/Atlas/XAtlas;->getEffectiveResolution()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lorg/ITsMagic/Atlas/XAtlas;->getEffectiveResolution()I

    move-result v2

    invoke-direct {v6, v1, v2}, Lub/n;-><init>(II)V

    invoke-virtual {v6}, Lub/n;->apply()V

    invoke-virtual/range {p3 .. p3}, LUg/k;->c()Ljava/util/List;

    move-result-object v12

    iget-object v1, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget v1, v1, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    div-int/lit8 v13, v1, 0x2

    iget-object v14, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->d:Ljava/lang/String;

    iget-object v15, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->e:Ljava/lang/String;

    iget-object v1, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->f:Ljava/lang/String;

    iget-boolean v2, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->j:Z

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;

    move/from16 v7, p8

    invoke-direct {v5, v8, v7, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;FF)V

    move-object/from16 v9, p6

    move-object v10, v6

    move-object/from16 v11, p4

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v5

    invoke-virtual/range {v9 .. v18}, Lorg/ITsMagic/Atlas/c;->e(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/ITsMagic/Atlas/c$b;)V

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exporting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v8, v4, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Lub/n;Ljava/lang/Runnable;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-object v9

    :cond_2
    :goto_1
    if-eqz p10, :cond_3

    invoke-interface/range {p10 .. p10}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-object v1
.end method

.method public final f(FLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "tda"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->g(FLjava/lang/String;II)V

    return-void
.end method

.method public final g(FLjava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "tda",
            "executed",
            "total"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->e(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->m:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->m:F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->a(IIFLjava/lang/String;)V

    return-void
.end method

.method public final h(IIFLjava/lang/String;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executed",
            "total",
            "progress",
            "tda",
            "start",
            "end"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->o(IIF)F

    move-result p3

    sub-float/2addr p6, p5

    mul-float/2addr p6, p3

    add-float/2addr p5, p6

    invoke-virtual {p0, p5, p4, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->g(FLjava/lang/String;II)V

    return-void
.end method

.method public final i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "entryName",
            "file"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Texture"

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->B()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->o(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;ZLcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;)V
    .locals 59
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aec",
            "allowRecursiveSizeReduction",
            "listener"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    iput-object v13, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v14, 0x1

    invoke-direct {v0, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->g:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->m:F

    new-instance v11, Lorg/ITsMagic/Atlas/XAtlas;

    invoke-direct {v11}, Lorg/ITsMagic/Atlas/XAtlas;-><init>()V

    const-string v1, "Computing charts"

    invoke-interface {v13, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    const-string v10, ""

    invoke-virtual {v12, v0, v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    invoke-virtual {v12, v11, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->c(Lorg/ITsMagic/Atlas/XAtlas;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget v1, v0, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartArea:F

    iget v2, v0, Lorg/ITsMagic/Atlas/BakeOptions;->maxBoundaryLength:F

    iget v3, v0, Lorg/ITsMagic/Atlas/BakeOptions;->normalDeviationWeight:F

    iget v4, v0, Lorg/ITsMagic/Atlas/BakeOptions;->roundnessWeight:F

    iget v5, v0, Lorg/ITsMagic/Atlas/BakeOptions;->straightnessWeight:F

    iget v6, v0, Lorg/ITsMagic/Atlas/BakeOptions;->normalSeamWeight:F

    iget v7, v0, Lorg/ITsMagic/Atlas/BakeOptions;->textureSeamWeight:F

    iget v8, v0, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartSize:I

    iget v15, v0, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    iget v14, v0, Lorg/ITsMagic/Atlas/BakeOptions;->texelsPerUnit:F

    iget-boolean v9, v0, Lorg/ITsMagic/Atlas/BakeOptions;->bilinear:Z

    iget-boolean v0, v0, Lorg/ITsMagic/Atlas/BakeOptions;->blockAlign:Z

    move-object/from16 v32, v10

    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$a;

    invoke-direct {v10, v12, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;)V

    const/16 v16, -0x1

    move/from16 v25, v15

    move-object v15, v11

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v26, v14

    move/from16 v27, v9

    move/from16 v28, v0

    move/from16 v29, p2

    move-object/from16 v30, v10

    invoke-virtual/range {v15 .. v30}, Lorg/ITsMagic/Atlas/XAtlas;->generate(IFFFFFFFIIFZZZLorg/ITsMagic/Atlas/XAtlas$a;)V

    const v14, 0x3ee66666    # 0.45f

    move-object/from16 v10, v32

    invoke-virtual {v12, v14, v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    invoke-virtual {v11}, Lorg/ITsMagic/Atlas/XAtlas;->getBakeDataList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->c:Ljava/util/List;

    iget-boolean v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_17

    :cond_2
    const/4 v9, 0x0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v15, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v15}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget-boolean v0, v0, Lorg/ITsMagic/Atlas/BakeOptions;->light:Z

    const v16, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_3

    move/from16 v7, v16

    goto :goto_2

    :cond_3
    const v7, 0x3f733333    # 0.95f

    :goto_2
    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v9

    :goto_3
    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "/Bake/"

    const-string v3, "/"

    if-ge v5, v0, :cond_f

    sub-float v0, v7, v14

    int-to-float v1, v5

    int-to-float v2, v6

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float v17, v1, v14

    add-int/lit8 v1, v5, 0x1

    int-to-float v8, v1

    div-float/2addr v8, v2

    mul-float/2addr v0, v8

    add-float/2addr v0, v14

    sub-float v18, v0, v17

    mul-float v2, v18, v16

    add-float v8, v17, v2

    :try_start_1
    iget-object v2, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUg/k;

    invoke-virtual {v2}, LUg/k;->d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v14

    if-eqz v14, :cond_e

    const-string v9, "Starting atlas generation"

    invoke-interface {v13, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move/from16 v20, v1

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget-boolean v1, v1, Lorg/ITsMagic/Atlas/BakeOptions;->texture:Z

    if-eqz v1, :cond_7

    new-instance v21, Lorg/ITsMagic/Atlas/c;

    invoke-direct/range {v21 .. v21}, Lorg/ITsMagic/Atlas/c;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->s:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    array-length v1, v1

    move-object/from16 v22, v15

    new-array v15, v1, [Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v23, v2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_4

    move-object/from16 v24, v3

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v25, v4

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    aput-object v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto :goto_4

    :cond_4
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_6

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->s:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    aget-object v4, v3, v2

    sub-float v3, v8, v17

    move-object/from16 v26, v4

    int-to-float v4, v2

    move/from16 v27, v5

    int-to-float v5, v1

    div-float/2addr v4, v5

    mul-float/2addr v4, v3

    add-float v28, v17, v4

    add-int/lit8 v4, v2, 0x1

    move/from16 v29, v1

    int-to-float v1, v4

    div-float/2addr v1, v5

    mul-float/2addr v3, v1

    add-float v30, v17, v3

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$b;

    invoke-direct {v5, v12, v15, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;[Ljava/util/concurrent/CountDownLatch;I)V

    move/from16 v3, v29

    move-object/from16 v1, p0

    move-object/from16 v29, v23

    move-object/from16 v2, p1

    move v13, v3

    move-object/from16 v33, v24

    move-object v3, v11

    move/from16 v23, v4

    move-object/from16 v34, v25

    move-object/from16 v4, v29

    move-object/from16 v25, v5

    move/from16 v24, v27

    move-object v5, v14

    move/from16 v27, v6

    move/from16 v6, v24

    move/from16 v35, v7

    move-object/from16 v7, v21

    move-object/from16 p2, v14

    move v14, v8

    move-object/from16 v8, v26

    move-object/from16 v31, v15

    move-object v15, v9

    move/from16 v9, v28

    move/from16 v28, v13

    move-object v13, v10

    move/from16 v10, v30

    move-object/from16 v30, v11

    move-object/from16 v11, v25

    invoke-virtual/range {v1 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Lorg/ITsMagic/Atlas/XAtlas;LUg/k;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ILorg/ITsMagic/Atlas/c;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;FFLjava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v2, v26

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->g:Ljava/lang/String;

    invoke-interface {v15, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v10, v13

    move v8, v14

    move-object v9, v15

    move/from16 v2, v23

    move/from16 v5, v24

    move/from16 v6, v27

    move/from16 v1, v28

    move-object/from16 v23, v29

    move-object/from16 v11, v30

    move-object/from16 v15, v31

    move-object/from16 v24, v33

    move-object/from16 v25, v34

    move/from16 v7, v35

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    goto/16 :goto_5

    :cond_6
    move/from16 v28, v1

    move/from16 v27, v6

    move/from16 v35, v7

    move-object v13, v10

    move-object/from16 v30, v11

    move-object/from16 p2, v14

    move-object/from16 v31, v15

    move-object/from16 v29, v23

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    move/from16 v24, v5

    move v14, v8

    move-object v15, v9

    invoke-virtual {v12, v14, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    invoke-virtual {v12, v0, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    move/from16 v1, v28

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v1, :cond_8

    aget-object v0, v31, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v29, v2

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v35, v7

    move-object v13, v10

    move-object/from16 v30, v11

    move-object/from16 p2, v14

    move-object/from16 v22, v15

    move-object v15, v9

    :cond_8
    const-string v0, "Exporting atlas vertex"

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->i:Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, ".mesh"

    if-eqz v0, :cond_9

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v33

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mesh_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v24

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v34

    goto :goto_8

    :cond_9
    move/from16 v9, v24

    move-object/from16 v4, v33

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->G()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v34

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-static {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->o(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    const v3, 0x3f666666    # 0.9f

    mul-float v18, v18, v3

    add-float v3, v17, v18

    invoke-virtual {v12, v3, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    const-string v5, "Lit/LightMap"

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->f0(Ljava/lang/String;)V

    iget-object v5, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget-boolean v5, v5, Lorg/ITsMagic/Atlas/BakeOptions;->texture:Z

    if-eqz v5, :cond_c

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->s:[Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;

    array-length v7, v5

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_c

    aget-object v10, v5, v8

    iget-object v11, v10, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->g:Ljava/lang/String;

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_a

    :cond_a
    iget-object v14, v10, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->g:Ljava/lang/String;

    invoke-virtual {v3, v14, v11}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v10, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->h:Ljava/lang/String;

    invoke-virtual {v12, v3, v10, v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_c
    iget-object v5, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->i:Ljava/io/File;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "material_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_d
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->F()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    iput-object v2, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g:Z

    invoke-virtual {v12, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->s(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$a;)V

    move-object/from16 v4, v29

    iput-object v4, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->a:LUg/k;

    iput-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object v0, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->c:Ljava/lang/String;

    iget-object v0, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->d:Ljava/lang/String;

    const-string v0, "albedo"

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->e:Ljava/lang/String;

    const-string v0, "normal"

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->f:Ljava/lang/String;

    const-string v0, "emissive"

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->g:Ljava/lang/String;

    iput v9, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->h:I

    move-object/from16 v8, v22

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    move/from16 v20, v1

    move/from16 v27, v6

    move/from16 v35, v7

    move-object/from16 v30, v11

    move-object v1, v13

    move-object v8, v15

    move-object v13, v10

    invoke-virtual {v12, v0, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    :goto_c
    move-object v15, v8

    move-object v10, v13

    move/from16 v5, v20

    move/from16 v6, v27

    move-object/from16 v11, v30

    move/from16 v7, v35

    const/4 v9, 0x0

    const v14, 0x3ee66666    # 0.45f

    move-object v13, v1

    goto/16 :goto_3

    :cond_f
    move-object v6, v4

    move v2, v7

    move-object/from16 v30, v11

    move-object v1, v13

    move-object v8, v15

    move-object v4, v3

    move-object v13, v10

    invoke-virtual {v12, v2, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v9, 0x0

    :goto_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_16

    const v3, 0x3f733333    # 0.95f

    sub-float v0, v3, v2

    int-to-float v7, v9

    int-to-float v10, v5

    div-float/2addr v7, v10

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    add-int/lit8 v11, v9, 0x1

    int-to-float v14, v11

    div-float/2addr v14, v10

    mul-float/2addr v0, v14

    add-float v10, v2, v0

    sub-float v0, v10, v7

    mul-float v0, v0, v16

    add-float/2addr v0, v7

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;

    if-eqz v9, :cond_10

    iget-object v14, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->a:LUg/k;

    if-nez v14, :cond_11

    :cond_10
    move/from16 v35, v2

    move/from16 p2, v5

    move/from16 v17, v11

    const/4 v7, 0x0

    goto/16 :goto_12

    :cond_11
    iget-object v14, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget-boolean v14, v14, Lorg/ITsMagic/Atlas/BakeOptions;->light:Z

    if-nez v14, :cond_12

    invoke-virtual {v12, v10, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    move/from16 v35, v2

    move/from16 p2, v5

    move/from16 v17, v11

    const/4 v7, 0x0

    goto/16 :goto_13

    :cond_12
    const-string v14, "Creating light map texture"

    invoke-interface {v1, v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lorg/ITsMagic/Atlas/XAtlas;->getEffectiveResolution()I

    move-result v14

    move-object/from16 v15, p1

    invoke-virtual {v12, v15, v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;I)I

    move-result v14

    new-instance v3, Lub/n;

    invoke-direct {v3, v14, v14}, Lub/n;-><init>(II)V

    invoke-virtual {v3}, Lub/n;->apply()V

    iget-object v14, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->i:Ljava/io/File;

    invoke-virtual {v12, v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->r(Ljava/io/File;)Ljava/io/File;

    move-result-object v57

    new-instance v36, Lorg/ITsMagic/Atlas/LightDrawer;

    invoke-direct/range {v36 .. v36}, Lorg/ITsMagic/Atlas/LightDrawer;-><init>()V

    iget-object v14, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->e:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->m(Ljava/lang/String;)Lub/g;

    move-result-object v38

    iget-object v14, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->f:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->m(Ljava/lang/String;)Lub/g;

    move-result-object v39

    iget-object v14, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->g:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->m(Ljava/lang/String;)Lub/g;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getEffectiveGIQuality()F

    move-result v41

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getBounceGIIterations()I

    move-result v42

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getBounceGIRange()Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    move-result-object v43

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getBounceGIIntensity()F

    move-result v44

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->isBounceGIVisibility()Z

    move-result v45

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->isBakeAmbientOcclusion()Z

    move-result v46

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getAmbientOcclusionRadius()F

    move-result v47

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getAmbientOcclusionIntensity()F

    move-result v48

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getAmbientOcclusionPower()F

    move-result v49

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getAmbientOcclusionQuality()Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    move-result-object v50

    iget-object v14, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->a:LUg/k;

    invoke-virtual {v14}, LUg/k;->c()Ljava/util/List;

    move-result-object v51

    iget-object v14, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->c:Ljava/util/List;

    move/from16 v35, v2

    iget-object v2, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->j:Ljava/util/List;

    move/from16 p2, v5

    iget-object v5, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->k:Ljava/util/List;

    move/from16 v17, v11

    iget-object v11, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->l:Ljava/util/List;

    iget-object v15, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget v15, v15, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    div-int/lit8 v56, v15, 0x2

    new-instance v15, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;

    invoke-direct {v15, v12, v1, v7, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;FF)V

    move-object/from16 v37, v3

    move-object/from16 v52, v14

    move-object/from16 v53, v2

    move-object/from16 v54, v5

    move-object/from16 v55, v11

    move-object/from16 v58, v15

    invoke-virtual/range {v36 .. v58}, Lorg/ITsMagic/Atlas/LightDrawer;->l(Lub/p;Lub/p;Lub/p;Lub/p;FILcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;FZZFFFLcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/io/File;Lorg/ITsMagic/Atlas/LightDrawer$e;)V

    invoke-virtual {v12, v0, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    const-string v0, "Exporting light map texture"

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->i:Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, ".png"

    if-eqz v0, :cond_13

    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/lightmap_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->h:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    move-object v2, v0

    goto :goto_f

    :cond_13
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Bake/lightmap_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->h:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :goto_f
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v0, :cond_15

    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_10

    :catch_2
    move-exception v0

    move-object v7, v0

    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_10
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    const/16 v11, 0x10

    iput v11, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    sget-object v11, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getFilter()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getQuality()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->B0(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->isGenMipmaps()Z

    move-result v11

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->p0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getMipmapLevels()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->w0(I)V

    invoke-static {v3, v5, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->c(Lub/p;Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    invoke-static {v2}, Lyb/b;->i(Ljava/lang/String;)Lub/g;

    move-result-object v0

    invoke-virtual {v0}, Lub/g;->E0()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_11

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    iget-object v0, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v3, "lightMap"

    invoke-virtual {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v12, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->s(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-virtual {v12, v10, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    goto :goto_13

    :goto_12
    invoke-virtual {v12, v10, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    :goto_13
    move/from16 v5, p2

    move/from16 v9, v17

    move/from16 v2, v35

    goto/16 :goto_d

    :cond_16
    move/from16 v35, v2

    const/4 v7, 0x0

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget-boolean v0, v0, Lorg/ITsMagic/Atlas/BakeOptions;->light:Z

    if-eqz v0, :cond_17

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v12, v2, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    goto :goto_14

    :cond_17
    const v2, 0x3f733333    # 0.95f

    :goto_14
    const-string v0, "Spawning objects"

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$i;->b(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->b:Lorg/ITsMagic/Atlas/BakeOptions;

    iget-boolean v0, v0, Lorg/ITsMagic/Atlas/BakeOptions;->light:Z

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_15

    :cond_18
    move/from16 v0, v35

    :goto_15
    invoke-virtual {v12, v0, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    move v9, v7

    :goto_16
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1a

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->c:Ljava/lang/String;

    invoke-static {v2}, LFb/c;->f(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->d:Ljava/lang/String;

    invoke-static {v2}, Lda/h;->f(Ljava/lang/String;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v3, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$h;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v12, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_19
    add-int/lit8 v9, v9, 0x1

    int-to-float v1, v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x1

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float v4, v1, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const-string v5, ""

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move v2, v9

    move v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->h(IIFLjava/lang/String;FF)V

    goto :goto_16

    :cond_1a
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v12, v0, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->f(FLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->j()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_18

    :goto_17
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$d;

    invoke-direct {v1, v12, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;Ljava/lang/Exception;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->j()V

    :goto_18
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "worldMeta",
            "baseName"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Bake/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final m(Ljava/lang/String;)Lub/g;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    new-instance v3, Lub/g;

    invoke-direct {v3, p1, v1, v2}, Lub/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channel",
            "currentAtlasIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->i:Ljava/io/File;

    const-string v1, "/"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Bake/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->g:Ljava/lang/String;

    const-string v2, "albedo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->D()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a$g;->c:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aec",
            "atlasResolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getLightTexelsPerUnit()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getTexelsPerUnit()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v1}, LNc/b;->I(F)F

    move-result p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    :cond_2
    const/high16 p1, 0x3e800000    # 0.25f

    :cond_3
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    int-to-float p2, p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final r(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metaFolder"
        }
    .end annotation

    const-string v0, "tempGI.png"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Bake/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public final s(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->a0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAILED TO SAVE MATERIAL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public t(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableOriginalObjects"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->h:Z

    return-void
.end method

.method public u(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metaFolder"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/a;->i:Ljava/io/File;

    return-void
.end method
