.class public Lcom/bumptech/glide/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e$c;,
        Lcom/bumptech/glide/e$d;,
        Lcom/bumptech/glide/e$b;,
        Lcom/bumptech/glide/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/bumptech/glide/e$d;

.field public final c:Lcom/bumptech/glide/k;

.field public final d:Lcom/bumptech/glide/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/bumptech/glide/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/k;Lcom/bumptech/glide/e$a;Lcom/bumptech/glide/e$b;I)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/e$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/k;",
            "Lcom/bumptech/glide/e$a<",
            "TT;>;",
            "Lcom/bumptech/glide/e$b<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/e;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/e;->j:Z

    iput-object p1, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/k;

    iput-object p2, p0, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/e$a;

    iput-object p3, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/e$b;

    iput p4, p0, Lcom/bumptech/glide/e;->a:I

    new-instance p1, Lcom/bumptech/glide/e$d;

    add-int/2addr p4, v0

    invoke-direct {p1, p4}, Lcom/bumptech/glide/e$d;-><init>(I)V

    iput-object p1, p0, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/e$d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/e$d;

    iget-object v2, v2, Lcom/bumptech/glide/e$d;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/k;

    iget-object v3, p0, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/e$d;

    invoke-virtual {v3, v0, v0}, Lcom/bumptech/glide/e$d;->a(II)Lcom/bumptech/glide/e$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/k;->w(LV/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 4

    if-ge p1, p2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e;->f:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bumptech/glide/e;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p2

    :goto_0
    iget v2, p0, Lcom/bumptech/glide/e;->i:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/bumptech/glide/e;->i:I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, p2, :cond_1

    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_2

    iget-object p2, p0, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/e$a;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/e$a;->a(I)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p0, p2, p1, v2}, Lcom/bumptech/glide/e;->d(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v0, -0x1

    :goto_2
    if-lt p1, v1, :cond_2

    iget-object p2, p0, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/e$a;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/e$a;->a(I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v3}, Lcom/bumptech/glide/e;->d(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/bumptech/glide/e;->g:I

    iput v0, p0, Lcom/bumptech/glide/e;->f:I

    return-void
.end method

.method public final c(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/e;->j:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lcom/bumptech/glide/e;->j:Z

    invoke-virtual {p0}, Lcom/bumptech/glide/e;->a()V

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/bumptech/glide/e;->a:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/bumptech/glide/e;->a:I

    neg-int p2, p2

    :goto_0
    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/e;->b(II)V

    return-void
.end method

.method public final d(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/bumptech/glide/e;->e(Ljava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p3, p2, v0}, Lcom/bumptech/glide/e;->e(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/Object;II)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/e$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/e$b;->a(Ljava/lang/Object;II)[I

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/e$a;

    invoke-interface {p3, p1}, Lcom/bumptech/glide/e$a;->b(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/e$d;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p3, v0, p2}, Lcom/bumptech/glide/e$d;->a(II)Lcom/bumptech/glide/e$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->e1(LV/p;)LV/p;

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iput p4, p0, Lcom/bumptech/glide/e;->i:I

    iget p1, p0, Lcom/bumptech/glide/e;->h:I

    if-le p2, p1, :cond_0

    add-int/2addr p3, p2

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/bumptech/glide/e;->c(IZ)V

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/e;->c(IZ)V

    :cond_1
    :goto_0
    iput p2, p0, Lcom/bumptech/glide/e;->h:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
