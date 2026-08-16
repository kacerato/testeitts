.class public Lj5/b;
.super Lf5/d;
.source "SourceFile"


# instance fields
.field public final g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public h:Z

.field public i:F

.field public j:Ld4/a;

.field public k:LM7/c;

.field public l:LG4/c;

.field public m:LG4/c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-direct {p0}, Lf5/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj5/b;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lj5/b;->i:F

    iput-object p1, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    return-void
.end method

.method public static synthetic H(Lj5/b;Ld4/a;)Ld4/a;
    .locals 0

    iput-object p1, p0, Lj5/b;->j:Ld4/a;

    return-object p1
.end method

.method public static synthetic I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;
    .locals 0

    iget-object p0, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    return-object p0
.end method

.method public static synthetic J(Lj5/b;)LG4/c;
    .locals 0

    iget-object p0, p0, Lj5/b;->l:LG4/c;

    return-object p0
.end method

.method public static synthetic K(Lj5/b;LG4/c;)LG4/c;
    .locals 0

    iput-object p1, p0, Lj5/b;->l:LG4/c;

    return-object p1
.end method

.method public static synthetic L(Lj5/b;)V
    .locals 0

    invoke-direct {p0}, Lj5/b;->N()V

    return-void
.end method

.method public static synthetic M(Lj5/b;)LM7/c;
    .locals 0

    iget-object p0, p0, Lj5/b;->k:LM7/c;

    return-object p0
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Lj5/b;->j:Ld4/a;

    if-nez v0, :cond_0

    new-instance v0, Ld4/a;

    iget-object v1, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    new-instance v2, Lj5/b$h;

    invoke-direct {v2, p0}, Lj5/b$h;-><init>(Lj5/b;)V

    invoke-direct {v0, v1, v2}, Ld4/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LP4/a;)V

    iput-object v0, p0, Lj5/b;->j:Ld4/a;

    :cond_0
    iget-object v0, p0, Lj5/b;->j:Ld4/a;

    iget-object v1, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput-object v1, v0, Ld4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    iget-object v1, p0, Lj5/b;->j:Ld4/a;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lj5/b;->j:Ld4/a;

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lj5/b;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj5/b;->i:F

    invoke-static {}, LK8/d;->e()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lj5/b;->i:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lj5/b;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj5/b;->h:Z

    :cond_0
    iget-boolean v0, p0, Lj5/b;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lj5/b;->N()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj5/b;->j:Ld4/a;

    if-eqz v0, :cond_2

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    iget-object v1, p0, Lj5/b;->j:Ld4/a;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    iput-object v0, p0, Lj5/b;->j:Ld4/a;

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

    const-string v0, "Terrain Editor"

    return-object v0
.end method

.method public n(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 16
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p3}, Lf5/d;->n(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance v2, LM7/o;

    new-instance v3, Lj5/b$o;

    invoke-direct {v3, v0}, Lj5/b$o;-><init>(Lj5/b;)V

    sget-object v4, LM7/c$b;->Disconnected:LM7/c$b;

    const v5, 0x7f070247

    invoke-direct {v2, v5, v3, v4, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v3, Lf5/d;->b:LAc/b;

    invoke-virtual {v2, v3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v4

    sget-object v5, Lf5/d;->c:LAc/b;

    invoke-virtual {v4, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060232

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v6}, LM7/c;->m0(I)LM7/c;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060231

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v6}, LM7/c;->Y(I)LM7/c;

    new-instance v4, LM7/o;

    new-instance v6, Lj5/b$p;

    invoke-direct {v6, v0}, Lj5/b$p;-><init>(Lj5/b;)V

    sget-object v9, LM7/c$b;->Left:LM7/c$b;

    const v10, 0x7f07017d

    invoke-direct {v4, v10, v6, v9, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v4, v3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v6

    invoke-virtual {v6, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v6, v10}, LM7/c;->m0(I)LM7/c;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v6, v10}, LM7/c;->Y(I)LM7/c;

    new-instance v6, LM7/o;

    new-instance v10, Lj5/b$a;

    invoke-direct {v10, v0}, Lj5/b$a;-><init>(Lj5/b;)V

    sget-object v11, LM7/c$b;->Middle:LM7/c$b;

    const v12, 0x7f07023b

    invoke-direct {v6, v12, v10, v11, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v6, v3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v10

    invoke-virtual {v10, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v10, v12}, LM7/c;->m0(I)LM7/c;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v10, v12}, LM7/c;->Y(I)LM7/c;

    new-instance v10, LM7/o;

    new-instance v12, Lj5/b$b;

    invoke-direct {v12, v0}, Lj5/b$b;-><init>(Lj5/b;)V

    const v13, 0x7f070237

    invoke-direct {v10, v13, v12, v11, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v10, v3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v12

    invoke-virtual {v12, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v12, v13}, LM7/c;->m0(I)LM7/c;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v12, v13}, LM7/c;->Y(I)LM7/c;

    new-instance v12, LM7/o;

    new-instance v13, Lj5/b$c;

    invoke-direct {v13, v0}, Lj5/b$c;-><init>(Lj5/b;)V

    const v14, 0x7f07023a

    invoke-direct {v12, v14, v13, v11, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v12, v3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v11

    invoke-virtual {v11, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v11, v13}, LM7/c;->m0(I)LM7/c;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v11, v13}, LM7/c;->Y(I)LM7/c;

    new-instance v11, LM7/o;

    new-instance v13, Lj5/b$d;

    invoke-direct {v13, v0}, Lj5/b$d;-><init>(Lj5/b;)V

    sget-object v14, LM7/c$b;->Right:LM7/c$b;

    const v15, 0x7f070238

    invoke-direct {v11, v15, v13, v14, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v11, v3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v13

    invoke-virtual {v13, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v13, v15}, LM7/c;->m0(I)LM7/c;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v13, v15}, LM7/c;->Y(I)LM7/c;

    new-instance v13, LM7/o;

    new-instance v15, Lj5/b$e;

    invoke-direct {v15, v0}, Lj5/b$e;-><init>(Lj5/b;)V

    const v8, 0x7f0701f8

    invoke-direct {v13, v8, v15, v9, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v13, v3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v8

    invoke-virtual {v8, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, LM7/c;->m0(I)LM7/c;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f060231

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, LM7/c;->Y(I)LM7/c;

    new-instance v8, LM7/o;

    new-instance v9, Lj5/b$f;

    invoke-direct {v9, v0}, Lj5/b$f;-><init>(Lj5/b;)V

    const v15, 0x7f070239

    invoke-direct {v8, v15, v9, v14, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v8, v3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual {v3, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, LM7/c;->m0(I)LM7/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060231

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, LM7/c;->Y(I)LM7/c;

    new-instance v3, LM7/p;

    invoke-direct {v3, v1}, LM7/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, LM7/p;->s(LM7/g;)LM7/p;

    new-instance v2, LM7/k;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5, v1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v7

    invoke-direct {v2, v7}, LM7/k;-><init>(I)V

    invoke-virtual {v3, v2}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v3, v4}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v3, v6}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v3, v10}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v3, v12}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v3, v11}, LM7/p;->s(LM7/g;)LM7/p;

    new-instance v2, LM7/k;

    invoke-static {v5, v1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v2, v1}, LM7/k;-><init>(I)V

    invoke-virtual {v3, v2}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v3, v13}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v3, v8}, LM7/p;->s(LM7/g;)LM7/p;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, LM7/p;->B(LM7/o;)V

    iget-object v1, v0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->K:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    sget-object v2, Lj5/b$g;->a:[I

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v6, 0x4

    if-eq v1, v5, :cond_2

    const/4 v5, 0x5

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lj5/b;->k:LM7/c;

    invoke-virtual {v1, v2}, LM7/g;->o(Z)V

    const/4 v1, 0x6

    invoke-virtual {v3, v1}, LM7/p;->y(I)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lj5/b;->k:LM7/c;

    invoke-virtual {v1, v4}, LM7/g;->o(Z)V

    invoke-virtual {v3, v5}, LM7/p;->y(I)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lj5/b;->k:LM7/c;

    invoke-virtual {v1, v4}, LM7/g;->o(Z)V

    invoke-virtual {v3, v6}, LM7/p;->y(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lj5/b;->k:LM7/c;

    invoke-virtual {v1, v4}, LM7/g;->o(Z)V

    iget-object v1, v0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->L:Z

    if-nez v1, :cond_4

    invoke-virtual {v3, v6}, LM7/p;->y(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v5}, LM7/p;->y(I)V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lj5/b;->k:LM7/c;

    invoke-virtual {v1, v4}, LM7/g;->o(Z)V

    invoke-virtual {v3, v2}, LM7/p;->y(I)V

    :goto_0
    move-object/from16 v1, p1

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lj5/b;->k:LM7/c;

    invoke-virtual {v1, v4}, LM7/g;->o(Z)V

    invoke-virtual {v3, v4}, LM7/p;->y(I)V

    goto :goto_0

    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 8
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

    new-instance v0, LM7/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, LM7/k;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v1, Lj5/b$j;

    invoke-direct {v1, p0}, Lj5/b$j;-><init>(Lj5/b;)V

    sget-object v2, LM7/c$b;->Top:LM7/c$b;

    const v3, 0x7f07009d

    invoke-direct {v0, v3, v1, v2, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, Lf5/d;->b:LAc/b;

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    sget-object v2, Lf5/d;->c:LAc/b;

    invoke-virtual {v0, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v3, Lj5/b$k;

    invoke-direct {v3, p0}, Lj5/b$k;-><init>(Lj5/b;)V

    sget-object v6, LM7/c$b;->Middle:LM7/c$b;

    const v7, 0x7f0700a0

    invoke-direct {v0, v7, v3, v6, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v3, Lj5/b$l;

    invoke-direct {v3, p0}, Lj5/b$l;-><init>(Lj5/b;)V

    sget-object v6, LM7/c$b;->Bottom:LM7/c$b;

    const v7, 0x7f07009e

    invoke-direct {v0, v7, v3, v6, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;->ProceduralPaint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    if-ne v3, v6, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getProceduralPaint()Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->l(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->N:Le4/d;

    invoke-static {v0}, Le4/b;->a(Le4/d;)Le4/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0, p1, p2, p3, v3}, Le4/a;->d(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_1
    :goto_0
    new-instance p3, LM7/c;

    new-instance v0, Lj5/b$m;

    invoke-direct {v0, p0}, Lj5/b$m;-><init>(Lj5/b;)V

    sget-object v3, LM7/c$b;->Disconnected:LM7/c$b;

    const v6, 0x7f0701d7

    invoke-direct {p3, v6, v0, v3, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

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

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    iput-object p3, p0, Lj5/b;->k:LM7/c;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lj5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;->Level:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    if-ne p3, v0, :cond_2

    new-instance p3, LM7/c;

    new-instance v0, Lj5/b$n;

    invoke-direct {v0, p0}, Lj5/b$n;-><init>(Lj5/b;)V

    const v6, 0x7f070238

    invoke-direct {p3, v6, v0, v3, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

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

    :cond_2
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
    .locals 2
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

    move-result v0

    invoke-direct {p3, v0}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v0, Lj5/b$i;

    invoke-direct {v0, p0}, Lj5/b$i;-><init>(Lj5/b;)V

    const v1, 0x7f0700ac

    invoke-direct {p3, v1, v0, p2}, LM7/c;-><init>(ILM7/d;Landroid/content/Context;)V

    sget-object v0, Lf5/d;->b:LAc/b;

    invoke-virtual {p3, v0}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    sget-object v0, Lf5/d;->c:LAc/b;

    invoke-virtual {p3, v0}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060231

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, LM7/c;->Y(I)LM7/c;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    iget-object p1, p0, Lj5/b;->j:Ld4/a;

    if-eqz p1, :cond_1

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p1

    iget-object p2, p0, Lj5/b;->j:Ld4/a;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    :cond_0
    iput-object v0, p0, Lj5/b;->j:Ld4/a;

    :cond_1
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
