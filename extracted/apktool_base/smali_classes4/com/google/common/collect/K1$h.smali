.class public Lcom/google/common/collect/K1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/K1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public d:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public e:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public f:I

.field public final synthetic g:Lcom/google/common/collect/K1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/K1;I)V
    .locals 2

    iput-object p1, p0, Lcom/google/common/collect/K1$h;->g:Lcom/google/common/collect/K1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/K1;->l(Lcom/google/common/collect/K1;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/K1$h;->f:I

    invoke-virtual {p1}, Lcom/google/common/collect/K1;->size()I

    move-result v0

    invoke-static {p2, v0}, Lw2/H;->d0(II)I

    div-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/K1;->m(Lcom/google/common/collect/K1;)Lcom/google/common/collect/K1$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/K1$h;->e:Lcom/google/common/collect/K1$g;

    iput v0, p0, Lcom/google/common/collect/K1$h;->b:I

    :goto_0
    add-int/lit8 p1, p2, 0x1

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->e()Lcom/google/common/collect/K1$g;

    move p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/K1;->n(Lcom/google/common/collect/K1;)Lcom/google/common/collect/K1$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/K1$h;->c:Lcom/google/common/collect/K1$g;

    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->d()Lcom/google/common/collect/K1$g;

    move p2, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/K1$h;->d:Lcom/google/common/collect/K1$g;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1$h;->a(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->g:Lcom/google/common/collect/K1;

    invoke-static {v0}, Lcom/google/common/collect/K1;->l(Lcom/google/common/collect/K1;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/K1$h;->f:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public d()Lcom/google/common/collect/K1$g;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->b()V

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->c:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/K1$h;->d:Lcom/google/common/collect/K1$g;

    iput-object v0, p0, Lcom/google/common/collect/K1$h;->e:Lcom/google/common/collect/K1$g;

    iget-object v1, v0, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    iput-object v1, p0, Lcom/google/common/collect/K1$h;->c:Lcom/google/common/collect/K1$g;

    iget v1, p0, Lcom/google/common/collect/K1$h;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/K1$h;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public e()Lcom/google/common/collect/K1$g;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->b()V

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->e:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/K1$h;->d:Lcom/google/common/collect/K1$g;

    iput-object v0, p0, Lcom/google/common/collect/K1$h;->c:Lcom/google/common/collect/K1$g;

    iget-object v1, v0, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    iput-object v1, p0, Lcom/google/common/collect/K1$h;->e:Lcom/google/common/collect/K1$g;

    iget v1, p0, Lcom/google/common/collect/K1$h;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/K1$h;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public f(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->d:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->d:Lcom/google/common/collect/K1$g;

    iput-object p1, v0, Lcom/google/common/collect/K1$g;->c:Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->b()V

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->c:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->b()V

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->e:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->d()Lcom/google/common/collect/K1$g;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/K1$h;->b:I

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->e()Lcom/google/common/collect/K1$g;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/K1$h;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/K1$h;->b()V

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->d:Lcom/google/common/collect/K1$g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->d:Lcom/google/common/collect/K1$g;

    iget-object v2, p0, Lcom/google/common/collect/K1$h;->c:Lcom/google/common/collect/K1$g;

    if-eq v0, v2, :cond_1

    iget-object v2, v0, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    iput-object v2, p0, Lcom/google/common/collect/K1$h;->e:Lcom/google/common/collect/K1$g;

    iget v2, p0, Lcom/google/common/collect/K1$h;->b:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/K1$h;->b:I

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    iput-object v1, p0, Lcom/google/common/collect/K1$h;->c:Lcom/google/common/collect/K1$g;

    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/K1$h;->g:Lcom/google/common/collect/K1;

    invoke-static {v1, v0}, Lcom/google/common/collect/K1;->p(Lcom/google/common/collect/K1;Lcom/google/common/collect/K1$g;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/K1$h;->d:Lcom/google/common/collect/K1$g;

    iget-object v0, p0, Lcom/google/common/collect/K1$h;->g:Lcom/google/common/collect/K1;

    invoke-static {v0}, Lcom/google/common/collect/K1;->l(Lcom/google/common/collect/K1;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/K1$h;->f:I

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1$h;->f(Ljava/util/Map$Entry;)V

    return-void
.end method
