.class public final Lcom/android/tools/r8/internal/vS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:I

.field public d:Lcom/android/tools/r8/internal/tS;

.field public e:Lcom/android/tools/r8/internal/tS;

.field public f:Lcom/android/tools/r8/internal/tS;

.field public final synthetic g:Lcom/android/tools/r8/internal/wS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/internal/vS;->g:Lcom/android/tools/r8/internal/wS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/tools/r8/internal/vS;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sS;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/sS;->a:Lcom/android/tools/r8/internal/tS;

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;I)V
    .locals 3

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/vS;->g:Lcom/android/tools/r8/internal/wS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sS;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget v0, p1, Lcom/android/tools/r8/internal/sS;->c:I

    .line 10
    :goto_0
    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/U60;->b(II)V

    .line 11
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-lt p3, v1, :cond_2

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/sS;->b:Lcom/android/tools/r8/internal/tS;

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/vS;->f:Lcom/android/tools/r8/internal/tS;

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/vS;->c:I

    :goto_2
    add-int/lit8 p1, p3, 0x1

    if-ge p3, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vS;->previous()Ljava/lang/Object;

    move p3, p1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_3

    .line 15
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/sS;->a:Lcom/android/tools/r8/internal/tS;

    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    :goto_4
    add-int/lit8 p1, p3, -0x1

    if-lez p3, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vS;->next()Ljava/lang/Object;

    move p3, p1

    goto :goto_4

    .line 17
    :cond_4
    iput-object p2, p0, Lcom/android/tools/r8/internal/vS;->b:Ljava/lang/Object;

    .line 18
    iput-object v2, p0, Lcom/android/tools/r8/internal/vS;->e:Lcom/android/tools/r8/internal/tS;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/vS;->g:Lcom/android/tools/r8/internal/wS;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vS;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/wS;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/tS;)Lcom/android/tools/r8/internal/tS;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vS;->f:Lcom/android/tools/r8/internal/tS;

    iget p1, p0, Lcom/android/tools/r8/internal/vS;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/vS;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/vS;->e:Lcom/android/tools/r8/internal/tS;

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vS;->f:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vS;->e:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/vS;->f:Lcom/android/tools/r8/internal/tS;

    iget-object v1, v0, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    iput-object v1, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    iget v1, p0, Lcom/android/tools/r8/internal/vS;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/vS;->c:I

    iget-object v0, v0, Lcom/android/tools/r8/internal/tS;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/vS;->c:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vS;->f:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vS;->e:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    iget-object v1, v0, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    iput-object v1, p0, Lcom/android/tools/r8/internal/vS;->f:Lcom/android/tools/r8/internal/tS;

    iget v1, p0, Lcom/android/tools/r8/internal/vS;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/vS;->c:I

    iget-object v0, v0, Lcom/android/tools/r8/internal/tS;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/vS;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/vS;->e:Lcom/android/tools/r8/internal/tS;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    if-eq v0, v2, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    iput-object v2, p0, Lcom/android/tools/r8/internal/vS;->f:Lcom/android/tools/r8/internal/tS;

    iget v2, p0, Lcom/android/tools/r8/internal/vS;->c:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/internal/vS;->c:I

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    iput-object v1, p0, Lcom/android/tools/r8/internal/vS;->d:Lcom/android/tools/r8/internal/tS;

    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/vS;->g:Lcom/android/tools/r8/internal/wS;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/wS;->a(Lcom/android/tools/r8/internal/wS;Lcom/android/tools/r8/internal/tS;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vS;->e:Lcom/android/tools/r8/internal/tS;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vS;->e:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/android/tools/r8/internal/tS;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
