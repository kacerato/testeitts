.class public final Lcom/android/tools/r8/internal/ND;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public b:Lcom/android/tools/r8/internal/H;

.field public c:Lcom/android/tools/r8/internal/H;

.field public d:Lcom/android/tools/r8/internal/H;

.field public final synthetic e:Lcom/android/tools/r8/internal/OD;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/OD;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/tools/r8/internal/OD;->b:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    iget-object p1, p1, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    iget-object p1, p1, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/H;

    iget v5, v3, Lcom/android/tools/r8/internal/OD;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/tools/r8/internal/OD;->b:I

    iget-object v5, v0, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    if-nez v5, :cond_0

    iput-object v4, v3, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    goto :goto_0

    :cond_0
    iput-object v4, v5, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    :goto_0
    iput-object v4, v0, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object v0, v4, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v5, v4, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object v2, v3, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    iput v1, v4, Lcom/android/tools/r8/internal/H;->f:I

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/H;

    iget v5, v3, Lcom/android/tools/r8/internal/OD;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/tools/r8/internal/OD;->b:I

    iget-object v5, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    if-nez v5, :cond_2

    iput-object v4, v3, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    goto :goto_1

    :cond_2
    iput-object v4, v5, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    :goto_1
    iput-object v4, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v5, v4, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v0, v4, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object v2, v3, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    iput v1, v4, Lcom/android/tools/r8/internal/H;->f:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/H;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    :goto_2
    check-cast p1, Lcom/android/tools/r8/internal/H;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    iput-object v2, p0, Lcom/android/tools/r8/internal/ND;->d:Lcom/android/tools/r8/internal/H;

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    iget-object v1, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v1, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ND;->d:Lcom/android/tools/r8/internal/H;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    iget v0, v0, Lcom/android/tools/r8/internal/OD;->b:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    iget-object v1, v0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/OD;->a()[Lcom/android/tools/r8/internal/H;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    iget v0, v0, Lcom/android/tools/r8/internal/H;->f:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    iget-object v1, v0, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object v1, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    iput-object v0, p0, Lcom/android/tools/r8/internal/ND;->d:Lcom/android/tools/r8/internal/H;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    iget-object v1, v0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/OD;->a()[Lcom/android/tools/r8/internal/H;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    iget v0, v0, Lcom/android/tools/r8/internal/H;->f:I

    return v0
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->d:Lcom/android/tools/r8/internal/H;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    if-ne v0, v1, :cond_0

    iget-object v1, v1, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v1, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    iget-object v1, v1, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object v1, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    iget v2, v1, Lcom/android/tools/r8/internal/OD;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/tools/r8/internal/OD;->b:I

    iget-object v2, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iget-object v3, v0, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    if-nez v3, :cond_1

    iput-object v4, v1, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    iput-object v4, v1, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    goto :goto_1

    :cond_1
    iput-object v4, v3, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v3, v1, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    iput-object v2, v1, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    iput-object v4, v2, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    goto :goto_1

    :cond_3
    iput-object v2, v3, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v3, v2, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    :goto_1
    iput-object v4, v1, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/H;->f:I

    iput-object v4, v0, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object v4, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v4, p0, Lcom/android/tools/r8/internal/ND;->d:Lcom/android/tools/r8/internal/H;

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->d:Lcom/android/tools/r8/internal/H;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/ND;->e:Lcom/android/tools/r8/internal/OD;

    check-cast p1, Lcom/android/tools/r8/internal/H;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iput-object v2, p1, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    goto :goto_0

    :cond_0
    iput-object p1, v1, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object v2, p1, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    if-eqz v2, :cond_1

    iput-object p1, v2, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    goto :goto_1

    :cond_1
    iput-object p1, v1, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    :goto_1
    iget-object v1, v1, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    if-eqz v1, :cond_2

    iget v2, v0, Lcom/android/tools/r8/internal/H;->f:I

    aput-object p1, v1, v2

    iput v2, p1, Lcom/android/tools/r8/internal/H;->f:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/tools/r8/internal/H;->f:I

    :goto_2
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/H;->f:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    iput-object v1, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ND;->d:Lcom/android/tools/r8/internal/H;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    if-ne v0, v1, :cond_3

    iput-object p1, p0, Lcom/android/tools/r8/internal/ND;->c:Lcom/android/tools/r8/internal/H;

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/ND;->b:Lcom/android/tools/r8/internal/H;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
