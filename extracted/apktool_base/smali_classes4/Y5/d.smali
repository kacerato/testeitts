.class public LY5/d;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final m0:Ljava/lang/String; = "SearchPanel"


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

.field public Y:LY5/c;

.field public Z:Landroidx/recyclerview/widget/RecyclerView;

.field public a0:Lo7/a;

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:LU5/a;

.field public f0:Landroid/view/View;

.field public g0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public h0:Z

.field public i0:Ljava/lang/String;

.field public j0:LY5/e;

.field public k0:I

.field public l0:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleText"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_SEARCH:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LY5/d;->X:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LY5/d;->k0:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 4
    invoke-static {v1, v2}, LNc/d;->j(II)I

    move-result v1

    iput v1, p0, LY5/d;->l0:I

    .line 5
    iput-object p1, p0, LY5/d;->i0:Ljava/lang/String;

    .line 6
    new-instance p1, LU5/a;

    invoke-direct {p1}, LU5/a;-><init>()V

    iput-object p1, p0, LY5/d;->e0:LU5/a;

    .line 7
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LU5/a;LY5/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleText",
            "searchOptions",
            "filter"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_SEARCH:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LY5/d;->X:Ljava/util/List;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, LY5/d;->k0:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 11
    invoke-static {v1, v2}, LNc/d;->j(II)I

    move-result v1

    iput v1, p0, LY5/d;->l0:I

    .line 12
    iput-object p1, p0, LY5/d;->i0:Ljava/lang/String;

    .line 13
    iput-object p3, p0, LY5/d;->j0:LY5/e;

    if-nez p2, :cond_0

    .line 14
    new-instance p1, LU5/a;

    invoke-direct {p1}, LU5/a;-><init>()V

    iput-object p1, p0, LY5/d;->e0:LU5/a;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, LU5/a;->c()LU5/a;

    move-result-object p1

    iput-object p1, p0, LY5/d;->e0:LU5/a;

    .line 16
    :goto_0
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic A1(LY5/d;)Z
    .locals 0

    iget-boolean p0, p0, LY5/d;->h0:Z

    return p0
.end method

.method public static synthetic B1(LY5/d;Z)Z
    .locals 0

    iput-boolean p1, p0, LY5/d;->h0:Z

    return p1
.end method

.method public static synthetic C1(LY5/d;)LY5/c;
    .locals 0

    invoke-virtual {p0}, LY5/d;->N1()LY5/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D1(LY5/d;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, LY5/d;->G1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic E1(LY5/d;)Z
    .locals 0

    iget-boolean p0, p0, LY5/d;->d0:Z

    return p0
.end method

.method public static synthetic F1(LY5/d;Z)Z
    .locals 0

    iput-boolean p1, p0, LY5/d;->d0:Z

    return p1
.end method

.method private K1()V
    .locals 1

    iget-object v0, p0, LY5/d;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, LY5/d;->N1()LY5/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH7/d;->m()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LY5/d;->c0:Z

    iput-boolean v0, p0, LY5/d;->d0:Z

    return-void
.end method

.method private M1()V
    .locals 3

    iget-boolean v0, p0, LY5/d;->c0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LY5/d;->c0:Z

    iget-object v1, p0, LY5/d;->e0:LU5/a;

    invoke-virtual {v1}, LU5/a;->c()LU5/a;

    move-result-object v1

    const-string v2, "itsmagic"

    invoke-virtual {v1, v2}, LU5/a;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LU5/a;->n(Z)V

    invoke-virtual {p0}, LY5/d;->O1()I

    move-result v0

    invoke-virtual {v1, v0}, LU5/a;->o(I)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, LU5/a;->m(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, LY5/d$d;

    invoke-direct {v2, p0, v1}, LY5/d$d;-><init>(LY5/d;LU5/a;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static P1(LU5/a;)Ljava/lang/String;
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

.method public static R1([Ljava/lang/String;)Ljava/lang/String;
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

.method public static V1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleText"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LY5/d;->W1(Ljava/lang/String;LU5/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static W1(Ljava/lang/String;LU5/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "titleText",
            "searchOptions"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LY5/d;->X1(Ljava/lang/String;LU5/a;LY5/e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static X1(Ljava/lang/String;LU5/a;LY5/e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleText",
            "searchOptions",
            "filter"
        }
    .end annotation

    new-instance v0, LY5/d;

    invoke-direct {v0, p0, p1, p2}, LY5/d;-><init>(Ljava/lang/String;LU5/a;LY5/e;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {v0, p0, p0}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p0
.end method

.method public static Y1(Ljava/lang/String;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "titleText",
            "searchText"
        }
    .end annotation

    new-instance v0, LU5/a;

    invoke-direct {v0}, LU5/a;-><init>()V

    invoke-virtual {v0, p1}, LU5/a;->t(Ljava/lang/String;)V

    invoke-static {p0, v0}, LY5/d;->W1(Ljava/lang/String;LU5/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static Z1(Ljava/lang/String;Ljava/lang/String;LY5/e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleText",
            "searchText",
            "filter"
        }
    .end annotation

    new-instance v0, LU5/a;

    invoke-direct {v0}, LU5/a;-><init>()V

    invoke-virtual {v0, p1}, LU5/a;->t(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, LY5/d;->X1(Ljava/lang/String;LU5/a;LY5/e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static a2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LY5/e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleText",
            "searchText",
            "tag",
            "filter"
        }
    .end annotation

    new-instance v0, LU5/a;

    invoke-direct {v0}, LU5/a;-><init>()V

    invoke-virtual {v0, p1}, LU5/a;->t(Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LU5/a;->s([Ljava/lang/String;)V

    invoke-static {p0, v0, p3}, LY5/d;->X1(Ljava/lang/String;LU5/a;LY5/e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static b2(Ljava/util/List;II)Ljava/util/List;
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

.method public static synthetic p1(LY5/d;)Z
    .locals 0

    iget-boolean p0, p0, LY5/d;->c0:Z

    return p0
.end method

.method public static synthetic q1(LY5/d;Z)Z
    .locals 0

    iput-boolean p1, p0, LY5/d;->c0:Z

    return p1
.end method

.method public static synthetic r1(LY5/d;)V
    .locals 0

    invoke-virtual {p0}, LY5/d;->T1()V

    return-void
.end method

.method public static synthetic s1(LY5/d;)LY5/c;
    .locals 0

    iget-object p0, p0, LY5/d;->Y:LY5/c;

    return-object p0
.end method

.method public static synthetic t1(LY5/d;)Lo7/a;
    .locals 0

    iget-object p0, p0, LY5/d;->a0:Lo7/a;

    return-object p0
.end method

.method public static synthetic u1(LY5/d;)V
    .locals 0

    invoke-direct {p0}, LY5/d;->M1()V

    return-void
.end method

.method public static synthetic v1(LY5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 0

    invoke-virtual {p0, p1}, LY5/d;->I1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    return-void
.end method

.method public static synthetic w1([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LY5/d;->R1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x1(LU5/a;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LY5/d;->P1(LU5/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y1(LY5/d;)I
    .locals 0

    invoke-virtual {p0}, LY5/d;->O1()I

    move-result p0

    return p0
.end method

.method public static synthetic z1(Ljava/util/List;II)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, LY5/d;->b2(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LY5/d$a;

    invoke-direct {v1, p0}, LY5/d$a;-><init>(LY5/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LY5/d;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, LN7/c;->a(Ljava/lang/Object;)V

    const v1, 0x7f09053c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, LY5/d;->i0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LY5/d$b;

    invoke-direct {v2, p0}, LY5/d$b;-><init>(LY5/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, LY5/d;->h0:Z

    invoke-virtual {p0}, LY5/d;->H1()V

    iget-object v1, p0, LY5/d;->X:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, LY5/d;->M1()V

    :cond_0
    iget-boolean v1, p0, LY5/d;->b0:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    :cond_1
    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    return-void
.end method

.method public final G1(Ljava/util/List;)V
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

    if-ge v2, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v3, :cond_3

    iget-object v4, p0, LY5/d;->j0:LY5/e;

    if-eqz v4, :cond_0

    invoke-interface {v4, v3}, LY5/e;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    move v4, v1

    :goto_1
    iget-object v5, p0, LY5/d;->X:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, LY5/d;->X:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v5, :cond_1

    iget-object v6, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
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

    :cond_4
    invoke-virtual {p0}, LY5/d;->N1()LY5/c;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, LY5/d;->S1(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, LH7/d;->h(Ljava/util/List;)V

    :cond_5
    iget-object p1, p0, LY5/d;->X:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final H1()V
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
    invoke-virtual {p0}, LY5/d;->N1()LY5/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, LH7/d;->h(Ljava/util/List;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final I1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->n()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->l(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->h(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    move-result-object v1

    invoke-virtual {p0, v1}, LY5/d;->J1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final J1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V
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

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->d(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".go"

    invoke-static {v2, v3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->f()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LLb/k;->s(Ljava/lang/String;Ljava/lang/String;)LMb/b;

    move-result-object p1

    iput-boolean v0, p1, LMb/b;->f:Z

    return-void

    :cond_0
    invoke-virtual {p0, v1}, LY5/d;->J1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage$SFile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final L1()V
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LY5/d;->Y:LY5/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LY5/d;->X:Ljava/util/List;

    invoke-virtual {p0, v0}, LY5/d;->S1(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LY5/c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LY5/d$e;

    invoke-direct {v3, p0}, LY5/d$e;-><init>(LY5/d;)V

    invoke-direct {v1, v0, v2, v3}, LY5/c;-><init>(Ljava/util/List;Landroid/content/Context;LY5/c$d;)V

    iput-object v1, p0, LY5/d;->Y:LY5/c;

    :cond_0
    iget-object v0, p0, LY5/d;->Z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, LY5/d;->Y:LY5/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lo7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LY5/d;->Z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, LY5/d;->Y:LY5/c;

    const/16 v4, 0x60

    invoke-direct {v0, v1, v2, v3, v4}, Lo7/a;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    iput-object v0, p0, LY5/d;->a0:Lo7/a;

    iget-object v0, p0, LY5/d;->Z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, LY5/d$f;

    invoke-direct {v1, p0}, LY5/d$f;-><init>(LY5/d;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final N1()LY5/c;
    .locals 1

    iget-object v0, p0, LY5/d;->Y:LY5/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LY5/d;->L1()V

    :cond_0
    iget-object v0, p0, LY5/d;->Y:LY5/c;

    return-object v0
.end method

.method public final O1()I
    .locals 2

    invoke-virtual {p0}, LY5/d;->Q1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0
.end method

.method public final Q1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LY5/d;->X:Ljava/util/List;

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

.method public final T1()V
    .locals 2

    iget-boolean v0, p0, LY5/d;->c0:Z

    if-eqz v0, :cond_0

    new-instance v0, Lob/b;

    new-instance v1, LY5/d$c;

    invoke-direct {v1, p0}, LY5/d$c;-><init>(LY5/d;)V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void

    :cond_0
    invoke-direct {p0}, LY5/d;->K1()V

    invoke-virtual {p0}, LY5/d;->H1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LY5/d;->h0:Z

    invoke-direct {p0}, LY5/d;->M1()V

    return-void
.end method

.method public final U1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Theres no open project!"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    new-instance v1, LY5/d$g;

    invoke-direct {v1, p0, p1, v0}, LY5/d$g;-><init>(LY5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lq7/a;)V

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->U1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 4

    new-instance v0, LY5/d;

    iget-object v1, p0, LY5/d;->i0:Ljava/lang/String;

    iget-object v2, p0, LY5/d;->e0:LU5/a;

    iget-object v3, p0, LY5/d;->j0:LY5/e;

    invoke-direct {v0, v1, v2, v3}, LY5/d;-><init>(Ljava/lang/String;LU5/a;LY5/e;)V

    iget-object v1, v0, LY5/d;->X:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, LY5/d;->X:Ljava/util/List;

    iget-object v2, p0, LY5/d;->X:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, LY5/d;->e0:LU5/a;

    iput-object v1, v0, LY5/d;->e0:LU5/a;

    iget-object v1, p0, LY5/d;->Y:LY5/c;

    iput-object v1, v0, LY5/d;->Y:LY5/c;

    return-object v0
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LY5/d;->a0:Lo7/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo7/a;->c()V

    :cond_0
    return-void
.end method
