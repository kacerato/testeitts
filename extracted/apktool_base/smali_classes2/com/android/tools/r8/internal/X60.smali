.class public Lcom/android/tools/r8/internal/X60;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/function/Function;)Ljava/util/function/Predicate;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/L11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/L11;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/M11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/M11;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
