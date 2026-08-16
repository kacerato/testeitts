.class public final Lcom/android/tools/r8/internal/bd0;
.super Lcom/android/tools/r8/internal/C1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Yd0;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/gd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/gd0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gd0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final first()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    iget v1, v0, Lcom/android/tools/r8/internal/gd0;->l:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/gd0;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/gd0;->g:I

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

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ad0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ad0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ad0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ad0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    iget v1, v0, Lcom/android/tools/r8/internal/gd0;->l:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/gd0;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/gd0;->h:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    iget v1, v0, Lcom/android/tools/r8/internal/gd0;->l:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gd0;->c(Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    iget p1, p1, Lcom/android/tools/r8/internal/gd0;->l:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    iget v0, v0, Lcom/android/tools/r8/internal/gd0;->l:I

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
