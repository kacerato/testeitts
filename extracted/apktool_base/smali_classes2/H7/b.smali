.class public LH7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:LH7/d;

.field public c:Landroidx/recyclerview/widget/GridLayoutManager;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:Landroid/view/LayoutInflater;

.field public m:Landroid/content/Context;

.field public n:Landroid/view/View;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, LH7/b;->l:Landroid/view/LayoutInflater;

    .line 3
    iput-object p1, p0, LH7/b;->m:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "v"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, LH7/b;->l:Landroid/view/LayoutInflater;

    .line 6
    iput-object p1, p0, LH7/b;->m:Landroid/content/Context;

    .line 7
    iput-object p2, p0, LH7/b;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()LH7/d;
    .locals 1

    iget-object v0, p0, LH7/b;->b:LH7/d;

    return-object v0
.end method

.method public b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, LH7/b;->d:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, LH7/b;->l:Landroid/view/LayoutInflater;

    const v1, 0x7f0c018f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LH7/b;->d:Landroid/view/View;

    :cond_0
    iget-object v0, p0, LH7/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    iget-object v0, p0, LH7/b;->d:Landroid/view/View;

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, LH7/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    :cond_1
    iget-object v0, p0, LH7/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, LH7/b;->b:LH7/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, LH7/b;->m:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, LH7/b;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, LH7/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, LH7/b;->f()V

    iget-object v0, p0, LH7/b;->d:Landroid/view/View;

    return-object v0
.end method

.method public c(LH7/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    iput-object p1, p0, LH7/b;->b:LH7/d;

    if-eqz p1, :cond_0

    iget-object v0, p0, LH7/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iput-object p1, p0, LH7/b;->n:Landroid/view/View;

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iput-object p1, p0, LH7/b;->d:Landroid/view/View;

    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, LH7/b;->e:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, LH7/b;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-boolean v1, p0, LH7/b;->o:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, LH7/b;->o:Z

    iget-object v1, p0, LH7/b;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, LH7/b;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget-object v3, p0, LH7/b;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, LH7/b;->h:I

    :cond_0
    iget v1, p0, LH7/b;->j:I

    const/4 v3, 0x0

    if-ne v1, v0, :cond_3

    iget v1, p0, LH7/b;->k:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v1, p0, LH7/b;->g:I

    if-eq v0, v1, :cond_4

    iput v0, p0, LH7/b;->g:I

    iget v1, p0, LH7/b;->h:I

    div-int v1, v0, v1

    invoke-static {v2, v1}, LNc/b;->N(II)I

    move-result v1

    iput v1, p0, LH7/b;->i:I

    iget v2, p0, LH7/b;->f:I

    if-eq v1, v2, :cond_1

    iput v1, p0, LH7/b;->f:I

    iget-object v2, p0, LH7/b;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_1
    iget-object v1, p0, LH7/b;->b:LH7/d;

    invoke-virtual {v1}, LH7/d;->l()V

    goto :goto_0

    :cond_2
    invoke-static {}, LK8/d;->e()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, LH7/b;->k:F

    goto :goto_0

    :cond_3
    iput v3, p0, LH7/b;->k:F

    :cond_4
    :goto_0
    iput v0, p0, LH7/b;->j:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, LH7/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LH7/b;->e:Landroid/view/View;

    :goto_1
    return-void
.end method
