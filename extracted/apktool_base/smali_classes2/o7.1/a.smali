.class public Lo7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final b:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:I

.field public final e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "recyclerView",
            "adapter",
            "wantedWidthDP"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo7/a;->f:I

    iput v0, p0, Lo7/a;->g:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lo7/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lo7/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput p4, p0, Lo7/a;->e:I

    int-to-float p3, p4

    invoke-static {p3, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p3

    iput p3, p0, Lo7/a;->d:I

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p4, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lo7/a;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lo7/a;->c()V

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lo7/a$a;

    invoke-direct {p2, p0}, Lo7/a$a;-><init>(Lo7/a;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo7/a;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lo7/a;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lo7/a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lo7/a;->g:I

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    iput v0, p0, Lo7/a;->g:I

    iget v1, p0, Lo7/a;->d:I

    div-int v1, v0, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, LNc/b;->N(II)I

    move-result v1

    div-int v3, v0, v1

    :goto_0
    iget v4, p0, Lo7/a;->d:I

    if-gt v3, v4, :cond_1

    if-gt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    div-int v3, v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lo7/a;->f:I

    if-eq v1, v0, :cond_2

    iput v1, p0, Lo7/a;->f:I

    iget-object v0, p0, Lo7/a;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lo7/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
