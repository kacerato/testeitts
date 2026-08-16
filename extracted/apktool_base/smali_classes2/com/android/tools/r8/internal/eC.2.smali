.class public final Lcom/android/tools/r8/internal/eC;
.super Lcom/android/tools/r8/internal/WB;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/WB;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/eC;->b:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/WB;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/eC;)Lcom/android/tools/r8/internal/eC;
    .locals 1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    iget p1, p1, Lcom/android/tools/r8/internal/eC;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/hC;
    .locals 2

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/eC;->c:Z

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/eC;->b:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 3
    array-length v1, v0

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    .line 4
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/eC;->c:Z

    return-void

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/eC;->c:Z

    if-eqz p1, :cond_1

    .line 6
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    .line 7
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/eC;->c:Z

    :cond_1
    return-void
.end method

.method public final a(I[Ljava/lang/Object;)V
    .locals 3

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/eC;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/eC;->a(I)V

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/eC;->b:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p2, p0, Lcom/android/tools/r8/internal/eC;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/tools/r8/internal/eC;->b:I

    return-void
.end method

.method public final b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;
    .locals 3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 7
    iget v1, p0, Lcom/android/tools/r8/internal/eC;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/eC;->a(I)V

    .line 8
    instance-of v1, v0, Lcom/android/tools/r8/internal/XB;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lcom/android/tools/r8/internal/XB;

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/eC;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/XB;->a(I[Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/eC;->b:I

    return-object p0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/eC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/WB;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/eC;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/eC;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/eC;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/eC;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/eC;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method
