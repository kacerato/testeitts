.class Lorg/openjdk/tools/javac/util/Position$LineMapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Position$LineMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineMapImpl"
.end annotation


# instance fields
.field private lastLine:I

.field private lastPosition:I

.field protected startPosition:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->lastPosition:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->lastLine:I

    return-void
.end method

.method private static longToInt(J)I
    .locals 3

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long p0, v1, p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method


# virtual methods
.method public build([CI)V
    .locals 7

    new-array v0, p2, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_5

    add-int/lit8 v4, v3, 0x1

    aput v2, v0, v3

    :cond_0
    aget-char v3, p1, v2

    const/16 v5, 0xa

    const/16 v6, 0xd

    if-eq v3, v6, :cond_3

    if-ne v3, v5, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x9

    if-ne v3, v5, :cond_2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->setTabPosition(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_0

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_2
    if-ne v3, v6, :cond_4

    add-int/lit8 v3, v2, 0x1

    if-ge v3, p2, :cond_4

    aget-char v3, p1, v3

    if-ne v3, v5, :cond_4

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-array p1, v3, [I

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getColumnNumber(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getLineNumber(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getColumnNumber(J)J
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getColumnNumber(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getLineNumber(I)I
    .locals 4

    .line 1
    iget v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->lastPosition:I

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->lastLine:I

    return p1

    .line 3
    :cond_0
    iput p1, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->lastPosition:I

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_3

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 5
    iget-object v3, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    if-le v3, p1, :cond_2

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 6
    iput v2, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->lastLine:I

    return v2

    .line 7
    :cond_3
    iput v1, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->lastLine:I

    return v1
.end method

.method public getLineNumber(J)J
    .locals 0

    .line 8
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getLineNumber(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getPosition(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getPosition(JJ)J
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result p1

    invoke-static {p3, p4}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getPosition(II)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getStartPosition(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->startPosition:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    return p1
.end method

.method public getStartPosition(J)J
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->longToInt(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Position$LineMapImpl;->getStartPosition(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public setTabPosition(I)V
    .locals 0

    return-void
.end method
