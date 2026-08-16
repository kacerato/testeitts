.class public Lcom/android/tools/r8/internal/FU;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 1
    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\'."

    const-string v2, "Illegal main-dex-list entry \'"

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    const/4 v3, 0x0

    .line 2
    invoke-static {p0, v0, v3}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/If;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/If;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/v0;",
            "Lcom/android/tools/r8/graph/u1;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-interface {p0}, Lcom/android/tools/r8/v0;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    .line 11
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 13
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/zq0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 15
    :try_start_1
    invoke-static {v6, p1}, Lcom/android/tools/r8/internal/FU;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/tools/r8/internal/If; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/If;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-interface {p0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    new-instance v4, Lcom/android/tools/r8/position/TextPosition;

    int-to-long v6, v2

    invoke-direct {v4, v6, v7, v3, v5}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v0, v1, p1, p0, v4}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/If;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catch_1
    move-exception p1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-interface {p0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    const-string v1, "Failed to parse main-dex resource"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
