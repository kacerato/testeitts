.class public Lorg/openjdk/tools/javac/util/ArrayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateNewLength(II)I
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, 0x1

    if-ge p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static ensureCapacity([BI)[B
    .locals 2

    .line 5
    array-length v0, p0

    if-ge p1, v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->calculateNewLength(II)I

    move-result p1

    .line 7
    new-array p1, p1, [B

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static ensureCapacity([CI)[C
    .locals 2

    .line 9
    array-length v0, p0

    if-ge p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->calculateNewLength(II)I

    move-result p1

    .line 11
    new-array p1, p1, [C

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static ensureCapacity([II)[I
    .locals 2

    .line 13
    array-length v0, p0

    if-ge p1, v0, :cond_0

    return-object p0

    .line 14
    :cond_0
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->calculateNewLength(II)I

    move-result p1

    .line 15
    new-array p1, p1, [I

    .line 16
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->calculateNewLength(II)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
