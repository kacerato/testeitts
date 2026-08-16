.class public Lj5/a;
.super Lf5/d;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

.field public final h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public i:Z

.field public j:F

.field public k:LQ4/c;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "terrain"
        }
    .end annotation

    invoke-direct {p0}, Lf5/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj5/a;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lj5/a;->j:F

    iput-object p2, p0, Lj5/a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput-object p1, p0, Lj5/a;->l:Ljava/lang/String;

    return-void
.end method

.method public static synthetic H(Lj5/a;LQ4/c;)LQ4/c;
    .locals 0

    iput-object p1, p0, Lj5/a;->k:LQ4/c;

    return-object p1
.end method

.method public static synthetic I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;
    .locals 0

    iget-object p0, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    return-object p0
.end method

.method public static synthetic J(Lj5/a;)V
    .locals 0

    invoke-direct {p0}, Lj5/a;->L()V

    return-void
.end method

.method private L()V
    .locals 4

    iget-object v0, p0, Lj5/a;->k:LQ4/c;

    if-nez v0, :cond_0

    new-instance v0, LQ4/c;

    iget-object v1, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    iget-object v2, p0, Lj5/a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    new-instance v3, Lj5/a$c;

    invoke-direct {v3, p0}, Lj5/a$c;-><init>(Lj5/a;)V

    invoke-direct {v0, v1, v2, v3}, LQ4/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LP4/a;)V

    iput-object v0, p0, Lj5/a;->k:LQ4/c;

    :cond_0
    iget-object v0, p0, Lj5/a;->k:LQ4/c;

    iget-object v1, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    iput-object v1, v0, LQ4/c;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    iget-object v1, p0, Lj5/a;->k:LQ4/c;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lj5/a;->k:LQ4/c;

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final K()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    iget-object v3, p0, Lj5/a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lj5/a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    iput-object v3, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    goto :goto_1

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    if-nez v2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->H()Ljava/lang/String;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;-><init>()V

    iput-object v3, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    const/high16 v4, 0x43000000    # 128.0f

    iput v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->maxRenderDistance:F

    iget-object v3, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    iput-boolean v1, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->enableMaxRenderDistanceV2:Z

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v4, "Grass - HPOP"

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iget-object v6, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    new-array v7, v1, [Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    aput-object v6, v7, v0

    invoke-direct {v3, v4, v5, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v4, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    iput-object v3, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->I()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    const-string v6, "blendingMode"

    const-string v7, "MASKED"

    invoke-virtual {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o0()V

    const-string v6, "alphaCutout"

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFloat(Ljava/lang/String;F)V

    const-string v6, "albedo"

    const-string v7, "@@ASSET@@Engine/Utils/Grass/texture.png"

    invoke-virtual {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, LX7/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v6, "Model"

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    const-string v8, "@@ASSET@@Engine/Utils/Grass/model.mesh"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v1, [Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    aput-object v7, v1, v0

    invoke-direct {v5, v6, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lj5/a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/World/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lj5/a;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj5/a;->j:F

    invoke-static {}, LK8/d;->e()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lj5/a;->j:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lj5/a;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj5/a;->i:Z

    :cond_0
    iget-boolean v0, p0, Lj5/a;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lj5/a;->K()V

    iget-object v0, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m3:Z

    iget-object v0, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj5/a;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lj5/a;->L()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj5/a;->k:LQ4/c;

    if-eqz v0, :cond_2

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    iget-object v1, p0, Lj5/a;->k:LQ4/c;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    iput-object v0, p0, Lj5/a;->k:LQ4/c;

    :cond_2
    :goto_0
    return-void
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;->T:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj5/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lf5/d;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, LM7/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {p3, v0}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/o;

    new-instance v0, Lj5/a$i;

    invoke-direct {v0, p0}, Lj5/a$i;-><init>(Lj5/a;)V

    sget-object v1, LM7/c$b;->Top:LM7/c$b;

    const v2, 0x7f070247

    invoke-direct {p3, v2, v0, v1, p2}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v0, Lf5/d;->b:LAc/b;

    invoke-virtual {p3, v0}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v1

    sget-object v2, Lf5/d;->c:LAc/b;

    invoke-virtual {v1, v2}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, LM7/c;->Y(I)LM7/c;

    new-instance v1, LM7/o;

    new-instance v3, Lj5/a$j;

    invoke-direct {v3, p0}, Lj5/a$j;-><init>(Lj5/a;)V

    sget-object v6, LM7/c$b;->Middle:LM7/c$b;

    const v7, 0x7f070157

    invoke-direct {v1, v7, v3, v6, p2}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual {v3, v2}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, LM7/c;->m0(I)LM7/c;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, LM7/c;->Y(I)LM7/c;

    new-instance v3, LM7/o;

    new-instance v6, Lj5/a$k;

    invoke-direct {v6, p0}, Lj5/a$k;-><init>(Lj5/a;)V

    sget-object v7, LM7/c$b;->Bottom:LM7/c$b;

    const v8, 0x7f070158

    invoke-direct {v3, v8, v6, v7, p2}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v6

    invoke-virtual {v6, v2}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, LM7/c;->m0(I)LM7/c;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, LM7/c;->Y(I)LM7/c;

    new-instance v6, LM7/p;

    invoke-direct {v6, p2}, LM7/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p3}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v6, v1}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v6, v3}, LM7/p;->s(LM7/g;)LM7/p;

    const/4 p3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, p3, v1}, LM7/p;->C(LM7/o;Z)V

    iget-object p3, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    if-eqz p3, :cond_3

    sget-object v3, Lj5/a$b;->a:[I

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v3, p3

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    const/4 v7, 0x2

    if-eq p3, v7, :cond_1

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v7, v1}, LM7/p;->z(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v3, v1}, LM7/p;->z(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v1, v1}, LM7/p;->z(IZ)V

    :cond_3
    :goto_0
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v1, Lj5/a$a;

    invoke-direct {v1, p0}, Lj5/a$a;-><init>(Lj5/a;)V

    const v3, 0x7f0700ac

    invoke-direct {p3, v3, v1, p2}, LM7/c;-><init>(ILM7/d;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, LM7/c;->Y(I)LM7/c;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public p(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lf5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-static {p1, p2, p3}, Ll5/a;->f(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    return-void
.end method

.method public r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lf5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, LM7/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {p3, v1}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v1, Lj5/a$d;

    invoke-direct {v1, p0}, Lj5/a$d;-><init>(Lj5/a;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    const v3, 0x7f07009d

    invoke-direct {p3, v3, v1, v2, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, Lf5/d;->b:LAc/b;

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    sget-object v2, Lf5/d;->c:LAc/b;

    invoke-virtual {p3, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/k;

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {p3, v3}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v3, Lj5/a$e;

    invoke-direct {v3, p0}, Lj5/a$e;-><init>(Lj5/a;)V

    sget-object v6, LM7/c$b;->Left:LM7/c$b;

    const v7, 0x7f0700a0

    invoke-direct {p3, v7, v3, v6, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v3, Lj5/a$f;

    invoke-direct {v3, p0}, Lj5/a$f;-><init>(Lj5/a;)V

    sget-object v6, LM7/c$b;->Middle:LM7/c$b;

    const v8, 0x7f07009e

    invoke-direct {p3, v8, v3, v6, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v3, Lj5/a$g;

    invoke-direct {v3, p0}, Lj5/a$g;-><init>(Lj5/a;)V

    const v8, 0x7f07009f

    invoke-direct {p3, v8, v3, v6, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v3, Lj5/a$h;

    invoke-direct {v3, p0}, Lj5/a$h;-><init>(Lj5/a;)V

    sget-object v6, LM7/c$b;->Right:LM7/c$b;

    invoke-direct {p3, v7, v3, v6, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v1}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/k;

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p2

    invoke-direct {p3, p2}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "panel3DView"
        }
    .end annotation

    iget-object p1, p0, Lj5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m3:Z

    :cond_0
    iget-object p1, p0, Lj5/a;->k:LQ4/c;

    if-eqz p1, :cond_2

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p1

    iget-object p2, p0, Lj5/a;->k:LQ4/c;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    :cond_1
    iput-object v0, p0, Lj5/a;->k:LQ4/c;

    :cond_2
    return-void
.end method

.method public u(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "panel3DView"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;->Disable:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->S1(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;ZZ)V

    return-void
.end method
