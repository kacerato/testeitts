.class public abstract Lcom/android/tools/r8/internal/Se;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Spliterator;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Me;
    .locals 1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Me;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Me;-><init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static a(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lcom/android/tools/r8/internal/Oe;
    .locals 2

    if-eqz p3, :cond_1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Oe;

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/tools/r8/internal/Oe;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V

    return-object v0
.end method

.method public static a(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Lcom/android/tools/r8/internal/Re;
    .locals 9

    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Re;

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/Re;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "flatMap does not support SORTED characteristic"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "flatMap does not support SUBSIZED characteristic"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
