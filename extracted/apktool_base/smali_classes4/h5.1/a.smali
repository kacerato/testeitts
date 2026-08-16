.class public Lh5/a;
.super Lf5/d;
.source "SourceFile"


# instance fields
.field public final g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

.field public h:Z

.field public i:F

.field public j:LQ4/b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectPool"
        }
    .end annotation

    invoke-direct {p0}, Lf5/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh5/a;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lh5/a;->i:F

    iput-object p1, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-void
.end method

.method public static synthetic H(Lh5/a;LQ4/b;)LQ4/b;
    .locals 0

    iput-object p1, p0, Lh5/a;->j:LQ4/b;

    return-object p1
.end method

.method public static synthetic I(Lh5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
    .locals 0

    iget-object p0, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-object p0
.end method

.method public static synthetic J(Lh5/a;)V
    .locals 0

    invoke-virtual {p0}, Lh5/a;->K()V

    return-void
.end method


# virtual methods
.method public final K()V
    .locals 3

    iget-object v0, p0, Lh5/a;->j:LQ4/b;

    if-nez v0, :cond_0

    new-instance v0, LQ4/b;

    iget-object v1, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    new-instance v2, Lh5/a$c;

    invoke-direct {v2, p0}, Lh5/a$c;-><init>(Lh5/a;)V

    invoke-direct {v0, v1, v2}, LQ4/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;LP4/a;)V

    iput-object v0, p0, Lh5/a;->j:LQ4/b;

    :cond_0
    iget-object v0, p0, Lh5/a;->j:LQ4/b;

    iget-object v1, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iput-object v1, v0, LQ4/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    iget-object v1, p0, Lh5/a;->j:LQ4/b;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lh5/a;->j:LQ4/b;

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lh5/a;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lh5/a;->i:F

    invoke-static {}, LK8/d;->e()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lh5/a;->i:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lh5/a;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh5/a;->h:Z

    :cond_0
    iget-boolean v0, p0, Lh5/a;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m3:Z

    iget-object v0, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lh5/a;->K()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh5/a;->j:LQ4/b;

    if-eqz v0, :cond_2

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    iget-object v1, p0, Lh5/a;->j:LQ4/b;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    iput-object v0, p0, Lh5/a;->j:LQ4/b;

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

    const-string v0, "Edit Object pool"

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

    new-instance v0, Lh5/a$i;

    invoke-direct {v0, p0}, Lh5/a$i;-><init>(Lh5/a;)V

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

    new-instance v3, Lh5/a$j;

    invoke-direct {v3, p0}, Lh5/a$j;-><init>(Lh5/a;)V

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

    new-instance v6, Lh5/a$k;

    invoke-direct {v6, p0}, Lh5/a$k;-><init>(Lh5/a;)V

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

    invoke-virtual {v6, p3}, LM7/p;->B(LM7/o;)V

    sget-object p3, Lh5/a$b;->a:[I

    iget-object v1, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v3}, LM7/p;->y(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v1}, LM7/p;->y(I)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    invoke-virtual {v6, p3}, LM7/p;->y(I)V

    :goto_0
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v1, Lh5/a$a;

    invoke-direct {v1, p0}, Lh5/a$a;-><init>(Lh5/a;)V

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

    new-instance p3, LM7/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {p3, v1}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v1, Lh5/a$d;

    invoke-direct {v1, p0}, Lh5/a$d;-><init>(Lh5/a;)V

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

    new-instance v3, Lh5/a$e;

    invoke-direct {v3, p0}, Lh5/a$e;-><init>(Lh5/a;)V

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

    new-instance v3, Lh5/a$f;

    invoke-direct {v3, p0}, Lh5/a$f;-><init>(Lh5/a;)V

    sget-object v6, LM7/c$b;->Middle:LM7/c$b;

    const v7, 0x7f07009e

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

    new-instance v3, Lh5/a$g;

    invoke-direct {v3, p0}, Lh5/a$g;-><init>(Lh5/a;)V

    const v7, 0x7f07009f

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

    new-instance v3, Lh5/a$h;

    invoke-direct {v3, p0}, Lh5/a$h;-><init>(Lh5/a;)V

    sget-object v6, LM7/c$b;->Right:LM7/c$b;

    const v7, 0x7f07007d

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

    iget-object p1, p0, Lh5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->m3:Z

    :cond_0
    iget-object p1, p0, Lh5/a;->j:LQ4/b;

    if-eqz p1, :cond_2

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p1

    iget-object p2, p0, Lh5/a;->j:LQ4/b;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    :cond_1
    iput-object v0, p0, Lh5/a;->j:LQ4/b;

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
