.class public LC4/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final e0:Ljava/lang/String; = "Builds"


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Lo7/a;

.field public Z:LC4/a;

.field public a0:Landroid/view/View;

.field public b0:I

.field public c0:I

.field public d0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "builds"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, LC4/b;->b0:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, LNc/d;->j(II)I

    move-result v1

    iput v1, p0, LC4/b;->d0:I

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic p1(LC4/b;)LC4/a;
    .locals 0

    iget-object p0, p0, LC4/b;->Z:LC4/a;

    return-object p0
.end method

.method public static synthetic q1(LC4/b;Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, LC4/b;->s1(Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(LC4/b;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, LC4/b;->y1(Ljava/util/List;)V

    return-void
.end method

.method private v1()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LC4/b;->t1(Z)V

    return-void
.end method

.method public static w1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1

    const-string v0, "Cloud build was disabled!"

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static x1(Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "side"
        }
    .end annotation

    const-string p0, "Cloud build was disabled!"

    invoke-static {p0}, LN7/c;->v0(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LC4/b;->a0:Landroid/view/View;

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, LC4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, LC4/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v3, LC4/b$a;

    invoke-direct {v3, p0}, LC4/b$a;-><init>(LC4/b;)V

    invoke-direct {v0, v1, v3}, LC4/a;-><init>(Landroid/content/Context;LC4/a$e;)V

    iput-object v0, p0, LC4/b;->Z:LC4/a;

    iget-object v0, p0, LC4/b;->a0:Landroid/view/View;

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BUILDS_CREATE_BUILD:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LC4/b$b;

    invoke-direct {v1, p0}, LC4/b$b;-><init>(LC4/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LC4/b;->a0:Landroid/view/View;

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BUILDS_DESCRIPTION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LC4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, LC4/b;->Z:LC4/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lo7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, LC4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, LC4/b;->Z:LC4/a;

    const/16 v5, 0x12c

    invoke-direct {v0, v1, v3, v4, v5}, Lo7/a;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    iput-object v0, p0, LC4/b;->Y:Lo7/a;

    iget-object v0, p0, LC4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LC4/b;->t1(Z)V

    iget-object v0, p0, LC4/b;->a0:Landroid/view/View;

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    return-object v0
.end method

.method public o1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    iget v0, p0, LC4/b;->b0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LC4/b;->b0:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LC4/b;->t1(Z)V

    iput v0, p0, LC4/b;->b0:I

    :cond_0
    return-void
.end method

.method public final s1(Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LD4/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v0, v2}, Lhd/c;->e(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "error"

    invoke-static {v3, v4}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "zero"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, LD4/b;

    const-string v5, "id"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "compiller_version"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "apktoken"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "appname"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "versioncode"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "versioname"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "status"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "requested_at"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "compilled_at"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "position"

    invoke-static {v3, v5}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v5, v4

    invoke-direct/range {v5 .. v15}, LD4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final t1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceRefresh"
        }
    .end annotation

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LC4/b;->u1(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LC4/b;->Z:LC4/a;

    invoke-virtual {p1}, LC4/a;->j()V

    :goto_0
    return-void
.end method

.method public final u1(Landroid/content/Context;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "forceRefresh"
        }
    .end annotation

    new-instance v0, Led/c;

    new-instance v1, LC4/b$c;

    invoke-direct {v1, p0, p1, p2}, LC4/b$c;-><init>(LC4/b;Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Led/c;-><init>(Lhd/d;)V

    new-instance p2, LC4/b$d;

    invoke-direct {p2, p0}, LC4/b$d;-><init>(LC4/b;)V

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->G(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v1, Lhd/e;

    const-string v2, "backend/view/compiller/"

    const-string v3, "getBuildList.php"

    invoke-static {v2, v3}, LH8/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public final y1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LD4/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LC4/b;->Z:LC4/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, LC4/b;->a0:Landroid/view/View;

    const v1, 0x7f09035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gez v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD4/b;

    iget-object v1, p0, LC4/b;->Z:LC4/a;

    invoke-virtual {v1, v0}, LC4/a;->h(LD4/c;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not initialized yet!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
