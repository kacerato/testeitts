.class public abstract Lcom/android/tools/r8/internal/ap0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;
    .locals 1

    .line 2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/stream/Stream;Lcom/android/tools/r8/internal/Yo0;)Ljava/util/stream/Stream;
    .locals 9

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result v0

    .line 24
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    const/16 v2, 0x4000

    .line 25
    invoke-interface {v1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    invoke-static {v1}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v7

    .line 27
    new-instance v2, Lcom/android/tools/r8/internal/Xo0;

    .line 28
    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    .line 29
    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v1

    and-int/lit8 v6, v1, 0x50

    move-object v3, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/Xo0;-><init>(JILjava/util/Iterator;Lcom/android/tools/r8/internal/Yo0;)V

    .line 30
    invoke-static {v2, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    .line 31
    new-instance v0, Lcom/android/tools/r8/internal/c51;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/c51;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {p1, v0}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0

    .line 32
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/Wo0;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/android/tools/r8/internal/Wo0;-><init>(Ljava/util/Spliterator;JLcom/android/tools/r8/internal/Yo0;)V

    invoke-static {v2, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/c51;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/c51;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {p1, v0}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static a(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiFunction;)Ljava/util/stream/Stream;
    .locals 11

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    .line 38
    invoke-interface {p1}, Ljava/util/stream/BaseStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    .line 39
    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v3

    .line 40
    invoke-interface {v2}, Ljava/util/Spliterator;->characteristics()I

    move-result v4

    and-int/2addr v3, v4

    and-int/lit8 v7, v3, 0x50

    .line 41
    invoke-static {v1}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v8

    .line 42
    invoke-static {v2}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v9

    .line 43
    new-instance v3, Lcom/android/tools/r8/internal/Vo0;

    .line 44
    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v4, v3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/tools/r8/internal/Vo0;-><init>(JILjava/util/Iterator;Ljava/util/Iterator;Ljava/util/function/BiFunction;)V

    .line 45
    invoke-static {v3, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p2

    .line 46
    new-instance v0, Lcom/android/tools/r8/internal/c51;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/c51;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {p2, v0}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    .line 47
    new-instance p2, Lcom/android/tools/r8/internal/c51;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/c51;-><init>(Ljava/util/stream/Stream;)V

    invoke-interface {p0, p2}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static varargs a([Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 18

    move-object/from16 v0, p0

    .line 5
    array-length v1, v0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x150

    const-wide/16 v5, 0x0

    move v7, v3

    move v8, v7

    move v11, v8

    move-wide v9, v5

    :goto_0
    if-ge v7, v2, :cond_4

    aget-object v12, v0, v7

    .line 8
    invoke-interface {v12}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result v13

    or-int/2addr v11, v13

    .line 9
    invoke-interface {v12}, Ljava/util/stream/BaseStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v12

    .line 10
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v13, v8, 0x1

    .line 11
    array-length v14, v1

    if-ge v14, v13, :cond_0

    .line 12
    array-length v14, v1

    invoke-static {v14, v13}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v14

    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 13
    :cond_0
    aput-object v12, v1, v8

    .line 14
    invoke-interface {v12}, Ljava/util/Spliterator;->characteristics()I

    move-result v8

    and-int/2addr v4, v8

    .line 15
    invoke-interface {v12}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v14

    add-long v16, v9, v14

    xor-long/2addr v14, v9

    cmp-long v8, v14, v5

    const/4 v12, 0x1

    if-gez v8, :cond_1

    move v8, v12

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    xor-long v9, v9, v16

    cmp-long v9, v9, v5

    if-ltz v9, :cond_2

    goto :goto_2

    :cond_2
    move v12, v3

    :goto_2
    or-int/2addr v8, v12

    if-eqz v8, :cond_3

    move-wide/from16 v9, v16

    goto :goto_3

    :cond_3
    const/16 v8, 0x3f

    ushr-long v8, v16, v8

    const-wide/16 v14, 0x1

    xor-long/2addr v8, v14

    const-wide v14, 0x7fffffffffffffffL

    add-long/2addr v8, v14

    move-wide v9, v8

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v8, v13

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {v8, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/a51;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/a51;-><init>()V

    .line 18
    invoke-static {v1, v2, v4, v9, v10}, Lcom/android/tools/r8/internal/Se;->a(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Lcom/android/tools/r8/internal/Re;

    move-result-object v1

    .line 19
    invoke-static {v1, v11}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/b51;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/b51;-><init>([Ljava/util/stream/Stream;)V

    .line 20
    invoke-interface {v1, v2}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    return-object v0
.end method

.method public static b([Ljava/util/stream/Stream;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/stream/BaseStream;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
