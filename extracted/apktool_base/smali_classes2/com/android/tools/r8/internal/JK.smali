.class public abstract Lcom/android/tools/r8/internal/JK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/V60;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "predicate"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;
    .locals 1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/CK;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/CK;-><init>(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)V

    return-object v0
.end method

.method public static a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/FK;
    .locals 2

    if-ltz p0, :cond_1

    .line 13
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/tools/r8/internal/U60;->a(III)V

    .line 14
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/U60;->b(II)V

    if-nez p0, :cond_0

    .line 15
    sget-object p0, Lcom/android/tools/r8/internal/FK;->e:Lcom/android/tools/r8/internal/FK;

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FK;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/FK;-><init>(II[Ljava/lang/Object;)V

    return-object v0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;
    .locals 1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/zK;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zK;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method
