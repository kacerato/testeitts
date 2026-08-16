.class public final Lcom/android/tools/r8/internal/fC;
.super Lcom/android/tools/r8/internal/hC;
.source "SourceFile"


# instance fields
.field public final transient d:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/hC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(II)Lcom/android/tools/r8/internal/hC;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/U60;->a(III)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    sub-int/2addr v1, p2

    iget-object p2, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/hC;->e(II)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hC;->i()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->g()Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/U60;->a(II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/hC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/dC;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fC;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/dC;-><init>(Lcom/android/tools/r8/internal/hC;II)V

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dC;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fC;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/dC;-><init>(Lcom/android/tools/r8/internal/hC;II)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/dC;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fC;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/r8/internal/dC;-><init>(Lcom/android/tools/r8/internal/hC;II)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fC;->e(II)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method
