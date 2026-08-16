.class public LY5/f;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final l0:Ljava/lang/String; = "SearchPanel"


# instance fields
.field public final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation
.end field

.field public Y:LY5/b;

.field public Z:Landroidx/recyclerview/widget/RecyclerView;

.field public a0:Lo7/a;

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:LU5/a;

.field public f0:Landroid/view/View;

.field public g0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public h0:Z

.field public i0:Landroid/view/View;

.field public j0:I

.field public k0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_SEARCH:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LY5/f;->X:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LY5/f;->j0:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 4
    invoke-static {v1, v2}, LNc/d;->j(II)I

    move-result v1

    iput v1, p0, LY5/f;->k0:I

    .line 5
    new-instance v1, LU5/a;

    invoke-direct {v1}, LU5/a;-><init>()V

    iput-object v1, p0, LY5/f;->e0:LU5/a;

    .line 6
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(LU5/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchOptions"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_SEARCH:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LY5/f;->X:Ljava/util/List;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, LY5/f;->j0:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 10
    invoke-static {v1, v2}, LNc/d;->j(II)I

    move-result v1

    iput v1, p0, LY5/f;->k0:I

    if-nez p1, :cond_0

    .line 11
    new-instance p1, LU5/a;

    invoke-direct {p1}, LU5/a;-><init>()V

    iput-object p1, p0, LY5/f;->e0:LU5/a;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, LU5/a;->c()LU5/a;

    move-result-object p1

    iput-object p1, p0, LY5/f;->e0:LU5/a;

    .line 13
    :goto_0
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic A1(LY5/f;Z)Z
    .locals 0

    iput-boolean p1, p0, LY5/f;->c0:Z

    return p1
.end method

.method public static synthetic B1([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LY5/f;->R1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C1(LU5/a;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LY5/f;->P1(LU5/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D1(LY5/f;)I
    .locals 0

    invoke-direct {p0}, LY5/f;->O1()I

    move-result p0

    return p0
.end method

.method public static synthetic E1(Ljava/util/List;II)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, LY5/f;->V1(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F1(LY5/f;)Z
    .locals 0

    iget-boolean p0, p0, LY5/f;->h0:Z

    return p0
.end method

.method public static synthetic G1(LY5/f;Z)Z
    .locals 0

    iput-boolean p1, p0, LY5/f;->h0:Z

    return p1
.end method

.method public static synthetic H1(LY5/f;)LY5/b;
    .locals 0

    invoke-virtual {p0}, LY5/f;->N1()LY5/b;

    move-result-object p0

    return-object p0
.end method

.method private I1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPosts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v3, :cond_2

    move v4, v1

    :goto_1
    iget-object v5, p0, LY5/f;->X:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, LY5/f;->X:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v5, :cond_0

    iget-object v6, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, LY5/f;->N1()LY5/b;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, LY5/f;->S1(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, LH7/d;->h(Ljava/util/List;)V

    :cond_4
    iget-object p1, p0, LY5/f;->X:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private J1()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    new-instance v2, LH7/a;

    invoke-direct {v2}, LH7/a;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LY5/f;->N1()LY5/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, LH7/d;->h(Ljava/util/List;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private K1()V
    .locals 1

    iget-object v0, p0, LY5/f;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, LY5/f;->N1()LY5/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH7/d;->m()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LY5/f;->c0:Z

    iput-boolean v0, p0, LY5/f;->d0:Z

    return-void
.end method

.method private L1()V
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LY5/f;->Y:LY5/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LY5/f;->X:Ljava/util/List;

    invoke-virtual {p0, v0}, LY5/f;->S1(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LY5/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LY5/f$e;

    invoke-direct {v3, p0}, LY5/f$e;-><init>(LY5/f;)V

    invoke-direct {v1, v0, v2, v3}, LY5/b;-><init>(Ljava/util/List;Landroid/content/Context;LY5/b$d;)V

    iput-object v1, p0, LY5/f;->Y:LY5/b;

    :cond_0
    iget-object v0, p0, LY5/f;->Z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, LY5/f;->Y:LY5/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lo7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LY5/f;->Z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, LY5/f;->Y:LY5/b;

    const/16 v4, 0x96

    invoke-direct {v0, v1, v2, v3, v4}, Lo7/a;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    iput-object v0, p0, LY5/f;->a0:Lo7/a;

    iget-object v0, p0, LY5/f;->Z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, LY5/f$f;

    invoke-direct {v1, p0}, LY5/f$f;-><init>(LY5/f;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private M1()V
    .locals 2

    iget-boolean v0, p0, LY5/f;->c0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LY5/f;->c0:Z

    iget-object v0, p0, LY5/f;->e0:LU5/a;

    invoke-direct {p0}, LY5/f;->O1()I

    move-result v1

    invoke-virtual {v0, v1}, LU5/a;->o(I)V

    iget-object v0, p0, LY5/f;->e0:LU5/a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LU5/a;->m(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LY5/f$d;

    invoke-direct {v1, p0}, LY5/f$d;-><init>(LY5/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private O1()I
    .locals 2

    invoke-direct {p0}, LY5/f;->Q1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0
.end method

.method private static P1(LU5/a;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchOptions"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LU5/a;->i()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private Q1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LY5/f;->X:Ljava/util/List;

    return-object v0
.end method

.method private static R1([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private T1()V
    .locals 2

    iget-boolean v0, p0, LY5/f;->c0:Z

    if-eqz v0, :cond_0

    new-instance v0, Lob/b;

    new-instance v1, LY5/f$c;

    invoke-direct {v1, p0}, LY5/f$c;-><init>(LY5/f;)V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void

    :cond_0
    invoke-direct {p0}, LY5/f;->K1()V

    invoke-direct {p0}, LY5/f;->J1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LY5/f;->h0:Z

    invoke-direct {p0}, LY5/f;->M1()V

    return-void
.end method

.method public static U1(LU5/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "searchOptions",
            "anchor",
            "anchorSide"
        }
    .end annotation

    new-instance v0, LY5/f;

    invoke-direct {v0, p0}, LY5/f;-><init>(LU5/a;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p1, v0, p2, p0, p0}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-object p0
.end method

.method private static V1(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packages",
            "offset",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, LNc/b;->N(II)I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lt p1, p2, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic p1(LY5/f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iget-object p0, p0, LY5/f;->g0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method

.method public static synthetic q1(LY5/f;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LY5/f;->g0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic r1(LY5/f;)LU5/a;
    .locals 0

    iget-object p0, p0, LY5/f;->e0:LU5/a;

    return-object p0
.end method

.method public static synthetic s1(LY5/f;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, LY5/f;->I1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic t1(LY5/f;)Z
    .locals 0

    iget-boolean p0, p0, LY5/f;->d0:Z

    return p0
.end method

.method public static synthetic u1(LY5/f;Z)Z
    .locals 0

    iput-boolean p1, p0, LY5/f;->d0:Z

    return p1
.end method

.method public static synthetic v1(LY5/f;)LY5/b;
    .locals 0

    iget-object p0, p0, LY5/f;->Y:LY5/b;

    return-object p0
.end method

.method public static synthetic w1(LY5/f;)Lo7/a;
    .locals 0

    iget-object p0, p0, LY5/f;->a0:Lo7/a;

    return-object p0
.end method

.method public static synthetic x1(LY5/f;)V
    .locals 0

    invoke-direct {p0}, LY5/f;->M1()V

    return-void
.end method

.method public static synthetic y1(LY5/f;)V
    .locals 0

    invoke-direct {p0}, LY5/f;->T1()V

    return-void
.end method

.method public static synthetic z1(LY5/f;)Z
    .locals 0

    iget-boolean p0, p0, LY5/f;->c0:Z

    return p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LY5/f;->i0:Landroid/view/View;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, LY5/f;->Z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, LY5/f;->i0:Landroid/view/View;

    const v1, 0x7f090441

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, LK7/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, LK7/b;-><init>(Landroid/content/Context;)V

    new-instance v2, LK7/b$c;

    new-instance v3, LY5/f$a;

    invoke-direct {v3, p0}, LY5/f$a;-><init>(LY5/f;)V

    new-instance v4, LY5/f$b;

    invoke-direct {v4, p0, v1}, LY5/f$b;-><init>(LY5/f;LK7/b;)V

    invoke-direct {v2, v3, v4}, LK7/b$c;-><init>(LK7/b$d;LK7/b$d;)V

    invoke-virtual {v1, v2}, LK7/b;->f(LK7/b$c;)V

    invoke-virtual {v1}, LK7/b;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, LY5/f;->e0:LU5/a;

    invoke-virtual {v0}, LU5/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LK7/b;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LY5/f;->h0:Z

    invoke-direct {p0}, LY5/f;->J1()V

    iget-object v0, p0, LY5/f;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, LY5/f;->M1()V

    :cond_0
    iget-boolean v0, p0, LY5/f;->b0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    :cond_1
    iget-object v0, p0, LY5/f;->i0:Landroid/view/View;

    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    return-void
.end method

.method public final N1()LY5/b;
    .locals 1

    iget-object v0, p0, LY5/f;->Y:LY5/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, LY5/f;->L1()V

    :cond_0
    iget-object v0, p0, LY5/f;->Y:LY5/b;

    return-object v0
.end method

.method public S1(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "products"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;)",
            "Ljava/util/List<",
            "LH7/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, LH7/a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-direct {v2, v3}, LH7/a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, LY5/f;

    iget-object v1, p0, LY5/f;->e0:LU5/a;

    invoke-direct {v0, v1}, LY5/f;-><init>(LU5/a;)V

    return-object v0
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LY5/f;->a0:Lo7/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo7/a;->c()V

    :cond_0
    invoke-static {}, Lrc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
