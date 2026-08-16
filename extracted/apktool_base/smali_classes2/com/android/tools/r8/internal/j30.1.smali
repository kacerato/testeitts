.class public final Lcom/android/tools/r8/internal/j30;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/o30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/o30;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o30;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/o30;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final first()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    iget v1, v0, Lcom/android/tools/r8/internal/o30;->k:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/o30;->b:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/o30;->f:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/i30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/i30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/i30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/i30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/i30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/i30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    iget v1, v0, Lcom/android/tools/r8/internal/o30;->k:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/o30;->b:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/o30;->g:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    iget v1, v0, Lcom/android/tools/r8/internal/o30;->k:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/o30;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    iget p1, p1, Lcom/android/tools/r8/internal/o30;->k:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/j30;->b:Lcom/android/tools/r8/internal/o30;

    iget v0, v0, Lcom/android/tools/r8/internal/o30;->k:I

    return v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
