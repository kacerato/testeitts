.class public abstract Lcom/android/tools/r8/internal/Cj0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "resourceName"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/16 v5, 0x2e

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [C

    .line 4
    invoke-virtual {p0, v1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v1, 0x5f

    .line 5
    aput-char v1, v3, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_4

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_2

    if-ne v7, v4, :cond_3

    :cond_2
    move v7, v1

    .line 7
    :cond_3
    aput-char v7, v3, v2

    goto :goto_2

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    :cond_5
    return-object p0
.end method

.method public static final a(Ljava/util/List;Ljava/util/function/Consumer;)Ljava/util/List;
    .locals 6

    const-string v0, "rootsConsumer"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/xj0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xj0;-><init>(Ljava/util/function/Consumer;)V

    .line 10
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/tools/r8/internal/ng0;

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ng0;->b()Z

    move-result v5

    if-nez v5, :cond_2

    .line 14
    iget v4, v4, Lcom/android/tools/r8/internal/ng0;->b:I

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xj0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/ng0;

    const/4 v5, 0x0

    .line 18
    invoke-static {p1, v4, v5}, Lcom/android/tools/r8/internal/Cj0;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/ng0;Lcom/android/tools/r8/internal/ng0;)V

    goto :goto_2

    .line 19
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/hf;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    .line 20
    sget-object p0, Lcom/android/tools/r8/internal/yj0;->b:Lcom/android/tools/r8/internal/yj0;

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/cx;

    invoke-direct {v0, p1, v2, p0}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    .line 22
    sget-object p0, Lcom/android/tools/r8/internal/zj0;->b:Lcom/android/tools/r8/internal/zj0;

    .line 23
    new-instance p1, Lcom/android/tools/r8/internal/cx;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p0}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    .line 24
    sget-object p0, Lcom/android/tools/r8/internal/Aj0;->b:Lcom/android/tools/r8/internal/Aj0;

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/cx;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    .line 26
    sget-object p0, Lcom/android/tools/r8/internal/Bj0;->b:Lcom/android/tools/r8/internal/Bj0;

    .line 27
    new-instance p1, Lcom/android/tools/r8/internal/cx;

    invoke-direct {p1, v0, v2, p0}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    .line 28
    invoke-static {p1}, Lcom/android/tools/r8/internal/pl0;->d(Lcom/android/tools/r8/internal/nl0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/util/Set;Lcom/android/tools/r8/internal/ng0;Lcom/android/tools/r8/internal/ng0;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 29
    iget-object v0, p2, Lcom/android/tools/r8/internal/ng0;->h:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Lcom/android/tools/r8/internal/og0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/og0;-><init>(Lcom/android/tools/r8/internal/ng0;)V

    .line 31
    iget-object p2, p1, Lcom/android/tools/r8/internal/ng0;->h:Ljava/util/HashSet;

    if-nez p2, :cond_0

    .line 32
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 33
    iput-object p2, p1, Lcom/android/tools/r8/internal/ng0;->h:Ljava/util/HashSet;

    .line 34
    :cond_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/ng0;->h:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/ng0;->a(Z)V

    .line 38
    iget-object p2, p1, Lcom/android/tools/r8/internal/ng0;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/ng0;

    .line 40
    const-string v3, "it"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2, p1}, Lcom/android/tools/r8/internal/Cj0;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/ng0;Lcom/android/tools/r8/internal/ng0;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
