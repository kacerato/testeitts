.class public Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field public volatile b:I

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "columnWidth"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->k(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->l(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "columnWidth",
            "orientation",
            "reverseLayout"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 5
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->k(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->l(I)V

    return-void
.end method

.method private k(Landroid/content/Context;I)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "columnWidth"
        }
    .end annotation

    if-gtz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p2, p1

    :cond_0
    return p2
.end method


# virtual methods
.method public l(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newColumnWidth"
        }
    .end annotation

    if-lez p1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->b:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->b:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "recycler",
            "state"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->b:I

    if-lez v2, :cond_2

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->d:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->e:I

    if-eq v2, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    :goto_0
    sub-int/2addr v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    goto :goto_0

    :goto_1
    iget v4, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->b:I

    div-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    iput v0, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->d:I

    iput v1, p0, Lcom/itsmagic/engine/Activities/Share/FileExplorer/Utils/GridAutofitLayoutManager;->e:I

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
