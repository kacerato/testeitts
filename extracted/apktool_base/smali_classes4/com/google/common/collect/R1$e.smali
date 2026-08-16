.class public Lcom/google/common/collect/R1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/R1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public h:Z

.field public final synthetic i:Lcom/google/common/collect/R1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/R1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/common/collect/R1$e;->b:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/R1$e;->c:I

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/R1;->c(Lcom/google/common/collect/R1;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/R1$e;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/R1;Lcom/google/common/collect/R1$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/R1$e;-><init>(Lcom/google/common/collect/R1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-static {v0}, Lcom/google/common/collect/R1;->c(Lcom/google/common/collect/R1;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/R1$e;->d:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;TE;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/R1$e;->c:I

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/R1$e;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-virtual {v0}, Lcom/google/common/collect/R1;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/R1$e;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/R1;->j(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/R1$e;->b(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/common/collect/R1$e;->c:I

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-static {v2}, Lcom/google/common/collect/R1;->b(Lcom/google/common/collect/R1;)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-static {v2}, Lcom/google/common/collect/R1;->a(Lcom/google/common/collect/R1;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/R1;->w(I)Lcom/google/common/collect/R1$d;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public hasNext()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/R1$e;->a()V

    iget v0, p0, Lcom/google/common/collect/R1$e;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/R1$e;->c(I)V

    iget v0, p0, Lcom/google/common/collect/R1$e;->c:I

    iget-object v2, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-virtual {v2}, Lcom/google/common/collect/R1;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/R1$e;->e:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/R1$e;->a()V

    iget v0, p0, Lcom/google/common/collect/R1$e;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/R1$e;->c(I)V

    iget v0, p0, Lcom/google/common/collect/R1$e;->c:I

    iget-object v2, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-virtual {v2}, Lcom/google/common/collect/R1;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/google/common/collect/R1$e;->c:I

    iput v0, p0, Lcom/google/common/collect/R1$e;->b:I

    iput-boolean v1, p0, Lcom/google/common/collect/R1$e;->h:Z

    iget-object v1, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/R1;->j(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/R1$e;->e:Ljava/util/Queue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-virtual {v0}, Lcom/google/common/collect/R1;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/R1$e;->b:I

    iget-object v0, p0, Lcom/google/common/collect/R1$e;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/R1$e;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/common/collect/R1$e;->h:Z

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "iterator moved past last element in queue."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/common/collect/R1$e;->h:Z

    invoke-static {v0}, Lcom/google/common/collect/B;->e(Z)V

    invoke-virtual {p0}, Lcom/google/common/collect/R1$e;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/R1$e;->h:Z

    iget v0, p0, Lcom/google/common/collect/R1$e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/R1$e;->d:I

    iget v0, p0, Lcom/google/common/collect/R1$e;->b:I

    iget-object v1, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    invoke-virtual {v1}, Lcom/google/common/collect/R1;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/common/collect/R1$e;->i:Lcom/google/common/collect/R1;

    iget v1, p0, Lcom/google/common/collect/R1$e;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/R1;->w(I)Lcom/google/common/collect/R1$d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/R1$e;->e:Ljava/util/Queue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/R1$e;->f:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/R1$e;->e:Ljava/util/Queue;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/R1$e;->f:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/R1$e;->f:Ljava/util/List;

    iget-object v2, v0, Lcom/google/common/collect/R1$d;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/R1$e;->b(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/R1$e;->e:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/R1$d;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/R1$e;->e:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/R1$d;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/R1$e;->b(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/R1$e;->f:Ljava/util/List;

    iget-object v0, v0, Lcom/google/common/collect/R1$d;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, Lcom/google/common/collect/R1$e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/R1$e;->b:I

    iget v0, p0, Lcom/google/common/collect/R1$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/R1$e;->c:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/R1$e;->g:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/R1$e;->d(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->g0(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/R1$e;->g:Ljava/lang/Object;

    :goto_0
    return-void
.end method
