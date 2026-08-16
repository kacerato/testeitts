.class public Lf5/c;
.super Lf5/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/c$o;
    }
.end annotation


# instance fields
.field public final g:Lf5/c$o;


# direct methods
.method public constructor <init>(Lf5/c$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "getObject"
        }
    .end annotation

    invoke-direct {p0}, Lf5/d;-><init>()V

    iput-object p1, p0, Lf5/c;->g:Lf5/c$o;

    return-void
.end method

.method public static synthetic H(Lf5/c;)Lf5/c$o;
    .locals 0

    iget-object p0, p0, Lf5/c;->g:Lf5/c$o;

    return-object p0
.end method

.method public static I(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p0 .. p0}, Lf5/c;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f060231

    const v7, 0x7f060232

    if-eqz v3, :cond_0

    new-instance v3, LM7/o;

    new-instance v8, Lf5/c$h;

    invoke-direct {v8, v2}, Lf5/c$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    const v9, 0x7f070076

    invoke-direct {v3, v9, v8, v2, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v2, Lf5/d;->b:LAc/b;

    invoke-virtual {v3, v2}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v2

    sget-object v8, Lf5/d;->c:LAc/b;

    invoke-virtual {v2, v8}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v2, v7}, LM7/c;->m0(I)LM7/c;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v1}, LM7/c;->Y(I)LM7/c;

    invoke-virtual {v3, v5, v4}, LM7/o;->y0(ZZ)LM7/o;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    new-instance v3, LM7/o;

    new-instance v8, Lf5/c$i;

    invoke-direct {v8, v2}, Lf5/c$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v9, LM7/c$b;->Disconnected:LM7/c$b;

    const v10, 0x7f07007a

    invoke-direct {v3, v10, v8, v9, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v8, Lf5/d;->b:LAc/b;

    invoke-virtual {v3, v8}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v9

    sget-object v10, Lf5/d;->c:LAc/b;

    invoke-virtual {v9, v10}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9, v11}, LM7/c;->m0(I)LM7/c;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9, v11}, LM7/c;->Y(I)LM7/c;

    iget-object v9, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->snapToSurfaceConfigs:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/SnapToSurfaceConfigs;

    iget-boolean v9, v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/SnapToSurfaceConfigs;->lookRotation:Z

    invoke-virtual {v3, v9, v4}, LM7/o;->y0(ZZ)LM7/o;

    new-instance v9, LM7/o;

    new-instance v11, Lf5/c$j;

    invoke-direct {v11, v2, v3}, Lf5/c$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LM7/o;)V

    sget-object v12, LM7/c$b;->Top:LM7/c$b;

    const v13, 0x7f070079

    invoke-direct {v9, v13, v11, v12, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v9, v8}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v11

    invoke-virtual {v11, v10}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, LM7/c;->m0(I)LM7/c;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, LM7/c;->Y(I)LM7/c;

    new-instance v11, LM7/o;

    new-instance v12, Lf5/c$k;

    invoke-direct {v12, v2, v3}, Lf5/c$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LM7/o;)V

    sget-object v13, LM7/c$b;->Middle:LM7/c$b;

    const v14, 0x7f07007c

    invoke-direct {v11, v14, v12, v13, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v11, v8}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v12

    invoke-virtual {v12, v10}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v12, v14}, LM7/c;->m0(I)LM7/c;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v12, v14}, LM7/c;->Y(I)LM7/c;

    new-instance v12, LM7/o;

    new-instance v14, Lf5/c$l;

    invoke-direct {v14, v2, v3}, Lf5/c$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LM7/o;)V

    const v15, 0x7f07007b

    invoke-direct {v12, v15, v14, v13, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v12, v8}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v13

    invoke-virtual {v13, v10}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v13, v14}, LM7/c;->m0(I)LM7/c;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v13, v14}, LM7/c;->Y(I)LM7/c;

    new-instance v13, LM7/o;

    new-instance v14, Lf5/c$m;

    invoke-direct {v14, v2, v3}, Lf5/c$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LM7/o;)V

    sget-object v15, LM7/c$b;->Bottom:LM7/c$b;

    const v4, 0x7f07007d

    invoke-direct {v13, v4, v14, v15, v1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v13, v8}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v4

    invoke-virtual {v4, v10}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, LM7/c;->m0(I)LM7/c;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v6}, LM7/c;->Y(I)LM7/c;

    new-instance v4, LM7/p;

    invoke-direct {v4, v1}, LM7/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v4, v11}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v4, v12}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v4, v13}, LM7/p;->s(LM7/g;)LM7/p;

    sget-object v6, Lf5/c$e;->a:[I

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->F1()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v5, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;->SnapToSurface:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->S1(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v13}, LM7/p;->B(LM7/o;)V

    invoke-virtual {v3}, LM7/g;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v12}, LM7/p;->B(LM7/o;)V

    invoke-virtual {v3}, LM7/g;->g()V

    goto :goto_0

    :cond_3
    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->snapToSurfaceConfigs:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/SnapToSurfaceConfigs;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/SnapToSurfaceConfigs;->snapToSurface:Z

    if-eqz v2, :cond_4

    invoke-virtual {v4, v9}, LM7/p;->B(LM7/o;)V

    invoke-virtual {v3}, LM7/g;->p()V

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v11}, LM7/p;->B(LM7/o;)V

    invoke-virtual {v3}, LM7/g;->g()V

    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LM7/k;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5, v1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v2, v1}, LM7/k;-><init>(I)V

    invoke-virtual {v4, v2}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public static J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PrefabLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;->isChild()Z

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_MODE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
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

    invoke-super {p0, p1, p2, p3}, Lf5/d;->n(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object p3, p0, Lf5/c;->g:Lf5/c$o;

    invoke-interface {p3}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p3

    invoke-static {p3}, Lf5/c;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    invoke-static {p1, p2, v0}, Ll5/a;->e(Ljava/util/List;Landroid/app/Activity;F)V

    :cond_0
    new-instance p3, LM7/c;

    new-instance v1, Lf5/c$n;

    invoke-direct {v1, p0}, Lf5/c$n;-><init>(Lf5/c;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    const v3, 0x7f0701d3

    invoke-direct {p3, v3, v1, v2, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, Lf5/d;->b:LAc/b;

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    sget-object v3, Lf5/d;->c:LAc/b;

    invoke-virtual {p3, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p3, v4}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060231

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p3, v4}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/o;

    new-instance v4, Lf5/c$a;

    invoke-direct {v4, p0}, Lf5/c$a;-><init>(Lf5/c;)V

    const v7, 0x7f070251

    invoke-direct {p3, v7, v4, v2, p2}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object p3

    invoke-virtual {p3, v3}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p3, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p3, p2}, LM7/c;->Y(I)LM7/c;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
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

    invoke-super {p0, p1, p2, p3}, Lf5/d;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance v0, LM7/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, LM7/k;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lf5/c;->g:Lf5/c$o;

    invoke-interface {v0}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lf5/c;->I(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    return-void
.end method

.method public p(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 15
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

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-super/range {p0 .. p3}, Lf5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-static/range {p1 .. p3}, Ll5/a;->h(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-static/range {p1 .. p3}, Ll5/a;->d(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v2, LM7/c$b;->Top:LM7/c$b;

    invoke-static {v1, v8, v9, v2}, Ll5/a;->g(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LM7/c$b;)V

    new-instance v2, LM7/o;

    new-instance v3, Lf5/c$b;

    invoke-direct {v3, p0, v9}, Lf5/c$b;-><init>(Lf5/c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v4, LM7/c$b;->Middle:LM7/c$b;

    const v5, 0x7f07009c

    invoke-direct {v2, v5, v3, v4, v8}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v10, Lf5/d;->b:LAc/b;

    invoke-virtual {v2, v10}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v3

    sget-object v5, Lf5/d;->c:LAc/b;

    invoke-virtual {v3, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x7f060232

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, LM7/c;->m0(I)LM7/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f060231

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, LM7/c;->Y(I)LM7/c;

    iget-boolean v3, v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useBoundingCenter:Z

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, LM7/o;->y0(ZZ)LM7/o;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LM7/o;

    new-instance v3, Lf5/c$c;

    invoke-direct {v3, p0, v9}, Lf5/c$c;-><init>(Lf5/c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    const v6, 0x7f070233

    invoke-direct {v2, v6, v3, v4, v8}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v2, v10}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual {v3, v5}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, LM7/c;->m0(I)LM7/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, LM7/c;->Y(I)LM7/c;

    iget-boolean v3, v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->gridMove:Z

    invoke-virtual {v2, v3, v13}, LM7/o;->y0(ZZ)LM7/o;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, LM7/o;

    new-instance v5, Lf5/c$d;

    invoke-direct {v5, p0, v9}, Lf5/c$d;-><init>(Lf5/c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v6, LM7/c$b;->Bottom:LM7/c$b;

    const v3, 0x7f070171

    const v4, 0x7f07016f

    move-object v2, v14

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, LM7/o;-><init>(IILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v14, v10}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v2

    invoke-virtual {v2, v10}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, LM7/c;->Y(I)LM7/c;

    iget-boolean v2, v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useGlobalOrientation:Z

    invoke-virtual {v14, v2, v13}, LM7/o;->y0(ZZ)LM7/o;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
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

    invoke-super {p0, p1, p2, p3}, Lf5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance v0, LM7/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, LM7/k;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v1, Lf5/c$f;

    invoke-direct {v1, p0, p3}, Lf5/c$f;-><init>(Lf5/c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v2, LM7/c$b;->Left:LM7/c$b;

    const v3, 0x7f0700ac

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

    new-instance v0, LM7/o;

    new-instance v3, Lf5/c$g;

    invoke-direct {v3, p0, p3}, Lf5/c$g;-><init>(Lf5/c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v6, LM7/c$b;->Right:LM7/c$b;

    const v7, 0x7f0700ab

    invoke-direct {v0, v7, v3, v6, p2}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    iget-boolean v3, p3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->k0:Z

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, LM7/o;->y0(ZZ)LM7/o;

    move-result-object v0

    invoke-virtual {v0, v1}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v0

    invoke-virtual {v0, v2}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2, p3}, Ll5/a;->c(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    return-void
.end method
