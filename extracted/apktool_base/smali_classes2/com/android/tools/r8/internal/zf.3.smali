.class public abstract Lcom/android/tools/r8/internal/zf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x1

    return p0

    .line 9
    :cond_2
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final a([Lcom/android/tools/r8/internal/ny;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    .line 2
    invoke-interface {v3, p1}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 3
    invoke-interface {v3, p2}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    if-ne v4, v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    :goto_1
    if-eqz v3, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static a()Ljava/util/Comparator;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/cZ;->b:Lcom/android/tools/r8/internal/cZ;

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/XE1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/XE1;-><init>(Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static varargs a([Lcom/android/tools/r8/internal/ny;)Ljava/util/Comparator;
    .locals 1

    .line 5
    array-length v0, p0

    if-lez v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/YE1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/YE1;-><init>([Lcom/android/tools/r8/internal/ny;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
