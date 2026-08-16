.class public Li5/b;
.super Lf5/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li5/b$p;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public A:Li5/b$p;

.field public final B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Ltc/h;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final D:Laa/d;

.field public final E:Laa/d;

.field public F:LP4/c;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public h:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:LO8/a;

.field public n:I

.field public o:I

.field public p:I

.field public q:F

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lub/g;

.field public v:LBb/b;

.field public w:LIb/c;

.field public final x:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public y:LBb/b;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mr"
        }
    .end annotation

    invoke-direct {p0}, Lf5/d;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Li5/b;->x:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, Li5/b$p;->Grid:Li5/b$p;

    iput-object v0, p0, Li5/b;->A:Li5/b$p;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li5/b;->B:Ljava/util/HashMap;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Li5/b;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Laa/d;

    invoke-direct {v0}, Laa/d;-><init>()V

    iput-object v0, p0, Li5/b;->D:Laa/d;

    new-instance v0, Laa/d;

    invoke-direct {v0}, Laa/d;-><init>()V

    iput-object v0, p0, Li5/b;->E:Laa/d;

    iput-object p1, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {p0}, Li5/b;->t0()V

    return-void
.end method

.method public static synthetic H(Li5/b;ZZI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Li5/b;->r0(ZZI)V

    return-void
.end method

.method public static synthetic I(Li5/b;)Laa/d;
    .locals 0

    iget-object p0, p0, Li5/b;->E:Laa/d;

    return-object p0
.end method

.method public static synthetic J(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Li5/b;->x:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic K(Li5/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li5/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic L(Li5/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Li5/b;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic M(Li5/b;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0

    invoke-virtual {p0, p1}, Li5/b;->q0(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void
.end method

.method public static synthetic N(Li5/b;Ljava/lang/String;Lub/p;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Li5/b;->p0(Ljava/lang/String;Lub/p;)V

    return-void
.end method

.method public static synthetic O(Li5/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Li5/b;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic P(Li5/b;)Lub/g;
    .locals 0

    iget-object p0, p0, Li5/b;->u:Lub/g;

    return-object p0
.end method

.method public static synthetic Q(Li5/b;Lub/g;)Lub/g;
    .locals 0

    iput-object p1, p0, Li5/b;->u:Lub/g;

    return-object p1
.end method

.method public static synthetic R(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;
    .locals 0

    iget-object p0, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    return-object p0
.end method

.method public static synthetic S(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iget-object p0, p0, Li5/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p0
.end method

.method public static synthetic T(Li5/b;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iput-object p1, p0, Li5/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p1
.end method

.method public static synthetic U(Li5/b;)I
    .locals 0

    iget p0, p0, Li5/b;->n:I

    return p0
.end method

.method public static synthetic V(Li5/b;I)I
    .locals 0

    iput p1, p0, Li5/b;->n:I

    return p1
.end method

.method public static synthetic W(Li5/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li5/b;->z:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic X(Li5/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Li5/b;->z:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic Y(Li5/b;)LIb/c;
    .locals 0

    iget-object p0, p0, Li5/b;->w:LIb/c;

    return-object p0
.end method

.method public static synthetic Z(Li5/b;LP4/c;)LP4/c;
    .locals 0

    iput-object p1, p0, Li5/b;->F:LP4/c;

    return-object p1
.end method

.method public static synthetic a0(Li5/b;LIb/c;)LIb/c;
    .locals 0

    iput-object p1, p0, Li5/b;->w:LIb/c;

    return-object p1
.end method

.method public static synthetic b0(Li5/b;)LBb/b;
    .locals 0

    iget-object p0, p0, Li5/b;->v:LBb/b;

    return-object p0
.end method

.method public static synthetic c0(Li5/b;LBb/b;)LBb/b;
    .locals 0

    iput-object p1, p0, Li5/b;->v:LBb/b;

    return-object p1
.end method

.method public static synthetic d0(Li5/b;)I
    .locals 0

    iget p0, p0, Li5/b;->o:I

    return p0
.end method

.method public static synthetic e0(Li5/b;I)I
    .locals 0

    iput p1, p0, Li5/b;->o:I

    return p1
.end method

.method public static synthetic f0(Li5/b;)I
    .locals 0

    iget p0, p0, Li5/b;->p:I

    return p0
.end method

.method public static synthetic g0(Li5/b;I)I
    .locals 0

    iput p1, p0, Li5/b;->p:I

    return p1
.end method

.method public static synthetic h0(Li5/b;)LBb/b;
    .locals 0

    iget-object p0, p0, Li5/b;->y:LBb/b;

    return-object p0
.end method

.method public static synthetic i0(Li5/b;LBb/b;)LBb/b;
    .locals 0

    iput-object p1, p0, Li5/b;->y:LBb/b;

    return-object p1
.end method

.method public static synthetic j0(Li5/b;)Laa/d;
    .locals 0

    iget-object p0, p0, Li5/b;->D:Laa/d;

    return-object p0
.end method

.method public static synthetic k0(Li5/b;)Li5/b$p;
    .locals 0

    iget-object p0, p0, Li5/b;->A:Li5/b$p;

    return-object p0
.end method

.method public static synthetic l0(Li5/b;Li5/b$p;)Li5/b$p;
    .locals 0

    iput-object p1, p0, Li5/b;->A:Li5/b$p;

    return-object p1
.end method

.method public static synthetic m0(Li5/b;)F
    .locals 0

    iget p0, p0, Li5/b;->q:F

    return p0
.end method

.method public static synthetic n0(Li5/b;F)F
    .locals 0

    iput p1, p0, Li5/b;->q:F

    return p1
.end method

.method private u0()V
    .locals 2

    iget-object v0, p0, Li5/b;->l:Ljava/lang/String;

    iget-object v1, p0, Li5/b;->u:Lub/g;

    invoke-virtual {p0, v0, v1}, Li5/b;->p0(Ljava/lang/String;Lub/p;)V

    return-void
.end method

.method private w0()V
    .locals 2

    iget-boolean v0, p0, Li5/b;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li5/b;->s:Z

    iget-object v0, p0, Li5/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Li5/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Li5/b;->i:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Li5/b$h;

    invoke-direct {v0, p0}, Li5/b$h;-><init>(Li5/b;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v0, p0, Li5/b;->k:Ljava/lang/String;

    const-string v1, ".vertex"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Li5/b$i;

    invoke-direct {v0, p0}, Li5/b$i;-><init>(Li5/b;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v0, p0, Li5/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s:Z

    if-nez v0, :cond_4

    new-instance v0, Li5/b$j;

    invoke-direct {v0, p0}, Li5/b$j;-><init>(Li5/b;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Li5/b;->x0()V

    :goto_0
    return-void

    :cond_5
    :goto_1
    new-instance v0, Li5/b$a;

    invoke-direct {v0, p0}, Li5/b$a;-><init>(Li5/b;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 5

    invoke-direct {p0}, Li5/b;->w0()V

    iget-boolean v0, p0, Li5/b;->t:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Li5/b;->v0()V

    iget-object v0, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v1, p0, Li5/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMeshFile(Ljava/lang/String;)V

    iget-boolean v0, p0, Li5/b;->r:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v0

    iget-object v1, p0, Li5/b;->B:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    sget-object v4, LJAVARuntime/GUIUtils$TouchFilter;->Pressed:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v0, v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w(LJAVARuntime/GUIUtils$TouchFilter;I)Ltc/h;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Li5/b;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v3, p0, Li5/b;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v3, v0}, Li5/b;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_0
    iget-object v1, p0, Li5/b;->B:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;->T:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Li5/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->UV_PAINT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li5/b;->j:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v1, v2}, LTc/b;->Y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->UV_PAINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

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

    new-instance v0, LM7/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, LM7/k;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/o;

    new-instance v1, Li5/b$d;

    invoke-direct {v1, p0}, Li5/b$d;-><init>(Li5/b;)V

    sget-object v2, LM7/c$b;->Top:LM7/c$b;

    const v3, 0x7f070247

    invoke-direct {v0, v3, v1, v2, p2}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, Lf5/d;->b:LAc/b;

    invoke-virtual {v0, v1}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v2

    sget-object v3, Lf5/d;->c:LAc/b;

    invoke-virtual {v2, v3}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, LM7/c;->m0(I)LM7/c;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060231

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, LM7/c;->Y(I)LM7/c;

    new-instance v2, LM7/o;

    new-instance v4, Li5/b$e;

    invoke-direct {v4, p0}, Li5/b$e;-><init>(Li5/b;)V

    sget-object v7, LM7/c$b;->Middle:LM7/c$b;

    const v8, 0x7f070239

    invoke-direct {v2, v8, v4, v7, p2}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v4

    invoke-virtual {v4, v3}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, LM7/c;->m0(I)LM7/c;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, LM7/c;->Y(I)LM7/c;

    new-instance v4, LM7/p;

    invoke-direct {v4, p2}, LM7/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v4, v2}, LM7/p;->s(LM7/g;)LM7/p;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, LM7/p;->B(LM7/o;)V

    iget-boolean v0, p0, Li5/b;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, LM7/p;->y(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, LM7/p;->y(I)V

    :goto_0
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v2, Li5/b$f;

    invoke-direct {v2, p0, p3}, Li5/b$f;-><init>(Li5/b;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    const p3, 0x7f0700ac

    invoke-direct {v0, p3, v2, p2}, LM7/c;-><init>(ILM7/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, LM7/c;->Y(I)LM7/c;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPos",
            "editor3DViewer"
        }
    .end annotation

    invoke-virtual {p0}, Li5/b;->s0()LO8/a;

    move-result-object v0

    iget-object v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object v1, v1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->e(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget-object v3, p0, Li5/b;->D:Laa/d;

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Laa/d;)Laa/d;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p2, p2, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v1, p0, Li5/b;->E:Laa/d;

    invoke-virtual {p2, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Laa/d;)Laa/d;

    new-instance p1, Li5/b$k;

    invoke-direct {p1, p0, v0}, Li5/b$k;-><init>(Li5/b;LO8/a;)V

    invoke-static {p1}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p0(Ljava/lang/String;Lub/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "atlasTexture"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/16 v1, 0x10

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGB8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->c(Lub/p;Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public final q0(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputVertex"
        }
    .end annotation

    iget-object v0, p0, Li5/b;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->p(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z

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

    new-instance v1, Li5/b$m;

    invoke-direct {v1, p0}, Li5/b$m;-><init>(Li5/b;)V

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

    new-instance v3, Li5/b$n;

    invoke-direct {v3, p0}, Li5/b$n;-><init>(Li5/b;)V

    sget-object v6, LM7/c$b;->Left:LM7/c$b;

    const v7, 0x7f0701c6

    invoke-direct {p3, v7, v3, v6, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    iget-object v3, p0, Li5/b;->x:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p3, v3}, LM7/c;->e0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;

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

    new-instance v3, Li5/b$o;

    invoke-direct {v3, p0}, Li5/b$o;-><init>(Li5/b;)V

    sget-object v7, LM7/c$b;->Right:LM7/c$b;

    const v8, 0x7f070239

    invoke-direct {p3, v8, v3, v7, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

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

    new-instance p3, LM7/k;

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {p3, v0}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v0, Li5/b$b;

    invoke-direct {v0, p0}, Li5/b$b;-><init>(Li5/b;)V

    const v3, 0x7f0700a0

    invoke-direct {p3, v3, v0, v6, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

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

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v0, Li5/b$c;

    invoke-direct {v0, p0}, Li5/b$c;-><init>(Li5/b;)V

    const v3, 0x7f07009e

    invoke-direct {p3, v3, v0, v7, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

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

    return-void
.end method

.method public final r0(ZZI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "genTexture",
            "genUV",
            "resolution"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p2, Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {p2}, Lorg/ITsMagic/Atlas/BakeOptions;-><init>()V

    iput p3, p2, Lorg/ITsMagic/Atlas/BakeOptions;->a:I

    iput-boolean p1, p2, Lorg/ITsMagic/Atlas/BakeOptions;->texture:Z

    new-instance p3, Lorg/ITsMagic/Atlas/e;

    iget-object v0, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y()[F

    move-result-object v1

    invoke-direct {p3, v0, v1, p2}, Lorg/ITsMagic/Atlas/e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;[FLorg/ITsMagic/Atlas/BakeOptions;)V

    new-instance p2, Li5/b$l;

    invoke-direct {p2, p0, p3, p1}, Li5/b$l;-><init>(Li5/b;Lorg/ITsMagic/Atlas/e;Z)V

    invoke-static {p2}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Li5/b;->i:Ljava/lang/String;

    const-string p2, "_uvpaint"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "_uvpaint.png"

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Li5/b;->i:Ljava/lang/String;

    invoke-static {p2}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li5/b;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Lub/n;

    invoke-direct {p2, p3, p3}, Lub/n;-><init>(II)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p3, :cond_3

    move v2, v0

    :goto_2
    if-ge v2, p3, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lub/n;->apply()V

    invoke-virtual {p0, p1, p2}, Li5/b;->p0(Ljava/lang/String;Lub/p;)V

    iput-object p1, p0, Li5/b;->l:Ljava/lang/String;

    invoke-static {p1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p1

    iput-object p1, p0, Li5/b;->u:Lub/g;

    iget-object p1, p0, Li5/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p2, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object p2

    invoke-static {p1, p2}, LIb/c;->d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)LIb/c;

    move-result-object p1

    iput-object p1, p0, Li5/b;->w:LIb/c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Li5/b;->t:Z

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Li5/b;->x0()V

    :goto_3
    return-void
.end method

.method public s(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
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

    invoke-virtual {p0}, Li5/b;->t0()V

    return-void
.end method

.method public s0()LO8/a;
    .locals 3

    iget-object v0, p0, Li5/b;->m:LO8/a;

    if-eqz v0, :cond_0

    iget v0, v0, LO8/a;->g:I

    iget v1, p0, Li5/b;->n:I

    if-eq v0, v1, :cond_3

    :cond_0
    iget v0, p0, Li5/b;->n:I

    sget-object v1, LK8/a;->r:LO8/b;

    invoke-virtual {v1}, LO8/b;->b()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, LO8/b;->b()I

    move-result v0

    iput v0, p0, Li5/b;->n:I

    :cond_1
    iget v0, p0, Li5/b;->n:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Li5/b;->n:I

    :cond_2
    invoke-virtual {v1}, LO8/b;->b()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Li5/b;->n:I

    invoke-virtual {v1, v0}, LO8/b;->a(I)LO8/a;

    move-result-object v0

    iput-object v0, p0, Li5/b;->m:LO8/a;

    :cond_3
    iget-object v0, p0, Li5/b;->m:LO8/a;

    return-object v0
.end method

.method public t()V
    .locals 1

    iget-boolean v0, p0, Li5/b;->t:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li5/b;->u0()V

    :cond_0
    return-void
.end method

.method public t0()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Li5/b;->n:I

    const/16 v1, 0xa

    iput v1, p0, Li5/b;->o:I

    const/16 v1, 0x64

    iput v1, p0, Li5/b;->p:I

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Li5/b;->q:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Li5/b;->r:Z

    iput-boolean v1, p0, Li5/b;->s:Z

    iput-boolean v1, p0, Li5/b;->t:Z

    iget-object v1, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iput-object v1, p0, Li5/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMeshFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Li5/b;->i:Ljava/lang/String;

    invoke-static {v1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li5/b;->j:Ljava/lang/String;

    iget-object v0, p0, Li5/b;->i:Ljava/lang/String;

    invoke-static {v0}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li5/b;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Li5/b;->y:LBb/b;

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

    invoke-virtual {p0}, Li5/b;->t0()V

    return-void
.end method

.method public final v0()V
    .locals 2

    iget-object v0, p0, Li5/b;->F:LP4/c;

    if-nez v0, :cond_0

    new-instance v0, LP4/c;

    new-instance v1, Li5/b$g;

    invoke-direct {v1, p0}, Li5/b$g;-><init>(Li5/b;)V

    invoke-direct {v0, p0, v1}, LP4/c;-><init>(Li5/b;LP4/a;)V

    iput-object v0, p0, Li5/b;->F:LP4/c;

    :cond_0
    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v0

    iget-object v1, p0, Li5/b;->F:LP4/c;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Li5/b;->F:LP4/c;

    invoke-static {v0}, Lv3/c;->e(LP4/b;)V

    :cond_2
    return-void
.end method

.method public final x0()V
    .locals 5

    iget-object v0, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v1, "albedo"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li5/b;->l:Ljava/lang/String;

    iget-object v0, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->v(Ljava/lang/String;)Lub/p;

    move-result-object v0

    check-cast v0, Lub/g;

    iput-object v0, p0, Li5/b;->u:Lub/g;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-boolean v2, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    new-instance v4, Lub/g;

    invoke-direct {v4, v0, v3}, Lub/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v4, p0, Li5/b;->u:Lub/g;

    iget-object v0, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->h0(Ljava/lang/String;Lub/p;)V

    :cond_0
    iget-object v0, p0, Li5/b;->u:Lub/g;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, LBb/b;->z(Lub/p;F)LBb/b;

    move-result-object v0

    iput-object v0, p0, Li5/b;->v:LBb/b;

    iget-object v0, p0, Li5/b;->h:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Li5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object v1

    invoke-static {v0, v1}, LIb/c;->d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)LIb/c;

    move-result-object v0

    iput-object v0, p0, Li5/b;->w:LIb/c;

    iput-boolean v2, p0, Li5/b;->t:Z

    return-void
.end method
