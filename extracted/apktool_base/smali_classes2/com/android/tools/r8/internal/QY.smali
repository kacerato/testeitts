.class public abstract Lcom/android/tools/r8/internal/QY;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/LY;)Lcom/android/tools/r8/internal/Re;
    .locals 5

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/internal/LY;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/pT0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pT0;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v2

    and-int/lit16 v2, v2, 0x510

    or-int/lit8 v2, v2, 0x40

    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    int-to-long v3, p0

    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/Se;->a(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Lcom/android/tools/r8/internal/Re;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/MY;)Ljava/util/Spliterator;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/LY;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/LY;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/LY;

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lcom/android/tools/r8/internal/LY;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/LY;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/LY;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/MY;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/tools/r8/internal/LY;->b(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static a(Lcom/android/tools/r8/internal/V0;Lcom/android/tools/r8/internal/LY;)Z
    .locals 1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/oT0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/oT0;-><init>(Lcom/android/tools/r8/internal/LY;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/LY;->a(Ljava/util/function/ObjIntConsumer;)V

    const/4 p0, 0x1

    return p0
.end method
