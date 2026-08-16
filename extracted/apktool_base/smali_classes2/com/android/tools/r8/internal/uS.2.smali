.class public final Lcom/android/tools/r8/internal/uS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/tS;

.field public d:Lcom/android/tools/r8/internal/tS;

.field public e:Lcom/android/tools/r8/internal/tS;

.field public f:I

.field public final synthetic g:Lcom/android/tools/r8/internal/wS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wS;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/tools/r8/internal/wS;->j:I

    iput v0, p0, Lcom/android/tools/r8/internal/uS;->f:I

    iget v0, p1, Lcom/android/tools/r8/internal/wS;->i:I

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/U60;->b(II)V

    div-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_2

    iget-object p1, p1, Lcom/android/tools/r8/internal/wS;->g:Lcom/android/tools/r8/internal/tS;

    iput-object p1, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    iput v0, p0, Lcom/android/tools/r8/internal/uS;->b:I

    :goto_0
    add-int/lit8 p1, p2, 0x1

    if-ge p2, v0, :cond_5

    iget-object p2, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    iget p2, p2, Lcom/android/tools/r8/internal/wS;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/uS;->f:I

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/tools/r8/internal/uS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    iget-object p2, p2, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    iget p2, p0, Lcom/android/tools/r8/internal/uS;->b:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/tools/r8/internal/uS;->b:I

    move p2, p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    iput-object p1, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    iget p2, p2, Lcom/android/tools/r8/internal/wS;->j:I

    iget v0, p0, Lcom/android/tools/r8/internal/uS;->f:I

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    if-eqz p2, :cond_3

    iput-object p2, p0, Lcom/android/tools/r8/internal/uS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    iget-object p2, p2, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    iget p2, p0, Lcom/android/tools/r8/internal/uS;->b:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/tools/r8/internal/uS;->b:I

    move p2, p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/uS;->d:Lcom/android/tools/r8/internal/tS;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/uS;->f:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasPrevious()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/uS;->f:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/uS;->f:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/uS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    iget-object v1, v0, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object v1, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    iget v1, p0, Lcom/android/tools/r8/internal/uS;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/uS;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/uS;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/uS;->f:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/uS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    iget-object v1, v0, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    iput-object v1, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    iget v1, p0, Lcom/android/tools/r8/internal/uS;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/uS;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/uS;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    iget v1, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iget v2, p0, Lcom/android/tools/r8/internal/uS;->f:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/uS;->d:Lcom/android/tools/r8/internal/tS;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    if-eq v1, v3, :cond_1

    iget-object v3, v1, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    iput-object v3, p0, Lcom/android/tools/r8/internal/uS;->e:Lcom/android/tools/r8/internal/tS;

    iget v3, p0, Lcom/android/tools/r8/internal/uS;->b:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/tools/r8/internal/uS;->b:I

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object v2, p0, Lcom/android/tools/r8/internal/uS;->c:Lcom/android/tools/r8/internal/tS;

    :goto_1
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/wS;->a(Lcom/android/tools/r8/internal/wS;Lcom/android/tools/r8/internal/tS;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/uS;->d:Lcom/android/tools/r8/internal/tS;

    iget-object v0, p0, Lcom/android/tools/r8/internal/uS;->g:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->j:I

    iput v0, p0, Lcom/android/tools/r8/internal/uS;->f:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
